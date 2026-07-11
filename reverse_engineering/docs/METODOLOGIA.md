# Metodologia e Limites de Evidência

1. A aquisição é feita por `adb exec-out` com shell root e comandos de leitura.
2. O módulo extraído recebe SHA-256 antes de qualquer análise.
3. O ELF é normalizado com `llvm-readelf` e `llvm-nm` da mesma imagem de compilação local.
4. O Ghidra importa cada módulo em projeto independente AArch64 e exporta resultados estruturados.
5. Símbolos indefinidos são cruzados com o `Module.symvers` do Kernel 6.12 local.
6. O Device Tree ativo é preservado como TAR e convertido em DTS pelo `dtc` da árvore do kernel.
7. O documento final diferencia fatos, candidatos de offset e lacunas que exigem revisão humana.

O pseudocódigo do Ghidra não é código-fonte original. Tipos genéricos (`undefined*`), nomes
automáticos, aritmética de ponteiro e assinaturas inferidas devem ser reconciliados com headers do
Kernel 6.12.23, DTS, contexto de chamadas e comportamento observado no aparelho. Nenhum cast de
callback é aceito como solução para CFI, e nenhum símbolo é considerado utilizável apenas porque
aparece em `/proc/kallsyms`.
