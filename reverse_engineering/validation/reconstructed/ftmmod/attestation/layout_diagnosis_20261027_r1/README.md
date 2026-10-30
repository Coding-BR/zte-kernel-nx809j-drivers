# FTMMOD: diagnostico de relocacao, 2026-10-27

O candidato principal permanece inalterado. Este pacote adiciona uma auditoria
ABI/KMI aprovada e um experimento suplementar; nao promove o driver nem substitui
o resultado `CORE_GATES_FAIL` da rodada canonica r3.

Na base Ghidra canonica `0x100000`, a flag stock esta em `0x100fe0`, enquanto a
flag candidata esta em `0x101000`. O acesso com deslocamento nao nulo gera uma
operacao P-Code `INT_ADD`; o acesso com deslocamento zero gera `COPY`. Sao as
duas divergencias de forma, em `show_simlock_status` e `ftm_probe`. O C normalizado
coincide nas nove funcoes, assim como os gates independentes de Assembly e KCFI.

Ha duas causas de layout observadas: a ordem dos objetos `.bss` difere, e o
`vermagic` correto do kernel alvo acrescenta 25 bytes a `.modinfo`. Nao se deve
falsificar esse metadado para aproximar o layout do stock.

Os mesmos dois ELF, sem modificacoes, foram importados novamente com a mesma
base alternativa `0x100100`, Ghidra 12.1.2 e o mesmo exporter. O comparador
existente aprovou as nove funcoes, sem fallback de P-Code ou de decompilacao.
Somente a normalizacao de enderecos de secoes, ja ativa no job original, foi
usada. Isso evidencia a sensibilidade da forma P-Code a relocacao; nao prova
equivalencia universal e nao apaga a falha canonica.

As variantes C sao experimentos rejeitados: agrupar os campos em struct emite
um unico simbolo; inicializadores zero explicitos mantem a ordem anterior.
Os comandos, fontes, ELF e LLVM IR estao preservados para diagnostico.

`abi_surface.json` verifica imports, exports, aliases, dependencias, metadados,
vermagic alvo e CRCs contra os contratos KMI usados no Docker. Resultado: PASS.
Isto nao comprova comportamento runtime.

Execute `python summarize_layout.py` nesta pasta ou por caminho absoluto para
recalcular o resumo a partir dos arquivos preservados. Os comandos de importacao,
build, emissao de IR e comparacao estao nos JSON correspondentes. Os caminhos
absolutos refletem a maquina que executou o experimento.

A revisao independente foi solicitada, mas o servico encerrou o revisor por
limite de uso. Portanto, nao ha parecer independente para este pacote.
Permanecem pendentes a resolucao revisada do gate canonico, o harness MP4 com
mutantes, os demais gates do protocolo e a validacao fisica separada.

Estado: **INCOMPLETO; promocao NOT_AUTHORIZED; hardware DEFERRED.**
