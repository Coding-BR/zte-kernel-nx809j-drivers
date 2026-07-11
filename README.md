# Workspace de Reconstrução de Drivers ZTE - NX809J (RedMagic 10 Pro)

Este repositório contém a infraestrutura completa de engenharia reversa e recompilação do kernel para o dispositivo **ZTE NX809J (RedMagic 10 Pro)** baseado na arquitetura GKI 6.12 e Android 16.

O ambiente está estruturado em dois ecossistemas independentes e complementares:

## 📁 Estrutura do Repositório

### 1. [`/reverse_engineering/`](./reverse_engineering/)
Ambiente dedicado à análise estática, descompilação e extração de comportamentos dos drivers proprietários da ZTE.
- **`decompiled_raw/`**: Cópias diretas dos arquivos `.c` extraídos e descompilados via Ghidra a partir do binário `zte_ir.ko`, `zte_fingerprint`, `zte_led`, `zte_misc`, `zte_sensor_sensitivity` e `zte_stats_info`.
- **`tools/`**: Scripts em Python e utilitários para automação do pipeline de análise Ghidra e processamento de dependências.
- **`docs/`**: Metodologias e prompts estruturados de tradução GKI utilizados.

### 2. [`/kernel_development/`](./kernel_development/)
Infraestrutura de compilação de kernel e código-fonte reconstruído pronto para deploy em hardware real.
- **`drivers/zte_ir/`**: A implementação limpa, unificada e GKI-compliant do driver de infravermelho (`zte_ir.c`), estruturada em 10 microtarefas documentadas individualmente com manifesto de integridade SHA256.
- **`build_scripts/`**: Scripts de bootstrap, Dockerfile e automação para compilação do kernel comum GKI dentro de containers isolados.
- **`Module.symvers`**: Mapa de assinaturas de símbolos e CRCs extraídos da build original para evitar erros de `module_layout` no carregamento.

---

## 🛠️ Como Contribuir e Usar

Consulte o README interno de cada pasta para instruções específicas:
- [Guia de Engenharia Reversa](./reverse_engineering/README.md)
- [Guia de Desenvolvimento e Build do Kernel](./kernel_development/README.md)

---
**Licença**: GPL-2.0
