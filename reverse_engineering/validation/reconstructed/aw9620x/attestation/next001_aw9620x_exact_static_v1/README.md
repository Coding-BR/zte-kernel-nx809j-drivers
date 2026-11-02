# aw9620x — atestação estática offline

- Veredito: `STATIC_VERIFIED_OFFLINE_CORE`; 8/8 gates automatizados obrigatórios passaram.
- Candidato: 79 funções em assembly exato; auditoria de assembly/relocações 79/79, KCFI 79/79, comparação Ghidra/P-Code 79/79.
- Joern estrito e slice: PASS; 877 chamadas, zero chamadas não resolvidas e zero divergências mapeadas.
- Docker: dois builds limpos reproduzíveis; o candidato tem o mesmo SHA-256 nos dois ciclos.
- A promoção continua não autorizada: revisão independente e validação no hardware não foram realizadas. Os gates de evidência avançada não são declarados satisfeitos por esta atestação.
- A reconstrução usa ilhas de assembly e dados ELF rastreados. Não afirma recuperação de fonte C, equivalência comportamental nem validação física.
- `.init.eh_frame` foi mantido na evidência stock e omitido do candidato por incompatibilidade de relocalização PREL32 para `.exit.text` apontada pelo modpost.

O manifesto lista SHA-256 e tamanhos dos fontes, candidato, stock e evidências primárias. O relatório detalhado está em `offline_static/hard_protocol_core_iteration7/`.
