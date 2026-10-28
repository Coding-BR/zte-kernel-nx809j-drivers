# rdbg — evidência estática do módulo stock

Este checkpoint preserva o módulo stock, a exportação Ghidra e a extração de assembly AArch64 para as oito funções detectadas. O manifesto `stock_manifest.json` vincula os hashes e as ferramentas.

A exportação Ghidra contém pseudocódigo, P-Code, chamadas, símbolos e strings. `stock_assembly/manifest.json` registra `complete=true` para cada função. A busca no volume de fonte Docker não encontrou o C original do driver; os arquivos sob `kernel/decompiled` são decompilações.

Este diretório registra evidência do binário de referência. Não representa fonte candidata, equivalência semântica, módulo reconstruído nem validação no aparelho.
