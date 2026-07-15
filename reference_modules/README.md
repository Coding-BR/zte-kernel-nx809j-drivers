# Modulos de Referencia do NX809J

Este diretorio preserva os binarios exatos usados na reconstrucao dos drivers
do **NX809J, REDMAGIC 11 Pro+**.

## Separacao obrigatoria

- `stock/`: 12 modulos extraidos de `vendor_boot` e tratados como fonte de
  verdade binaria.
- `candidates/`: 12 modulos gerados pelas fontes reconstruidas e selecionados
  pelo auditor offline atual.
- `full_vendor_boot/`: snapshot integral com 335 modulos, `modules.dep`,
  `modules.alias`, listas de carga, blocklist e soft dependencies.

As bases reconstruidas `zlog_exception` e `zlog_common` ficam em
`kernel_development/drivers/reconstructed/`, junto com seus candidatos, testes e
microtarefas. Seus ELFs stock continuam somente em `full_vendor_boot/`; as
evidencias derivadas publicaveis ficam em
`reverse_engineering/validation/reconstructed/`.

Os nomes iguais nas duas pastas sao intencionais. Nunca copie as duas classes
para o mesmo diretorio e nunca carregue um arquivo apenas pelo nome. Use sempre
classe, caminho e SHA-256.

Todos os candidatos permanecem `INCOMPLETE`. A presenca de um `.ko` neste
repositorio nao significa paridade funcional, validacao em hardware ou
autorizacao para `insmod`.

## Verificacao

Execute a partir da raiz do repositorio:

```powershell
python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify
```

O comando valida:

1. conjunto fechado de 12 drivers em cada classe;
2. tamanho e SHA-256 de cada arquivo;
3. formato ELF64 little-endian, `ET_REL`, AArch64;
4. identidade contra o auditor offline;
5. identidade dos stock contra o assembly publicado;
6. estado de promocao dos candidatos.

`MANIFEST.json` contem tambem os campos `.modinfo` recuperados diretamente dos
ELFs. `SHA256SUMS` fornece uma verificacao independente e simples.

`FULL_VENDOR_BOOT_MANIFEST.json` e `FULL_VENDOR_BOOT_SHA256SUMS` cobrem o
snapshot integral. Os 12 stock destacados devem ser byte a byte identicos aos
arquivos de mesmo nome nesse snapshot.

## Proveniencia

Os stock vieram das aquisicoes locais
`NX809J-20260711T011653Z` e `NX809J-20260712T105314Z`. O segundo run fornece
`zte_ramdisk_reboot.ko`, ausente no primeiro conjunto de aquisicao.

Os candidatos vieram do snapshot `engineering/curated` identificado pelos
hashes de `reverse_engineering/validation/OFFLINE_RECONSTRUCTION_AUDIT.json`.

Leia [NOTICE.md](./NOTICE.md) antes de redistribuir os binarios.
