# Correção do ioctl CLEANUP — zte_fingerprint

Data: 2026-11-11T14:48:12Z

## Falha e correção

O dispatcher limpava `opened` antes de encaminhar `CLEANUP` (`0x670c`) a `gf_ioctl`. Como o handler interno rejeita comandos quando o dispositivo está fechado, `gf_cleanup` não era alcançado e os recursos devres permaneciam alocados. A nova ordem rejeita o caso já fechado antes de qualquer teardown, mantém a proteção para descritores compartilhados, deixa `opened` ativo durante a chamada ao handler e o limpa após o retorno.

## Verificações

- Harness Docker/host: PASS reproduzível, 30 funções mapeadas; cobre CLEANUP com múltiplos descritores, dispositivo fechado e descritor único aberto. Relatório: `host_test_report.json`.
- Docker canônico: sincronização do snapshot passou e os manifestos do repositório e do snapshot coincidem. Dois builds limpos do fonte atual produziram `19130f10be986d6b6e209c7d3e413ce0fd74e48de934e76d3c7b7a82e1a3cd97`. A identidade do kernel fonte corresponde ao alvo.
- Assembly: 19 de 30 funções coincidem exatamente com o stock; 11 diferenças continuam declaradas e aguardam revisão independente. O relatório usa a extração stock com relocações e strings resolvidas em `stock_assembly_fresh/`.
- A disassembly de `gf_ioctl_dispatch` confirma a ordem: verifica `opened`/`ref_count` nos offsets `0x844–0x854`, libera a IRQ em `0x858–0x85c`, chama `gf_ioctl` em `0x88c` e limpa `opened` em `0x89c` após o retorno.
- ABI: vermagic do alvo e os 74 CRCs de imports conferem. A paridade estrita continua falhando: falta `gpio_free`, há imports adicionais `devres_open_group` e `devres_release_group`, e as dependências diferem.

## Estado

O validador final permanece `incomplete_or_failed`; `static_verified` e `hardware_verified` seguem vazios. O `.ko` curado atual não corresponde ao build novo em conteúdo/layout executável e não foi promovido. Não foi feita validação dinâmica no smartphone.

Os hashes, relatórios e limitações estão consolidados em `audit.json`.
