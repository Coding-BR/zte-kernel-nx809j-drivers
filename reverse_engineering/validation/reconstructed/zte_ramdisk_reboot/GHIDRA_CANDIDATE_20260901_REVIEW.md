# Checkpoint Ghidra/Docker — `zte_ramdisk_reboot`

O candidato versionado `zte_ramdisk_reboot.ko` tem SHA-256
`299fc9776b31c692df523b60792151865608c37d44245950b5bddd606a79716c` e 225080 bytes.

O protocolo Docker foi repetido em dois ciclos limpos com a imagem
`nubia-sm8850-kernel-builder:latest`, o volume de kernel `nubia_sm8850_kernel_src`
e o toolchain `clang-r536225`. Os dois ciclos produziram exatamente o hash e o
tamanho do candidato.

Foi gerado um export headless independente com Ghidra 12.1.2 para AArch64 e
preservado em `offline_static/ghidra_candidate_20260901`, cobrindo as 13 funções
do export stock. A comparação estrita passou em 5/13 funções; 11/13 passaram em
tamanho de corpo, 9/13 em forma operacional do P-Code e 6/13 no C normalizado.
As divergências estruturais ficam abertas principalmente em
`zte_check_xbl_log_lines`, `extract_sn_info` e `zte_ramdisk_reboot_probe`.
Os fallbacks autorizados não alteraram o resultado de 5/13.

Este resultado corrige a confiança excessiva do status histórico: a
reprodutibilidade Docker do candidato está confirmada, mas a equivalência
Ghidra/assembly da reconstrução ainda não está fechada. Revisão independente,
validação de hardware e promoção continuam pendentes; o candidato não foi
substituído nem promovido.
