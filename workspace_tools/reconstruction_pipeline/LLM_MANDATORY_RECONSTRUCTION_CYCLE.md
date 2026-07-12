# Contrato Obrigatório para Reconstrução de Drivers por LLM

Este documento é normativo para toda LLM que trabalhe em um driver do NX809J. A LLM deve seguir todas as fases, preservar as evidências e recusar a promoção do driver quando qualquer gate estiver incompleto.

"100%" significa 100% dos requisitos observáveis, exports Ghidra e validações definidos aqui possuem evidência reproduzível. Não significa equivalência matemática de comportamento que não foi observado.

## Regra de Ouro

Não declarar, registrar, publicar ou carregar um driver como "100% reconstruído" enquanto todos os gates deste documento não estiverem PASS no relatório atual.

Uma falha, evidência ausente, hash diferente, símbolo sem explicação, função Ghidra sem mapeamento ou teste de hardware não executado deve produzir INCOMPLETO ou REPROVADO.

Não é permitido resolver um gate falho com:

~~~text
suposição baseada no nome do driver
reaproveitamento de um .ko antigo
insmod/rmmod forçado
desativação de SELinux, AVB ou verificação de módulos
flash de boot, vendor_dlkm ou vbmeta
edição manual de STATUS.md para dizer que passou
~~~

## Entrada Obrigatória

Antes de escrever ou alterar C, a LLM deve confirmar que possui:

- Módulo stock .ko adquirido do aparelho, com SHA-256, tamanho, origem e data.
- Kernel alvo, .config, Module.symvers, toolchain e vermagic alvo.
- Export Ghidra completo: pseudocódigo, P-Code, símbolos, calls e strings.
- Contexto DTS/DTBO e evidência de runtime do hardware relevante.
- Pasta exclusiva para o driver em engenharia/curated/<driver>/.

Se qualquer entrada estiver ausente, a LLM deve parar e adquirir a evidência. Ela não pode inventar offsets, structs, aliases, imports ou comportamento.

## Ciclo Obrigatório

### Gate 0: Escopo e Segurança

1. Trabalhe em um único driver por vez.
2. Classifique o risco: leitura, LED, SPI/I2C, touchscreen, energia, bateria, biometria, reboot ou memória.
3. Defina rollback antes de qualquer teste em hardware.
4. Para energia, reboot, biometria, touchscreen, clock, regulador ou memória, proíba teste automático em lote no telefone.

Evidência: validation_plan.json com risco, dependências, rollback, critérios de interrupção e responsável pela sessão.

### Gate 1: Cadeia de Custódia do Stock

1. Copie o .ko stock sem modificá-lo.
2. Registre caminho, tamanho, SHA-256, serial, kernel e build fingerprint.
3. Recalcule o SHA-256 antes de toda análise posterior.
4. Extraia ELF, modinfo, imports, exports e modversions.

Evidência: stock_manifest.json e binário stock em aquisição imutável. SHA divergente encerra a sessão.

### Gate 2: Export Ghidra Completo

1. Execute o export automatizado do Ghidra para o módulo stock.
2. Exija function_count igual ao número de registros em functions.jsonl, P-Code e pseudocódigo decompilado.
3. SCRIPT ERROR, função sem export ou P-Code ausente reprova este gate.
4. Conecte cada função aos calls, externals, strings e offsets observados.

Evidência: 03_ghidra/exports/<driver>.ko/ íntegro. Nunca use somente texto copiado de pseudocódigo em conversa como fonte de verdade.

### Gate 3: Mapa Completo Ghidra para Fonte

Gere primeiro os modelos:

~~~powershell
python ./engenharia/tools/generate_reconstruction_map_templates.py
~~~

Depois, preencha curated/<driver>/reconstruction_map.json para cada função em functions.jsonl. Toda entrada deve informar função stock, endereço, arquivo C, função C, offsets/ABI usados, teste associado e revisão.

~~~json
{
  "schema_version": "1.0",
  "stock_sha256": "<sha256 do .ko adquirido>",
  "mappings": [
    {
      "stock_function": "nome_no_ghidra",
      "source_file": "driver.c",
      "source_function": "nome_no_fonte",
      "stock_entry": "00101234",
      "evidence": ["pcode/0000_00101234_nome.jsonl", "offset 0x40"],
      "status": "reviewed"
    }
  ]
}
~~~

Não deixe todo, FUN_*, thunks, callbacks, init_module ou cleanup_module sem decisão documentada. Função não implementada impede a alegação de 100%, exceto se houver prova de código morto fora do caminho carregável.

### Gate 4: Arquitetura e ABI Antes do C

1. Gere ou revise o Documento de Transição: assinaturas, estruturas, alinhamento AArch64, locks, lifetime e CFI.
2. Compare callbacks de file_operations, bus drivers, proc_ops, notifiers e qualquer tabela de ponteiros contra o stock.
3. Valide offsets de structs contra Ghidra, headers do kernel e DTS.
4. Registre símbolos GKI, namespaces e vendor hooks. Símbolo não exportado ou CRC incompatível bloqueia o driver.

Evidência: Documento de Transição e probes de headers compilados contra o kernel alvo.

### Gate 5: Implementação Atômica e Testes

1. Implemente uma função por microtarefa.
2. Compile probe com as flags reais do kernel e KCFI quando aplicável.
3. Crie harness de host para erro, limites, cleanup, concorrência e lifetime.
4. Compare KCFI de todo callback indireto com o stock.
5. Use IS_ERR, PTR_ERR, limpeza por goto, locks documentados e retornos estritos. Nunca use cast para esconder erro CFI.

Evidência: fonte, relatório de compilação, teste de host e JSON KCFI por microtarefa.

Antes de implementar, gere as microtarefas a partir dos exports Ghidra:

~~~powershell
python ./engenharia/tools/generate_driver_microtasks.py --all
~~~

Cada função stock deve ter uma microtarefa. Só marque uma tarefa como PASS após
anexar registros hashados para compile, KCFI e teste; então execute:

~~~powershell
python ./engenharia/tools/verify_driver_microtasks.py --driver <driver>
~~~

Falha ou ausência de uma única microtarefa mantém o Gate 5 em INCOMPLETO.

### Gate 6: Build Independente e KMI

1. Copie a fonte para diretório descartável fora de curated/.
2. Execute make clean, compile contra a árvore GKI alvo, limpe e compile de novo.
3. Exija SHA-256 e tamanho idênticos nas duas builds limpas.
4. Não aceite símbolo não resolvido, CRC faltante, namespace inesperado ou aviso ocultado no modpost.
5. Registre SHA de Module.symvers, clang, imagem Docker, .config e vermagic alvo.

Comando obrigatório:

~~~powershell
python ./engenharia/tools/validate_reconstructed_drivers.py --driver <driver> --rebuild --strict
~~~

Vermagic diferente do stock só é aceitável com prova explícita de que o módulo visa outro kernel alvo e que o Module.symvers desse alvo foi usado no modpost.

### Gate 7: Paridade Observável

Compare ELF64/AArch64, modinfo, aliases, parâmetros, imports, exports, callbacks, strings ABI, ioctl, nós /dev, procfs/sysfs e compatibles DTS.

Toda divergência exige justificativa documentada e teste que prove preservação da interface. Nova dependência ou dependência stock ausente normalmente indica caminho não reconstruído e impede aprovação.

Evidência: parity_report.json com iguais, divergências justificadas e divergências bloqueadoras.

### Gate 8: Revisão Independente

1. Outra LLM ou sessão deve refazer a auditoria sem confiar no relatório da LLM implementadora.
2. A revisora começa por stock, hashes, exports Ghidra e fontes atuais.
3. A revisora não edita o driver antes do parecer.
4. Achado não resolvido retorna o estado para INCOMPLETO.

Evidência: independent_review.json com comandos, hashes, achados e veredito.

### Gate 9: Hardware Controlado com Rollback

1. Execute somente depois de todos os gates estáticos estarem PASS.
2. Use um guia específico do driver: pré-validação, módulo stock copiado, captura de logs, timeout, unbind quando necessário e rollback normal.
3. Teste um driver por sessão. Nunca carregue múltiplos drivers customizados em sequência automática.
4. Primeiro valide carga, bind, nós e logs sem I/O ativo perigoso.
5. Para energia, reboot, biometria, touchscreen e memória, use matriz manual de testes e critérios de abortar antes de I/O ativo.
6. Capture dmesg antes/durante/depois, pstore após falha e confirme restauração do stock.

Evidência: hardware_validation.json, logs íntegros, rollback confirmado e nenhum Oops, KASAN, KCSAN, CFI failure, BUG, panic, refcount ou perda de ADB.

### Gate 10: Promoção e Publicação

Só use o estado "100% dos requisitos observáveis comprovados" quando todos os itens abaixo forem verdadeiros:

- Cadeia de custódia stock validada por SHA-256.
- Export Ghidra completo e sem erro.
- Mapa de 100% das funções Ghidra para fonte revisado.
- ABI, offsets, locks e callbacks auditados.
- Microtarefas, testes de host e KCFI aprovados.
- Duas builds limpas idênticas contra o kernel alvo.
- modpost, namespaces, CRCs e KMI aprovados.
- Paridade observável documentada; divergências justificadas e testadas.
- Revisão independente aprovada.
- Hardware aprovado com rollback comprovado.
- Manifesto final com hash de fonte, binário, relatórios e evidências.

A release deve conter .ko, fonte, mapa, Documento de Transição, relatórios e manifest. Nunca apenas o binário.

## Verificador Executável

As evidências dos gates 0, 1 e 4 a 10 devem ficar em engenharia/validation/<driver>/. Crie apenas os modelos iniciais com:

~~~powershell
python ./engenharia/tools/initialize_llm_reconstruction_cycle.py --driver <driver>
~~~

Os modelos não contam como prova. Depois de preenchidos e revisados, remova o sufixo .template e execute:

~~~powershell
python ./engenharia/tools/verify_llm_reconstruction_cycle.py --driver <driver>
~~~

O processo retorna código diferente de zero enquanto qualquer gate estiver INCOMPLETO. Nenhuma LLM pode substituir esse resultado por uma declaração manual de aprovação.

## Resposta Obrigatória em Toda Sessão

No início e no fim de cada sessão, a LLM deve informar o driver ativo nesta tabela:

| Gate | Estado | Evidência | Bloqueador |
|---|---|---|---|
| 0 - Segurança | PASS/INCOMPLETO/REPROVADO | caminho | texto |
| 1 - Stock | PASS/INCOMPLETO/REPROVADO | SHA-256 | texto |
| 2 - Ghidra | PASS/INCOMPLETO/REPROVADO | export | texto |
| 3 - Mapa | PASS/INCOMPLETO/REPROVADO | mapa | texto |
| 4 - ABI | PASS/INCOMPLETO/REPROVADO | probes | texto |
| 5 - Microtarefas | PASS/INCOMPLETO/REPROVADO | relatórios | texto |
| 6 - Build/KMI | PASS/INCOMPLETO/REPROVADO | hashes | texto |
| 7 - Paridade | PASS/INCOMPLETO/REPROVADO | relatório | texto |
| 8 - Revisão | PASS/INCOMPLETO/REPROVADO | parecer | texto |
| 9 - Hardware | PASS/INCOMPLETO/REPROVADO | logs | texto |
| 10 - Promoção | PASS/INCOMPLETO/REPROVADO | manifesto | texto |

Sem dez linhas PASS, a única resposta correta é:

~~~text
INCOMPLETO: não autorizado a declarar 100%.
~~~
