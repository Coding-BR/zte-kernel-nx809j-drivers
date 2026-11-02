# Revalidacao Joern completa de zte_tpd

Data: 2026-11-02

## Problema identificado

O primeiro inventario Joern tratava implementacoes assembly como se fossem
funcoes C e analisava quatro translation units C sem o contexto de preprocessamento
real do Kbuild. Isso produzia metodos ausentes no CPG que nao eram lacunas na
reconstrucao: 254 metodos mapeados sao comprovadamente assembly-only; quatro
metodos C exigiam os headers e defines usados pelo build.

## Correcao aplicada

- O gate registra as 254 funcoes assembly-only e nao exige metodo, CFG ou chamadas
  C para essas implementacoes; o mapa, o Kbuild e a evidencia assembly continuam
  como oraculo.
- Quatro arquivos .i foram gerados com os comandos salvos pelo Kbuild no Docker,
  preservando os marcadores de origem dos headers.
- O CPG usa a arvore C/H completa como contexto; metodos e chamadas de headers
  externos nao contam como cobertura do driver.
- A coleta fixa hashes do fonte canonico, snapshot compilado do Docker,
  compilation database, comandos .cmd, arquivos .i e runner.

## Resultado

- Gate Joern: **PASS**, strict=true,
  bloqueadores=0.
- Ghidra e mapa: 367 identidades; CPG: 113
  metodos C obrigatorios e 254
  assembly-only; metodos C ausentes: 0.
- Metodos internos do CPG no escopo do driver: 322;
  metodos extras registrados para revisao: 209 (por exemplo EXPORT_SYMBOL, MODULE_DEVICE_TABLE, alloc_workqueue, crc32_le, device_ioctl, device_llseek, device_mmap, kmalloc). Extras
  permanecem visiveis para revisao; nao bloqueiam as identidades mapeadas.
- Problemas de parse: 0; chamadas nao
  resolvidas: 0; chamadas de fonte: 10629;
  estruturas de controle: 1272.
- Revisoes sinalizadas: 128 (hardware_write=2, lifetime=63, synchronization=61, userspace_egress=1, userspace_ingress=1).

## Ressalva do CPG e deltas revisados

O relatorio preserva joern_cpg_gap=true: uma chamada nao foi emitida pelo CPG
e foi recuperada por evidencia direta no fonte. Isso nao foi ocultado como
cobertura nativa do Joern.

Em syna_dev_helper_work.c:32, o fonte tem a chamada dentro de uma condicao com
mascara de bits, mas calls.json nao a inclui; outras chamadas da funcao aparecem
no CPG. A forma da expressao sugere uma lacuna de inventario do parser, embora
o relatorio sozinho nao prove a causa.

- syna_dev_helper_work: o CPG omitiu syna_tcm_get_boot_info; o scanner de fonte recuperou 1 chamada e o delta efetivo ficou vazio.
- syna_tcm_get_event_data: o binario mapeia duas chamadas syna_tcm_buf_copy_2, enquanto o CPG observa a forma alias syna_tcm_buf_copy; o delta efetivo ficou vazio.

O effective_missing_mapped_calls dos dois deltas e vazio. O scanner recupera a
chamada ausente em syna_dev_helper_work; o segundo delta e consistente com o
alias de macro syna_tcm_buf_copy_2 para syna_tcm_buf_copy.

## Sincronizacao Docker

O snapshot engenharia/curated/zte_tpd e o fonte canonico sao identicos:
524 arquivos C/H, zero ausentes, extras ou alterados.
Hash da arvore normalizada: 70241d92273f29748f25fdd4690fcb17ea42d1a5120d9449ff0d8448c741701a.

## Artefatos

- joern/joern_gate_report.json e joern/joern_gate_summary.json: resultado e
  achados completos.
- joern/input_manifest.json: hashes de entradas, incluindo runner 675b8cff0ccdf54f8898fb18c0ae6e8bd4cab27657a9abd035d2aab42483bd09.
- joern/compile_commands.json, joern/preprocess_view.py e
  preprocessed_sources.json: proveniencia dos quatro .i gerados pelo Kbuild.
- assembly_only_scope.json: 254 classificacoes com hashes dos fontes,
  implementacoes assembly e linhas de Makefile.
- docker_source_sync.json: comparacao da arvore canonica com a arvore do Docker.

Os arquivos .i de aproximadamente 3,5 MB cada nao foram copiados para a
atestacao; seus tamanhos e SHA-256 estao em preprocessed_sources.json e a arvore
de analise usada pelo gate esta fixada no manifest.

Esta revalidacao corrige o metodo de analise de zte_tpd; nao declara a
reconstrucao de todos os drivers concluida.
