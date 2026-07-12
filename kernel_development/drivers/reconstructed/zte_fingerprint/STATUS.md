# Status de reconstrucao do `zte_fingerprint`

Reconstrucao estatica em andamento. O texto legado que declarava 100% e validacao em hardware foi removido porque nao possuia cadeia de evidencia hashada suficiente para satisfazer o protocolo obrigatorio.

Estado atual:

- stock rastreado: SHA-256 `4ad15396f5c4fa1f6153dbb6e469476a9ec437daee186498dce94bc28f7d8675`;
- estrutura privada de 272 bytes e wakeup source de 192 bytes comprovados por ELF/Ghidra;
- imports, aliases e namespaces agora coincidem com o stock;
- build limpo e reproduzivel para o kernel alvo;
- inventario e multiplicidade de chamadas Ghidra agora passam em 30/30 funcoes;
- KCFI passa em 12/12 callbacks indiretos;
- ABI ioctl corrigida para `0x40086709` e `0x4008670d`, com tres copias de usuario comprovadas;
- candidato fresco reproduzivel: SHA-256 `78fe8d69dcf13fc3dd31863c15e6f3a327da85a4cf889317d83ce63b6211d7b9`;
- mapa revisado, testes host, atestacao das 30 microtarefas e paridade comportamental final ainda nao passaram;
- nenhum resultado de hardware anterior sera reutilizado como PASS;
- `insmod`, unbind e unload automaticos permanecem proibidos.

Somente os gates registrados em `engenharia/validation/zte_fingerprint/CYCLE_VALIDATION.md` podem alterar este estado.
