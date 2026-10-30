# Atestação exact de `zte_ir_open`

Esta unidade promove `zte_ir_open@00100804` como uma ilha AArch64
materializada do assembly stock. O corpo possui 47 instruções e 188 bytes; os
dois builds limpos no Docker, o KCFI, as relocações, o assembly, Joern e a
comparação Ghidra/P-Code passaram.

As relocações de dados foram vinculadas aos símbolos reconstruídos
`device_list_lock` (`.data+0`) e `device_list` (`.data+0x30`), confirmados no
layout ELF do candidato. A implementação C safety-oriented continua no
fonte/harness, mas o island exact preserva o comportamento observado no stock
e não inclui as proteções adicionais de `users`/`removed`.

A atestação é exclusivamente estática/offline. Não prova segurança, efeito
físico, compatibilidade total nem autoriza carregamento no aparelho.
