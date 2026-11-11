# Risco de callback do painel — zte_fingerprint

Auditoria estática: 2026-11-11T15:10:35Z. Nenhuma alteração de código de driver foi feita neste lote.

## Evidência stock

O `modules.dep` do `full_vendor_boot` lista `panel_event_notifier.ko` como dependência de `zte_fingerprint.ko`. O módulo de referência tem SHA-256 `b7ce336cb2e9adc911fb43ad6784219605061e2c4c93f4fc381c5aff7a256f2a`. A extração AArch64 dos seus símbolos mostra que `panel_event_notification_trigger` carrega callback e client data sob mutex, solta o mutex e chama o ponteiro depois; `panel_event_notifier_unregister` limpa os campos sob o mesmo mutex e retorna sem esperar chamadas já selecionadas. As três disassemblies e o manifesto estão em `stock_panel_notifier_assembly/`.

O worker do driver e a ordem de `gf_remove` já tratam o registro tardio: cancelar/drenar o trabalho antes de desregistrar o cookie. A IRQ também é liberada antes de remover a wakeup source. Permanece uma janela distinta: um callback que já observou `removing == 0` pode continuar enquanto o remove libera recursos, e o unregister stock não o drena. O callback acessa `gf_device` e chama `sendnlmsg`.

## Limite do build Docker

O source volume canônico fornece os mesmos símbolos por `zte_parity.c`, mas essa implementação chama callbacks mantendo `panel_client_mutex` travado. Isso não reproduz a semântica do módulo stock extraído de `full_vendor_boot`; o build reproduzível pós-auditoria valida o `.ko` contra esse provider de compatibilidade, não a quiescência do provider stock. O recorte está versionado em `docker_target_provider_excerpt.c`.

O harness atual também não testa a corrida: seu stub só conta chamadas de register/unregister e não dispara callbacks concorrentes. `adb devices -l` não listou telefone conectado, então a implementação ativa no aparelho não foi confirmada.
O manifesto stock contém `modules.dep` para o mesmo `zte_fingerprint.ko` (hash idêntico ao módulo de referência) e lista `panel_event_notifier.ko` como dependência. ADB continua necessário para confirmar a implementação carregada no aparelho. O validador pós-auditoria fez dois builds limpos reproduzíveis (ambos SHA-256 `19130f10be986d6b6e209c7d3e413ce0fd74e48de934e76d3c7b7a82e1a3cd97`) e rastreou 30 funções sem identidades sem mapeamento. `static_verified` segue vazio: o mapa mantém 11 diferenças sem revisão independente e os gates de paridade do candidato curado continuam falhando.

## Próxima correção

Um contador dentro de `zte_fingerprint` não fecha a janela anterior à entrada no callback. A sincronização precisa ser garantida no provider/API, removendo a inscrição antes de esperar todos os callbacks já selecionados. Depois disso, validar com um teste concorrente determinístico, rebuild do kernel/provider e teste supervisionado no telefone.

O estado completo e os hashes estão em `audit.json`.
