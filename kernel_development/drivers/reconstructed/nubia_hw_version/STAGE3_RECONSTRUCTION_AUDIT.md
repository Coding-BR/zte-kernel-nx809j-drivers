# Auditoria de Reconstrucao Stage 3: `nubia_hw_version`

Esta etapa usa somente o `.ko` OEM local, Ghidra/P-Code/Assembly da ROM
userdebug NX809J, o GKI 6.12.23 local e `clang-r536225`. Nenhuma operacao foi
executada no smartphone.

## Correcoes comprovadas

- `nubia_hw_ver_probe` restaura o fluxo stock de `pcb_gpio2/3`.
- Cada leitura inicial usa um temporario antes da gravacao no global.
- `pcb_gpio3` e mantido em registrador entre as chamadas observadas.
- Cinco mensagens usam `_printk` sem prefixo de nivel, como no `.ko` OEM.
- O acesso RF usa o stride tipado de 20 bytes e o campo no offset `0x8`.

## Resultado

| Gate | Resultado |
|---|---|
| Build limpo duplo | PASS, SHA-256 `625f31a3adc4a72ffd05a562550235d1c2c0453b54c5d51b3a15f619f9ad9031` |
| ELF/KMI | PASS, 19/19 textos e 24/24 imports; alias e namespace em paridade |
| KCFI | INCOMPLETO, 17/19 tipos exatos |
| Assembly estrito | 17/19 exatas |
| Instrucoes AArch64 | 18/19 exatas |
| `nubia_hw_ver_probe` | PASS exato: 380 instrucoes, 74 blocos, 111 arestas, 66 chamadas |
| `nubia_hw_rf_band_show` | PARCIAL: 17 blocos, 23 arestas e chamadas iguais; 63 contra 61 instrucoes |
| Harness host | PASS, 50/50 testes com ASan/UBSan e cobertura modelada 19/19 |
| Revisao independente | PENDENTE |
| Hardware | DEFERRED |

## Oraculo KCFI

Os dois tipos nominais ausentes nao foram forjados. A busca local avaliou
155.520 assinaturas candidatas sem encontrar:

- `nubia_get_pcb_table_item_by_gpio`: stock `0x7694f747`, candidato
  `0x7d13948b`;
- `nubia_get_rf_band_by_gpio`: stock `0x2ba39f21`, candidato `0x5bc4b08a`.

Os corpos dessas duas funcoes sao exatos. O bloqueio e somente a identidade
nominal do prototipo destruida na compilacao OEM.

## Regra de veredito

`static_verified` no build comprova reproducibilidade e compatibilidade com o
kernel alvo. Nao autoriza declarar equivalencia OEM completa. O driver
permanece incompleto ate fechar KCFI, diferenca RF, revisao independente e
hardware controlado.
