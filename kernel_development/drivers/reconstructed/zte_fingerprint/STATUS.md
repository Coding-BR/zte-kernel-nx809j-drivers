# Status de reconstrucao do `zte_fingerprint`

Reconstrucao estatica em andamento. O texto legado que declarava 100% e validacao em hardware foi removido porque nao possuia cadeia de evidencia hashada suficiente para satisfazer o protocolo obrigatorio.

Estado atual:

- stock rastreado: SHA-256 `4ad15396f5c4fa1f6153dbb6e469476a9ec437daee186498dce94bc28f7d8675`;
- estrutura privada de 272 bytes e wakeup source de 192 bytes comprovados por ELF/Ghidra;
- imports, aliases e namespaces agora coincidem com o stock;
- build limpo e reproduzivel para o kernel alvo;
- inventario Ghidra melhorou de 21/30 para 29/30; ainda falta materializar `list_del`;
- somente 12/30 grafos de chamada coincidem; 18 funcoes ainda exigem correcao;
- mapa revisado, KCFI, testes host, microtarefas e paridade final ainda nao passaram;
- nenhum resultado de hardware anterior sera reutilizado como PASS;
- `insmod`, unbind e unload automaticos permanecem proibidos.

Somente os gates registrados em `engenharia/validation/zte_fingerprint/CYCLE_VALIDATION.md` podem alterar este estado.
