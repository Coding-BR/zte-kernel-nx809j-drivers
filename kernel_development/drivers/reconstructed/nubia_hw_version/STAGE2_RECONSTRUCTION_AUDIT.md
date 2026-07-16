# Auditoria de Reconstrucao Stage 2: `nubia_hw_version`

Esta auditoria usa somente o modulo OEM, os exports Ghidra e o ambiente Docker
local do GKI 6.12.23. Nenhuma operacao no NX809J foi executada.

## Matriz de Variantes

| Variante | Mudanca controlada | RF show | Probe | Resultado |
|---|---|---:|---:|---|
| baseline | fonte Stage 1 | 272 bytes | 1480 bytes | base parcial |
| v1 | global RF2 `s8` + acesso por array | 260 | 1476 | rejeitada: helper RF regrediu |
| v2 | global `u8`, extensao local + array | 260 | 1480 | melhor, mas FORTIFY adicionou `brk` |
| v3 | global `s8`, cast no helper + offset | 256 | 1476 | helper restaurado; efeito transversal no probe |
| v4 | ponteiro comum de tabelas | 280 | 1476 | rejeitada: bounds checks e `brk` |
| v5 | `switch` e tabelas `long` | 272 | 1476 | rejeitada: CFG e `brk` |
| v6 | v3 + ordem inicial do probe OEM | 256 | 1476 | ordem corrigida, global ainda inadequado |
| v7 | global `u8`, GPIO2 local `long` | 256 | 1480 | remove `sxtb` espurio do probe |
| v8 | despacho explicito e ordem de tabelas OEM | 256 | 1480 | candidato Stage 2 promovido |

O stock mede 244 bytes em `nubia_hw_rf_band_show` e 1520 bytes em
`nubia_hw_ver_probe`. Variantes que inseriram traps, barreiras artificiais ou
regrediram funcoes antes exatas foram descartadas.

## Resultado Estatico

- Duas compilacoes limpas: SHA-256
  `7d3fb492fd1f8452d454aa6ce2cc24c0cc6709338339a85b48c89e3bdfd9983e`.
- Assembly: 14/19 estritamente exatas; 17/19 com instrucoes exatas.
- KCFI: 17/19 exatos.
- Simbolos: 19/19 textos e 24/24 imports.
- Probe: 74 blocos, 111 arestas e 66 chamadas ordenadas em ambos.
- Harness: 26/26 testes, 11 funcoes diretamente modeladas.

## Regra de Interpretacao

Contagens iguais nao provam comportamento igual. O mapa `reviewed` comprova
somente identidade estrutural entre funcao stock, Ghidra, Assembly e unidade
de fonte. Paridade semantica, revisao independente e hardware permanecem
gates separados e obrigatorios.
