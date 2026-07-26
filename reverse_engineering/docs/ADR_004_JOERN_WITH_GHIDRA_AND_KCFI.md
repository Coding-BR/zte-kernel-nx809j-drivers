# ADR-004: Joern junto com Ghidra e dicionario/KCFI

- **Status:** aceito
- **Data:** 2026-07-26
- **Escopo:** drivers vendor do NX809J (REDMAGIC 11 Pro+), Android 16,
  GKI `6.12.23-android16`

## Decisao

O projeto adota o Joern como um gate obrigatorio de consistencia estrutural do
fonte reconstruido. Ele **nao** substitui o Ghidra, o ELF stock nem o
dicionario/KCFI. Os tres permanecem ativos em toda microtarefa nova ou
reatestada.

| Camada | Pergunta respondida | Limite de autoridade |
|---|---|---|
| `.ko` stock + ELF + Ghidra | O que foi observado no binario: instrucoes, P-Code, relocacoes, literais e offsets usados. | Nao recupera nomes, macros ou intencao original. |
| Dicionario + KCFI/GENDWARFKSYMS | Qual declaracao C, namespace e tipo de callback reproduzem a identidade nominal observada no Clang fixado. | Nao prova o fluxo completo da funcao. |
| Joern CPG do C/H candidato | Se o fonte atual possui a funcao mapeada, chamadas internas esperadas e estrutura de controle analisavel. | Nao prova layout, MMIO, assembly, KCFI ou hardware. |
| Build, comparadores e harness | Se o candidato compila e cumpre o contrato isolado que foi definido. | Nao substitui teste controlado no aparelho. |

Um resultado Joern `PASS` tem poder de veto: parser com erro, funcao ausente,
mapa inconsistente ou chamada interna obrigatoria ausente bloqueiam a
microtarefa. Ele nao tem poder de promocao isolado. O resumo deve declarar
`promotion_claim=false`.

## Motivo

O dicionario puro verifica contratos nominais exatos, principalmente quando um
type ID KCFI, CRC, namespace ou assinatura precisa coincidir com o que o
Clang gerou. Ele nao revela, por si so, se a funcao C mapeada desapareceu do
fonte, deixou de chamar uma helper interna, ganhou um retorno antecipado ou
perdeu um caminho de cleanup.

O Joern complementa essa lacuna com um Code Property Graph (AST, CFG e grafo
de chamadas). Assim, ele torna repetivel a revisao de cobertura, chamadas,
ramos, loops, `switch`, caminhos de erro e pontos que merecem revisao manual,
como userspace, locks, workqueues, MMIO, SPI, I2C e GPIO.

Ele nao pode restaurar informacao destruida pela compilacao. Portanto nao se
aceita inferir padding de `struct`, significado eletrico de registradores,
ordem fisica de I/O ou type ID KCFI a partir de um CPG.

## Contrato operacional

Para cada funcao, a ordem obrigatoria e:

```text
.ko stock imutavel
  -> ELF, Assembly AArch64, relocacoes e Ghidra 12.1.2
  -> reconstruction_map: stock_function@endereco -> source_function
  -> dicionario + KCFI para contratos nominais
  -> implementacao C atomica
  -> Joern strict para cobertura, chamadas e controle
  -> dois builds canonicos + KCFI + Assembly/P-Code candidato
  -> harness host + atestacao com hashes
  -> teste controlado no telefone, quando aplicavel
```

O mapa completo e obrigatorio mesmo quando a execucao Joern esta limitada a
uma funcao. A identidade canonica e `stock_function@endereco`, e nao somente
o nome, pois modulos podem conter simbolos locais homonimos.

As entradas hashadas do gate incluem arvore C/H, export Ghidra, mapa,
`compile_commands.json` quando usado, includes, defines, perfil de chamadas,
query Scala, lock Joern e binario stock quando o CPG binario suplementar for
solicitado. Alterar qualquer uma invalida o resultado anterior.

## Execucao fixada

Use apenas a versao bloqueada no repositorio:

```text
Joern: v4.0.548
source commit: 75a15a7b86ea1b2df5a4406d9b13bfa2c15ee990
Java: 21
lock: workspace_tools/reconstruction_pipeline/joern/joern.lock.json
```

Exemplo estrito para uma microtarefa `zte_tpd`:

```powershell
$engineering = 'C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia'

python .\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py `
  --driver zte_tpd `
  --function <source-function> `
  --source-root .\kernel_development\drivers\reconstructed\zte_tpd `
  --ghidra-export .\reverse_engineering\validation\reconstructed\zte_tpd\offline_static\ghidra_stock `
  --reconstruction-map .\kernel_development\drivers\reconstructed\zte_tpd\reconstruction_map.json `
  --output-dir "$engineering\validation\zte_tpd\joern\<run-id>" `
  --joern-home .\reproducible_environment\.tools\joern-v4.0.548 `
  --java-home $env:JAVA_HOME `
  --define __user --define __init --define __exit `
  --strict
```

O atestador recebe somente um resumo Joern estrito, parse-clean e ligado ao
hash atual da arvore C/H. CPGs e workspaces sao derivados, grandes e locais;
o resumo portatil, lock, query e manifests sao a evidencia publicavel.

## Regras de aceite

Uma microtarefa nova ou reatestada exige `compile`, `kcfi`, `joern` e `test`.
O gate Joern e aceito somente quando todos os itens abaixo forem verdadeiros:

1. `status=PASS`, `strict=true` e `promotion_claim=false`;
2. nao ha parse problems;
3. a `source_function` declarada esta no escopo resolvido do CPG;
4. nao ha delta de chamada interna mapeada sem justificativa confirmada no
   Assembly/P-Code;
5. o hash de toda a arvore C/H atual coincide com o resumo;
6. os demais gates independentes tambem foram aprovados.

Data flow interprocedural e `ghidra2cpg` permanecem exploratorios ate que suas
semanticas externas tenham testes positivos e negativos. Encontrar um fluxo
suspeito abre revisao; ausencia de finding nao prova ausencia de defeito.

## Consequencias

- Mantemos o dicionario/KCFI e ganhamos revisao repetivel de estrutura e
  chamadas sem depender de leitura manual ou memoria de uma LLM.
- O custo adicional e aceitavel porque o gate e executado por funcao e seus
  artefatos derivados ficam fora da imagem Docker hermetica do kernel.
- Nenhum documento, CPG ou porcentagem de cobertura permite declarar o driver
  "100% funcional" sem a validacao dinamica apropriada.

## Documentos relacionados

- [Pipeline dual detalhada](PIPELINE_DUAL_GHIDRA_JOERN.md)
- [Runbook operacional do gate](../../workspace_tools/reconstruction_pipeline/JOERN_RUNTIME_GATE.md)
- [Regra de atestacao por microtarefa](JOERN_MICROTASK_ATTESTATION.md)
- [Pipeline offline total](PIPELINE_RECONSTRUCAO_OFFLINE_TOTAL.md)
