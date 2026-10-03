# Atestação exact de `zte_ir_remove`

Esta unidade promove `zte_ir_remove@00100b50` como uma ilha AArch64
materializada do assembly stock. O corpo possui 69 instruções e 276 bytes;
Assembly, relocations, KCFI `0x509a2353`, Docker em dois ciclos, Joern e
Ghidra/P-Code passaram.

A função preserva a sequência stock de invalidação do SPI, remoção da lista,
destruição do device, liberação do minor, `kfree` e desbloqueio de
`device_list_lock`. O candidato C safety-oriented continua disponível para o
restante do driver, mas não substitui esta ilha exact.

O Ghidra exibiu endereços absolutos de dados diferentes após o layout do
candidato. A comparação normaliza somente endereços cuja seção e deslocamento
relativo coincidem; Assembly e P-Code continuam gates independentes.

A atestação é exclusivamente estática/offline. Não prova segurança, efeito
físico, compatibilidade total nem autoriza carregamento no aparelho.
