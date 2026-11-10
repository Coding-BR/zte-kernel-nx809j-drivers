# `fp_goodix` init/netlink ordering hardening — 2026-11-10

## Achado

O Ghidra stock, o P-Code e a assembly de `init_module@001029b0` confirmam que o driver de plataforma era registrado antes de `netlink_init()`. O registro pode executar `gf_probe`, que publica o dispositivo de caracteres. Um processo que o abra imediatamente pode solicitar a IRQ; `gf_irq` chama `sendnlmsg`, que verifica `nl_sk` enquanto ele ainda pode estar nulo. Isso abre uma janela em que eventos iniciais do sensor são descartados.

## Correção

`zte_fp_init` agora inicializa netlink antes de registrar o driver de plataforma. Se netlink falhar, retorna erro depois de desfazer a classe e o dispositivo de caracteres. Se o registro do driver falhar, fecha netlink e depois desfaz a classe e o dispositivo de caracteres. A ordem de encerramento existente permanece: o driver é removido antes de `netlink_exit()`.

Essa alteração é um desvio deliberado do stock; a reconstrução exata anterior está preservada como evidência histórica. O mapa classifica `init_module` como `HARDENING_CANDIDATE_BUILD_VERIFIED`, sem declarar equivalência semântica.

## Verificação estática

- Dois builds limpos finais no Docker NX809J produziram o mesmo `fp_goodix.ko`: SHA-256 `155b696fd615aa907936d5328520393873fb458af38ef428764d38e1ce43f77d`, 723.944 bytes.
- O artefato no repositório e o snapshot curado do Docker têm esse mesmo hash. A sincronização versionada passou.
- A comparação AArch64 contra stock verificou 30 funções: 22 exatas, oito desvios de hardening declarados e zero diferenças inexplicadas. Contra o candidato anterior, somente `init_module` mudou.
- `init_module` passou de 69 instruções/276 bytes para 79 instruções/316 bytes. O section é `.init.text`; o KCFI type ID continua `0x6fbb3035`. O gate estrito de KCFI registra a diferença de tamanho; a comparação de type ID, ignorando tamanho, passa.
- A auditoria ampla final confirma identidade do kernel alvo, `vermagic`, hash do mapa e igualdade do candidato com os dois rebuilds. O estado geral continua `incomplete_or_failed` porque a comparação estrita de imports contra stock encontra os desvios previamente declarados: `devres_open_group` e `devres_release_group` adicionados, `gpio_free` removido. Portanto, o driver não foi promovido para `static_verified`.

## Limites

Não foi executado harness host, KCSAN, carga/descarga de módulo ou teste no NX809J. O ADB não listou aparelho conectado. A revisão independente continua pendente; equivalência funcional e comportamento em hardware não estão provados.

Os detalhes hash-bound estão em `module_init_hardening.json`, `docker_validation_final.json`, `assembly_comparison_stock.json`, `assembly_comparison_previous_candidate.json` e `kcfi_type_comparison.json`. `docker_validation.json` preserva a auditoria inicial feita antes de atualizar o `.ko`; a auditoria final após sincronização está em `docker_validation_final.json`.
