# `syna_tcm_v1_check_max_rw_size` direct-source attestation

O contrato anterior desta pasta usava um modelo isolado. Esta atualização
adiciona `syna_tcm_v1_check_max_rw_size_host_test.c`, que inclui e compila a
fonte reconstruída real com um overlay mínimo de `struct tcm_dev` compatível
com os offsets observados.

O harness cobre nove contratos: handle nulo, protocolo inválido, tamanho de
identificação ausente, clamps de leitura/escrita, limites já selecionados,
host read desativado e limite de escrita zero. Os dois ciclos Docker passaram
com ASan/UBSan, sem stderr, e produziram o mesmo binário SHA-256
`45946bf328926dd87c7ad26d50c57b31bfd73092c312f2688bd215369d6f3feb`.

O relatório hash-bound é `host_harness_report_v2.json`, SHA-256
`b3710b43475f15b7f71176cf7c128680a899e03eca450a8156bdd38177578211`.
Equivalência AArch64, KCFI, Ghidra, Joern, revisão independente e hardware
continuam sendo gates separados.
