# Ambiente Compartilhado do NX809J

Este documento define o setup verificavel para novos colaboradores do projeto
de drivers do **NX809J, REDMAGIC 11 Pro+**.

## Resposta objetiva

Um clone antigo deste repositorio nao recriava o nosso ambiente: os wrappers
apontavam para pastas Docker ausentes, o kernel seguia a branch `main`, os
toolchains seguiam revisoes moveis e os `.ko` stock nao eram publicados.

O pacote atual corrige esses pontos. Um colaborador autorizado recebe:

- os 335 modulos do `vendor_boot`, com listas de dependencia e carga;
- os 12 modulos stock usados como fonte de verdade;
- os 12 candidatos atuais, todos explicitamente `INCOMPLETE`;
- configuracao extraida, Device Tree e `Module.symvers`;
- commit exato do kernel e commits dos prebuilts Clang/Rust;
- versao e SHA-256 do Ghidra;
- Dockerfile, lock de 280 pacotes e verificadores automaticos.

Isso torna as entradas estaticas autocontidas. A imagem exata tambem esta no
GHCR e numa release privada do repositorio, ambas identificadas no lock. O
Dockerfile permanece como fallback compativel e nao substitui a prova do digest
ou do SHA-256 do asset.

## Requisitos do host

- Windows 11 com PowerShell 7 ou Linux com adaptacao equivalente;
- Docker Desktop com containers Linux;
- Git;
- Python 3.11 ou mais recente;
- Java 26 build `26+35-2893` para identidade com o runtime observado. Java 21+
  pode executar o Ghidra, mas sera classificado apenas como compativel;
- GitHub CLI apenas para repositorios privados e publicacao de releases.

ADB, fastboot e acesso ao smartphone nao sao exigidos para a etapa offline.

## Clonagem

```powershell
git clone https://github.com/Coding-BR/zte-kernel-nx809j-drivers.git
cd zte-kernel-nx809j-drivers
python .\reproducible_environment\verify_environment.py --mode static
```

O kernel e clonado automaticamente no commit fixado. Nao clone uma branch
diferente por conta propria para produzir relatorios comparaveis.

## Instalacao completa

```powershell
.\reproducible_environment\bootstrap.ps1 -InstallGhidra
python .\reproducible_environment\verify_environment.py --mode runtime `
  --ghidra-home .\reproducible_environment\.tools\ghidra_12.1.2_PUBLIC
```

O segundo comando deve terminar com `PASS`. Um `FAIL` invalida a comparacao
ate a identidade divergente ser corrigida.

## Compilacao local

```powershell
.\reproducible_environment\build.ps1 -NoPublishRelease
```

Sem `-NoPublishRelease`, o script usa a autenticacao local do GitHub para
publicar o resultado no repositorio do kernel. Tokens nunca devem ser gravados
em URLs de remotes, manifests, logs ou arquivos versionados.

## Modulos de referencia

Consulte `reference_modules/README.md`. As classes `stock/` e `candidates/`
devem permanecer separadas. Sempre identifique um modulo por caminho, classe,
tamanho e SHA-256.

O snapshot completo existe para reproducao estatica e resolucao de imports. Ele
nao autoriza carregamento em outro aparelho, e os candidatos nao se tornam
validados apenas porque podem ser baixados.

## O que continua fora do alcance offline

- resposta eletrica de MMIO, SPI, I2C e GPIO;
- temporizacao real de IRQ, clocks, regulators e suspend/resume;
- interacao com firmware de perifero;
- validacao de boot e rollback no aparelho;
- equivalencia funcional de 100%.

Esses itens pertencem ao gate de hardware documentado na esteira principal.
