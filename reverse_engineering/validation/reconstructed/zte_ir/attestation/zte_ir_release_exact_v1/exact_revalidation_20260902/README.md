# Atestação exact de `zte_ir_release`

Esta unidade promove `zte_ir_release@001008c4` como uma ilha AArch64
materializada do assembly stock. O corpo possui 20 instruções e 80 bytes; os
dois builds limpos no Docker, o KCFI, as relocações, o assembly, Joern e a
comparação Ghidra/P-Code passaram.

A função limpa `file->private_data` sob `device_list_lock`, registra a
mensagem stock e libera o mutex na ordem observada. A implementação C
safety-oriented continua disponível no fonte/harness, mas a lógica adicional
de contagem e adiamento de free fica fora deste island exact.

A atestação é exclusivamente estática/offline. Não prova segurança, efeito
físico, compatibilidade total nem autoriza carregamento no aparelho.
