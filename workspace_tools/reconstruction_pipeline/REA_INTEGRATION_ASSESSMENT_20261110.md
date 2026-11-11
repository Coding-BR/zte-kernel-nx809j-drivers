# Avaliação de integração do REA

Data: 2026-11-10

Escopo: reconstrução estática dos módulos vendor NX809J, com Docker canônico para builds.

## Decisão

O REA pode ajudar como ferramenta auxiliar de investigação de funções difíceis, principalmente para consultar Ghidra por CLI/MCP e gerar dossiês de função com pseudocódigo, instruções, referências e fluxo de valores. Não deve entrar como gate obrigatório nem substituir a pipeline atual. A integração no ambiente atual não é recomendada ainda: a versão publicada requer Node mais novo que o instalado, e o suporte Ghidra no Windows documentado pelo projeto não admite os ELF AArch64 dos drivers.

## O que já existe neste repositório

A pipeline já preserva exportações Ghidra do módulo stock e mantém ferramentas próprias para:

- comparar Assembly/opcodes e relocations por função;
- comparar semântica de funções e P-Code entre exportações Ghidra;
- manter identidade função/endereço e vínculo com `reconstruction_map.json`;
- validar ABI/KMI, KCFI e inventário de símbolos;
- executar o protocolo de driver difícil com Joern e builds Kbuild reproduzíveis no Docker.

O prompt obrigatório da pipeline estabelece que stock ELF, Assembly, relocations, KCFI, P-Code e export Ghidra são fontes de verdade; análises externas podem sugerir caminhos, mas não provam fatos do NX809J. Também determina que Joern e Docker são gates independentes e que uma análise auxiliar não promove atestação.

## Onde o REA acrescentaria valor

- Consultas sob demanda ao Ghidra (`function`, `decompile`, `instructions`, `xrefs`, `trace`) sem escrever scripts descartáveis para cada pergunta.
- Dossiês de função e fluxos estáticos de valores/chamadas para orientar a leitura manual de funções complexas.
- Evidência JSON agrupada para facilitar inspeção posterior. Ainda seria necessário vincular cada resultado ao SHA-256 do `.ko` stock, versão/configuração do Ghidra e identidade `função@endereço` usada pelo projeto.
- Ferramentas ADB para uma fase dinâmica separada, quando o aparelho estiver conectado. Isso coleta observações do dispositivo; não prova equivalência do módulo reconstruído.

## Limites e encaixe no ambiente atual

- Estado local verificado: Node `v26.5.1`, npm `11.17.0`, Ghidra `12.1.2` em Windows.
- Registro npm consultado: `rea-agents 6.8.0`, licença MIT, repositório `morluto/rea`; engine declarado: `^22.23.4 || ^24.22.1 || >=26.12.1`. O Node instalado não satisfaz o requisito.
- O guia do REA descreve o suporte Ghidra no Windows como experimental, com análise somente leitura P0 e alvos PE nativos, DOS MZ e imagem 6502. Esse limite não cobre os módulos Linux ELF/AArch64 do NX809J.
- `inspect-kernel-module` lê `.modinfo`, CRCs clássicos de `__versions`, seções e trailer de assinatura; não decodifica `struct module`. Isso se sobrepõe às auditorias de ELF/ABI já presentes e não reconstrói funções nem substitui Kbuild.
- O Docker canônico cobre o build contra o kernel fixado. O REA não substitui esse ambiente, Joern, comparações de Assembly/relocations, análise KCFI ou os gates hash-bound.
- O comando `rea setup` altera registros MCP/skills do agente após revisão. Essa avaliação não executou setup, não instalou dependências e não alterou a configuração do Codex.

## Piloto recomendado, caso a compatibilidade seja resolvida

1. Usar um ambiente Linux controlado com Node dentro da faixa suportada e Ghidra configurado, capaz de importar o ELF relocatable AArch64 do módulo stock. Não presumir que o suporte Windows P0 aceite esse alvo.
2. Fixar uma versão exata do pacote e registrar seu SHA/versão, o SHA-256 do módulo, versão do Ghidra, arquitetura, nome e endereço stock da função.
3. Rodar REA somente sobre o módulo stock para uma função/SCC difícil e salvar a evidência JSON fora das fontes do driver.
4. Comparar cada observação nova com o export Ghidra, Assembly/P-Code e relocations que já usamos. Registrar divergências e limitações; nenhuma saída do REA pode virar `PASS` automaticamente.
5. Manter o piloto somente se reduzir trabalho manual ou revelar referências/fluxos que a exportação atual não cobre. A promoção continua dependente dos gates existentes, inclusive Docker.

## Revalidação — 2026-11-11

- O `HEAD` público de `morluto/rea` mudou desde a consulta inicial; `git ls-remote` agora retorna `40d9f1a5e84b6985811d20cff030a192c23bbb2c`. A documentação atual mantém os mesmos limites relevantes: Node `26.12.1+` e Ghidra no Windows em escopo experimental para PE/DOS/6502, sem cobrir o ELF relocatable AArch64 do NX809J.
- Neste host, `node --version` continua em `v26.5.1` e não há comando `rea` no `PATH`. Não instalei o pacote nem rodei `rea setup`.
- A documentação ADB atual confirma que REA não aceita linha de shell arbitrária, `input` ou `monkey`. Ela fornece leituras ADB delimitadas e algumas operações explícitas de pacote/arquivo; não executa `insmod`/`rmmod` nem testa diretamente o driver reconstruído no smartphone.
- Conclusão mantida: não adicionar REA como dependência nem como gate obrigatório agora. Um piloto futuro pode valer como interface exploratória de funções no Ghidra se for executado em Linux com Node/Ghidra compatíveis, e somente se as saídas forem comparadas e vinculadas às identidades/hash já usados pela pipeline.

## Fontes

- Repositório e revisão consultada: https://github.com/morluto/rea (HEAD observado: `e2585aa7ce31c37866ca46991ec656fdffaa3b90`).
- CLI e evidência: https://github.com/morluto/rea/blob/main/docs/getting-started/cli.md
- Módulos Linux: https://github.com/morluto/rea/blob/main/docs/kernel-modules.md
- Limite Ghidra no Windows: https://github.com/morluto/rea/blob/main/docs/providers/windows-ghidra-p0.md
- ADB Android: https://github.com/morluto/rea/blob/main/docs/guides/android/adb-device-analysis.md
- Pipeline local: `HARD_DRIVER_AGENT_PROMPT.md`, `HARD_DRIVER_RECONSTRUCTION_PROTOCOL.md`, `compare_function_assembly.py`, `compare_ghidra_function_semantics.py` e `run_hard_driver_protocol.py`.
