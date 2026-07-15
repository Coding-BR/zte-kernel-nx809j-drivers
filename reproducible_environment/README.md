# Ambiente Reproduzivel do NX809J

Este pacote reconstrui o ambiente usado na analise e compilacao dos drivers do
**NX809J, REDMAGIC 11 Pro+**. Ele elimina dependencias em caminhos particulares
desta maquina e fixa as identidades relevantes em `environment.lock.json`.

## Tres niveis diferentes

1. **Entradas estaticas identicas:** garantido pelo clone e pelos SHA-256. Inclui
   335 modulos stock do `vendor_boot`, os 12 alvos destacados, os 12 candidatos,
   configuracao do kernel, Device Tree, `Module.symvers`, assembly, P-Code e
   pseudocodigo.
2. **Runtime de compilacao identico:** exige a imagem OCI com o digest fixado,
   o commit exato do kernel e os commits exatos dos toolchains. Um rebuild do
   Dockerfile e apenas um fallback compativel; nao prova identidade de imagem.
3. **Comportamento fisico identico:** nao pode ser garantido por Docker, Ghidra,
   QEMU ou `.ko`. Continua exigindo o protocolo controlado no NX809J.

## Versoes fixadas

- Kernel: commit `e1ea0289c329945af9422e58256a37f7603fa098`.
- Builder local observado: imagem
  `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`.
- Android Clang: `clang-r536225`, LLVM 19.0.1.
- Android Rust: 1.82.0-dev, pacote `linux-12909517`.
- Ghidra: 12.1.2 PUBLIC, asset oficial fixado por SHA-256.
- Java observado: Oracle Java 26, build `26+35-2893`. Java 21+ e
  compativel com o Ghidra, mas nao e o runtime identico registrado.
- Kernel alvo: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`.

## Verificacao somente dos arquivos

```powershell
python .\reproducible_environment\verify_environment.py --mode static
```

## Preparacao do runtime

```powershell
.\reproducible_environment\bootstrap.ps1 -InstallGhidra
python .\reproducible_environment\verify_environment.py --mode runtime `
  --ghidra-home .\reproducible_environment\.tools\ghidra_12.1.2_PUBLIC
```

O bootstrap usa volumes Docker nomeados apenas para evitar downloads repetidos.
O conteudo relevante dos volumes e validado contra commits, nao presumido.

## Compilacao

```powershell
.\reproducible_environment\build.ps1 -NoPublishRelease
```

Os resultados locais ficam em `reproducible_environment/artifacts/`, que nao e
versionado. A publicacao de release so ocorre sem `-NoPublishRelease` e depende
da autenticacao GitHub do colaborador.

## Distribuicao da imagem exata

A imagem esta publicada no GHCR pelo digest registrado no lock. Como protecao
adicional para colaboradores do repositorio privado, o mesmo objeto Docker e
publicado sem compressao na release `environment-nx809j-20260710`, acompanhado
de tamanho e SHA-256.

O bootstrap tenta a imagem local, GHCR, asset da release e, por ultimo, o
Dockerfile. Somente os tres primeiros caminhos podem comprovar o mesmo objeto
OCI. O Dockerfile preserva o conjunto de pacotes, mas continua sendo fallback.
