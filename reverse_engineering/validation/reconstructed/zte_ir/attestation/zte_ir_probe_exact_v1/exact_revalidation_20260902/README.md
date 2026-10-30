# Atestação exact de `zte_ir_probe`

Esta unidade promove `zte_ir_probe@00100918` como uma ilha AArch64 materializada
do assembly stock. O corpo possui 141 instruções e 564 bytes; Assembly,
relocations, KCFI `0xba1082a1`, Docker em dois ciclos, Joern e Ghidra/P-Code
passaram.

A função preserva a sequência stock de alocação, inicialização do mutex,
reserva do minor, criação do device, registro na lista e inicialização de
`speed_hz`. O candidato C safety-oriented continua disponível para o restante
do driver, mas não substitui esta ilha exact.

O Ghidra exibiu `Hint_Prefetch` com endereços absolutos diferentes após o
layout do candidato. A comparação normaliza somente esses endereços quando a
seção e o deslocamento relativo coincidem (`.bss+0x18`); o P-Code e a
comparação independente de Assembly continuam obrigatórios.

A atestação é exclusivamente estática/offline. Não prova segurança, efeito
físico, compatibilidade total nem autoriza carregamento no aparelho.
