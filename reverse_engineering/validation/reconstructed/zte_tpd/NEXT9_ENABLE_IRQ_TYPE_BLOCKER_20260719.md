# Bloqueio de assinatura KCFI: syna_spi_enable_irq

Data: 2026-07-19 UTC.

## Estado

`syna_spi_enable_irq` permanece deliberadamente fora do lote Next9. O modulo
stock possui KCFI `0x342e61b1`, mas nenhuma das 196 assinaturas compiladas pelo
oraculo local reproduziu esse type ID.

Este resultado e um bloqueio de informacao, nao uma autorizacao para escolher a
assinatura "mais proxima". Um tipo incorreto em `syna_hw_interface.enable_irq`
quebraria CFI e poderia alterar a passagem de argumentos em uma chamada
indireta.

## Evidencia observada

- O callback fica no offset `0x40` de `struct syna_hw_interface`.
- Call sites stock passam um ponteiro derivado da interface e um valor
  enable/disable.
- O ELF stock nao contem BTF ou DWARF suficiente para recuperar o nome do tipo
  privado usado no primeiro parametro.
- O type ID stock e `0x342e61b1`.
- O oraculo compilou 196 combinacoes com Clang 19.0.1 e GKI 6.12.23.
- Foram testados ponteiros para `syna_hw_interface`, variantes `const`,
  ponteiros duplos, tipos privados plausiveis, `void *`, inteiros e sete formas
  escalares para o segundo parametro.
- Resultado: zero correspondencias.

Arquivos auditaveis:

- `signature_oracles/syna_spi_enable_irq_next9_config.json`
- `signature_oracles/syna_spi_enable_irq_next9_report.json`

## Criterio para desbloqueio

A assinatura somente pode ser promovida quando pelo menos uma destas fontes
for obtida e ligada por hash ao modulo stock:

1. header Synaptics/ZTE da mesma build com o typedef privado;
2. BTF, DWARF ou AST preservado da mesma unidade de compilacao;
3. outro modulo da mesma ROM que importe o callback com o tipo nominal intacto;
4. recuperacao do nome nominal por artefatos locais do build OEM;
5. oraculo KCFI que produza correspondencia exata e seja confirmado pelos call
   sites e pelo assembly.

Pseudocodigo e registradores AArch64, sozinhos, nao distinguem todos os nomes
nominais incorporados ao hash KCFI. Ate o criterio acima ser satisfeito, o
campo permanece opaco e qualquer cast para contornar CFI e proibido.
