# Next18: busca ABI de `syna_spi_enable_irq`

## Veredito

`UNRESOLVED`. A funcao permanece `READY_FOR_IMPLEMENTATION`; nenhum type ID
aproximado foi aceito e nenhum PASS foi emitido.

- Type ID stock: `0x342e61b1`.
- Corpo stock: `216` bytes, `54` instrucoes.
- Type ID do rascunho atual: `0xfcea5887`.
- Fonte da verdade: ELF, assembly, pseudocodigo e P-Code locais do NX809J.

## Fatos Estaticos

O corpo recebe um ponteiro, dereferencia-o uma vez e acessa IRQ, estado e
mutex nos offsets externos `+0xb8`, `+0xbc` e `+0xc0`. Os tres callbacks
indiretos observados recebem somente dois argumentos efetivos em `x0/w1`.
A funcao retorna valores inteiros de 32 bits, incluindo `-6`, `0` e `1`.

No objeto estatico `syna_spi_hw_if`, o probe grava o ponteiro SPI em `+0x00`
e o autoponteiro em `+0x08`. Callbacks em `+0x28`, `+0x30` e `+0x40` recebem
o valor em `+0x08`; `power_on` em `+0x180` recebe o objeto externo. Isso
restringe a forma do primeiro parametro, mas ainda nao revela seu tag nominal
exato, que participa do hash KCFI.

## Espacos Rejeitados

Todos os lotes abaixo foram compilados offline com o Clang OEM `r536225`:

| Familia | Declaracoes | Resultado |
| --- | ---: | --- |
| primitivas e ponteiros basicos | `3.960` | zero matches |
| tags `struct`, ponteiro simples | `15.370` | zero matches |
| tags `struct`, ponteiro duplo | `15.370` | zero matches |
| segundo parametro `int` | `15.370` | zero matches |
| segundo parametro `unsigned int` | `15.370` | zero matches |
| tags `struct` estendidas com `bool` | `112.086` | zero matches |
| tags `enum` com `struct syna_hw_interface *` | `112.085` | zero matches |
| tags `enum` com `struct syna_hw_bus_data *` | `112.085` | zero matches |

Os relatorios compactos `signature_oracles/syna_spi_enable_irq_next18_*_report.json`
guardam SHA-256 do config, fonte gerada e objeto de cada lote. O gerador
reutilizavel e `workspace_tools/reconstruction_pipeline/generate_struct_tag_sweep.py`.

## Hipotese Rejeitada

Uma assinatura publica moderna de Synaptics com
`int (struct syna_hw_interface *, bool)` gera localmente `0x5f30282b`, que e
o type ID stock de `syna_spi_power_on`, nao o de `syna_spi_enable_irq`.
Portanto, essa declaracao externa nao descreve a ABI OEM do NX809J.

## Proximo Passo Seguro

Antes de alterar o C, recuperar o tipo nominal a partir de uma destas fontes
locais:

1. DWARF/BTF residual em outro modulo da mesma ROM;
2. prototype/call-fixup preservado em relocations ou referencias de dados;
3. assinatura de callback em uma tabela consumidora dentro do mesmo ELF;
4. cabeçalho embutido em artefatos de build da ROM userdebug;
5. propagacao de tipos no Ghidra a partir de todos os chamadores e tabelas.

A busca so pode ser reaberta com uma nova familia de tipos motivada por uma
dessas evidencias. Forca bruta adicional sem informacao nominal nao converte
o alvo em uma assinatura comprovada.
