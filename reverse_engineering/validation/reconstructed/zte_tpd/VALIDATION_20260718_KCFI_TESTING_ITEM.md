# Validacao KCFI e Layout de Testing Item - 2026-07-18

## Escopo

Este checkpoint corrige cinco getters, cinco callbacks e cinco descritores de
teste do `zte_tpd`. A fonte de verdade e o ELF stock NX809J com SHA-256
`a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
Nenhum dado externo sobre o aparelho foi usado.

## Evidencia Stock

- Os getters possuem KCFI `0x2b399469`, equivalente a
  `struct testing_item *(void)` no oracle local.
- Os callbacks possuem KCFI `0x81c04a92`, equivalente a
  `int (struct tcm_dev *, struct testing_item *, bool)`.
- Cada objeto `test_*` e local, ocupa `0x178` bytes e tem relocacoes em `+0x08`
  para o nome e `+0x18` para o callback.
- Versao e ID: `0001=(1,0x0001)`, `0002=(1,0x0002)`,
  `0100=(2,0x0100)`, `0500=(1,0x0500)` e `0A00=(1,0x0A00)`.

## Correcao

- `zte_tpd_testing_layout.h` define o overlay AArch64 com padding explicito e
  `static_assert` para tamanho e dez offsets comprovados.
- Os arrays globais zerados foram substituidos por descritores tipados com
  versao, ID, nome e callback stock.
- Os cinco getters e cinco callbacks usam assinaturas exatas.
- Oito consumidores chamam `item->run` com tipo nativo; as leituras manuais do
  type ID em `fn - 4` e os casts de ponteiro de funcao foram removidos.
- `probes/layout_probe.c` torna tamanho e offsets parte do gate compilavel.

## Resultados

- Dois builds limpos: SHA-256 identico
  `cb57baecee9543e164fa44945e3c3d318c7fbbde805c19b73732b5044d2d4b5c`.
- Tamanho do candidato: `18283136` bytes.
- Build, KMI, arquitetura, aliases, namespaces e vermagic: `static_verified`.
- KCFI alterado: exatamente 10 simbolos, todos para o type ID stock.
- Superficie integral: `199/322` matches, `123` divergencias, zero candidato
  ausente e `46` preambulos stock excluidos para revisao separada.
- Superficie selecionada: `151/151 PASS`; familias anteriores: `143/143 PASS`.
- `validate_zte_tpd_layout.py` extrai `.data` e `.rodata.str1.1`, filtra
  `.rela.data` e valida automaticamente stock e candidato.
- ELF candidato: cinco objetos de 376 bytes, IDs corretos, strings corretas e
  relocacoes de callback corretas em `+0x18` (`5/5 PASS`).
- Os 376 bytes crus de cada objeto possuem SHA-256 identico entre stock e
  candidato (`5/5 PASS`), cobrindo tambem valores padrao ainda nao nomeados.
- A extracao opera em copias no diretorio de trabalho e confirma que os hashes
  dos ELFs stock e candidato de origem permaneceram inalterados.
- Probe de layout AArch64: `PASS` com Clang `r536225`.
- Sete harnesses: todos PASS; microtarefas mantidas em `123 PASS / 244 READY`,
  sem promocao nova e sem PASS obsoleto.
- Decomposicao: pseudocodigo, P-Code e assembly presentes para `367/367`.

## Limites

O checkpoint comprova reproducibilidade, layout, dados ELF, contrato KCFI e
integridade das superficies offline citadas. Nao comprova comportamento
eletrico, temporizacao SPI/IRQ, equivalencia semantica integral nem hardware.
O protocolo global permanece `INCOMPLETE`; nenhum comando de smartphone ou
carregamento de modulo foi executado.
