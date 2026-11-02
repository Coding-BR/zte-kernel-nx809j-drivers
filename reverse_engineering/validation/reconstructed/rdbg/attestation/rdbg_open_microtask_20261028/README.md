# Atestação da microtarefa `rdbg_open`

Data: 2026-10-28. Função: `rdbg_open@00100ecc`. A reconstrução do driver `rdbg` continua incompleta; esta atestação cobre somente o candidato C desta função e não autoriza promoção nem carregamento no dispositivo.

## Identidade e builds

- Módulo stock: SHA-256 `05aaaf7e0da03cbf25343e32d9a0a7a965de6907eef342a1d9d4b0b55cd11a12`.
- Fonte versionada e `engenharia/curated/rdbg`: 12 arquivos sincronizados, todos com hashes iguais; a cópia Docker removeu o antigo `rdbg_irq_test_anchor.c`. O manifesto está em `docker_source_sync.json`.
- Container: imagem `nubia-sm8850-kernel-builder:latest`, ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`, Clang `clang-r536225`.
- Os dois ciclos do protocolo na árvore principal e os dois ciclos independentes de `engenharia/curated/rdbg` produziram módulo idêntico: SHA-256 `8803ab52b66682d967dd66eef47e7c199ceabdf342b192600cb0bca5d5404592`, tamanho 474512 bytes. Os módulos do snapshot Docker foram preservados em `docker_curated_builds/`.

## Gates da função

- Protocolo core: `CORE_GATES_PASS`, com 8/8 gates aprovados: identidade da entrada, identidade do mapa, Joern scoped, Joern usages slice, builds Docker reproduzíveis, assembly/relocations, KCFI e Ghidra/P-Code.
- Assembly: igualdade exata em `.text`, 383 instruções e 1532 bytes; comparação de opcodes e relocations aprovada.
- KCFI: tipo compatível com a função stock.
- Export Ghidra do candidato está ligado ao módulo por MD5. O corpo da função tem 1488 bytes e a forma das operações P-Code coincide.
- A comparação direta do C Ghidra não é idêntica. O gate passa por uma normalização explícita limitada a dois acessos a `proc_info`: o stock expressa `device_id * 3` em uma tabela de ponteiros; o candidato expressa o mesmo endereço como deslocamento de bytes `device_id * 0x18`. Ambos apontam para o campo de 8 bytes no início de registros de 24 bytes, usam o mesmo vínculo de dados ELF e tornam o C normalizado da função inteira idêntico. O relatório marca `strict_ghidra_normalized_c_comparison_passed` como falso e registra o fallback aplicado; igualdade de bytes, P-Code e assembly continuam obrigatórias.
- Joern 4.0.548: análise scoped e slice de usos aprovadas.

## Limites e trabalho pendente

- O audit do módulo completo permanece `incomplete_or_failed`; `static_verified` e `hardware_verified` estão vazios. O snapshot não contém módulo `.ko` promovido, e o relatório ainda registra verificações de vermagic/imports sem aprovação.
- `promotion_authorized` é `false`. `rdbg_open` permanece `implemented_pending_independent_review`; revisão independente, harness host e evidências de lifetime ainda faltam.
- Quatro funções stock seguem sem mapa: `rdbg_probe`, `rdbg_read`, `rdbg_write` e `init_module`. Paridade integral, seleção de variante por device tree e validação em hardware também seguem pendentes.
- O módulo parcial não deve ser promovido nem carregado no aparelho.

## Índice das evidências

- `protocol_core/`: plano, manifesto de entradas, decisão de não promoção, relatório dos gates, assembly, KCFI, comparação Ghidra, Joern, auditoria Docker e logs.
- `candidate_ghidra/rdbg.ko/`: export Ghidra e P-Code ligados ao módulo candidato.
- `docker_source_sync.json`: hashes da árvore principal e do snapshot Docker antes/depois da sincronização.
- `docker_curated_audit.json` e `.md`: rebuilds do snapshot Docker e estado incompleto do módulo completo.
- `docker_curated_builds/`: os dois `.ko` reproduzidos pelo snapshot Docker.
- `../../../../../../kernel_development/drivers/reconstructed/rdbg/reconstruction_map.json`: estado atual e funções ainda sem reconstrução.
