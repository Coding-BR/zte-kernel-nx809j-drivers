# Checkpoint offline Stage 5: `gpio_keys_probe`

Data: 2026-07-16 (America/Sao_Paulo).

## Objetivo

Fechar o ciclo estatico sustentado pela ROM userdebug sem alterar o candidato
canonico apenas para aproximar a forma do Assembly. Este checkpoint preserva o
Stage 4 e registra quais hipoteses foram realmente testadas.

## Fonte stock confirmada

O mesmo `gpio_keys_nubia.ko` foi recuperado em duas localizacoes:

- `vendor_boot/ramdisk/lib/modules/gpio_keys_nubia.ko`;
- `vendor_dlkm_a/lib/modules/gpio_keys_nubia.ko`.

Ambas possuem `42728` bytes e SHA-256
`8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.
Sao copias byte a byte do mesmo build, nao amostras independentes.

O ELF preserva:

- Android clang `19.0.1`, revisao `r536225`;
- caminho
  `../soc-repo/drivers/vendor/common/nubia_gpio_keys/gpio_keys_nubia.c`.

O ELF nao preserva DWARF, BTF nem a linha de comando completa. Ghidra, P-Code e
o pseudocodigo historico recuperam a operacao em 32 bits de `active_low`, mas
nao provam o tipo C original.

## Resultado estatico

- funcoes exatas: `23/24`;
- funcao restante: `gpio_keys_probe`;
- stock e candidato: `3600` bytes, `900` instrucoes, `164` relocacoes;
- CFG: `228` blocos, `387` arestas, `67` chamadas;
- diferenca dominante: ordem/materializacao de relocacoes no parser DT,
  especialmente `"wakeup-source"`;
- candidato Stage 4 preservado, sem mudanca no `.c` ou `.ko`.

## Variantes rejeitadas neste checkpoint

| Variante | Resultado | Motivo |
|---|---|---|
| `int active_low` | `3608/902/164` | mudou triggers e vidas de registradores |
| saida de erro comum | `3580/895/159` | removeu cinco relocacoes `_printk` |
| log antes do teste de `child` | `3660/915/170` | criou uma chamada `_printk` extra |
| ramo `if (!child)` | `3600/900/164` | mesma forma normalizada do Stage 4 |
| helper com `struct device *` | `3600/900/164` | nenhuma mudanca material |
| caminho de fonte OEM | `3600/900/164` | caminho nao alterou o corpo normalizado |
| alocacao experimental | `3460/865/165` | controle incompativel com o stock |

## Decisao

Nao ha base tecnica para forcar a forma restante com `volatile`, padding,
barreiras do compilador ou Assembly inline. A proxima alteracao somente pode
ser promovida com nova evidencia independente, como fonte/header OEM, outro
build do modulo, DWARF/BTF ou configuracao de compilacao comprovadamente
diferente.

Enquanto isso, `gpio_keys_nubia` permanece
`STAGE4_STATIC_PARTIAL_23_OF_24`, e a esteira segue para outro driver
incompleto. Nenhum teste de hardware foi executado neste checkpoint.
