# Status de reconstrucao do `zte_fingerprint`

Reconstrucao estatica concluida nos gates 0 a 7. O texto legado que declarava 100% e validacao em hardware foi removido porque nao possuia cadeia de evidencia hashada suficiente para satisfazer o protocolo obrigatorio.

Estado atual:

- stock rastreado: SHA-256 `4ad15396f5c4fa1f6153dbb6e469476a9ec437daee186498dce94bc28f7d8675`;
- estrutura privada de 272 bytes e wakeup source de 192 bytes comprovados por ELF/Ghidra;
- imports, aliases e namespaces agora coincidem com o stock;
- build limpo e reproduzivel para o kernel alvo;
- inventario e multiplicidade de chamadas Ghidra agora passam em 30/30 funcoes;
- KCFI passa em 12/12 callbacks indiretos;
- ABI ioctl corrigida para `0x40086709` e `0x4008670d`, com tres copias de usuario comprovadas;
- candidato estatico promovido e reproduzivel: SHA-256 `8fbc779e8238738398d80e24902c88fbdbd9b1552c935f4d3f010f029ac34247` (393544 bytes);
- harness host passou duas vezes com cobertura nominal das 30 funcoes;
- atestacao hashada passou em 30/30 microtarefas;
- paridade comportamental estatica final passou;
- nenhum resultado de hardware anterior sera reutilizado como PASS;
- `insmod`, unbind e unload automaticos permanecem proibidos.

Os gates 8 a 10 continuam pendentes: revisao independente, validacao supervisionada no hardware e promocao final de release.

Somente os gates registrados em `engenharia/validation/zte_fingerprint/CYCLE_VALIDATION.md` podem alterar este estado.

## Auditoria de vida util/sincronizacao — 2026-11-03

A auditoria estatica confirmou duas lacunas de teardown herdadas do stock: `gf_remove` desregistra o cookie do notifier antes de drenar o trabalho adiado que pode registrar outro cookie; e a IRQ aberta no primeiro open so e liberada no ultimo release, nao no remove. `zte_fp_exit` tambem encerra o netlink antes de desregistrar o driver da plataforma. A comparacao Assembly nova, ligada ao candidato atual, passou 3/3 funcoes sem divergencias. Nenhuma falha foi reproduzida em runtime. O hash antigo do candidato foi corrigido para 8fbc779e...c34247 (393544 bytes), conforme mapa, modulo, snapshot Docker curado e atestacao estatica completa. Veja a [auditoria de vida util e sincronizacao](../../../../reverse_engineering/validation/reconstructed/zte_fingerprint/attestation/lifetime_sync_risk_audit_20261103/README.md). Fonte e mapa permaneceram inalterados; revisao humana independente e validacao em hardware continuam pendentes.
