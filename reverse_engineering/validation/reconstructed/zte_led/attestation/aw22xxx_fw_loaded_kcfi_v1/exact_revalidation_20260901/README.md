# `aw22xxx_fw_loaded` — exact revalidation

Esta atestação registra a reconstrução estática da função `aw22xxx_fw_loaded`
do módulo `zte_led.ko`, usando o snapshot do repositório e o build Docker
reprodutível do kernel-alvo.

## Resultado

- Protocolo rígido: `CORE_GATES_PASS`.
- Função: `aw22xxx_fw_loaded@001055c8`.
- Corpo stock: 3132 bytes / 783 instruções AArch64.
- KCFI: `0x879dc3f4`, com tamanho e tipo iguais no candidato.
- Docker: dois builds limpos idênticos; candidato `zte_led.ko` SHA-256
  `7972dbc3b1f7895dd1df61db4aeb28ddcec56704070e0a66d975c7fca2d5502b`.
- Ghidra: export candidato vinculado ao módulo por MD5 e comparação de C/P-Code
  aprovada.
- Joern: gate estrito e slice de usages aprovados.
- Harness host: 58/58 funções cobertas e dois binários reproduzíveis.

## Técnica aplicada

O callback foi materializado como uma ilha `.S` usando as palavras de instrução
stock, KCFI, relocações AArch64 e as seções stock necessárias (`.data`,
`.rodata`, `.rodata.str1.1`, `.bss`, `.codetag.alloc_tags` e percpu). Os
`CALL26` locais para `aw22xxx_i2c_write`, `aw22xxx_i2c_read` e
`aw22xxx_led_init` conservam a relocação explícita e também recebem a
codificação do destino no layout final, permitindo que o carregador ELF do
Ghidra decodifique os helpers corretamente.

Os arquivos `hard_protocol_report.json`, `assembly/comparison.json`,
`semantic_comparison.json`, `kcfi/comparison.json`, `docker/driver_audit.json`
e os relatórios Joern são a evidência detalhada. `promotion_decision.json`
registra que a promoção automática do `.ko` central permaneceu desabilitada.
