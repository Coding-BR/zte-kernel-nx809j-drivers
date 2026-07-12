# Guia de teste controlado do módulo `zte_ir`

Este documento descreve como substituir **temporariamente**, apenas na memória
RAM, o módulo stock `zte_ir` pelo módulo reconstruído
`zte_ir_reconstructed.ko` em um NX809J userdebug. O procedimento não grava
partições, não usa fastboot, não altera AVB/vbmeta e deve terminar com a
restauração do módulo stock.

Não existe procedimento de kernel com garantia absoluta de “zero falhas”. A
segurança aqui vem de portas de validação obrigatórias, ausência de alterações
persistentes e rollback preparado antes da troca. Se qualquer resultado for
diferente do esperado, **pare e execute o rollback**; não tente contornar a
proteção que falhou.

## 1. Artefatos aprovados

Módulo reconstruído:

```text
implementation/final/zte_ir_reconstructed.ko
SHA-256: 2e7e1dfb116cf4574b3fd2ed6cc6512e9bd882974d20c32341ae742ca175b61c
Tamanho: 240296 bytes
Módulo Linux: zte_ir_reconstructed
Nome do driver SPI: zte_ir
OF compatible: zte,zte_ir
```

Módulo stock conhecido:

```text
/vendor_dlkm/lib/modules/zte_ir.ko
SHA-256: b7a70d47bbdad67e184f968808b2c448172fc1ff16bb22e80b9beaa08d9641a1
Módulo Linux: zte_ir
```

Kernel esperado:

```text
6.12.23-android16-5-gf1bdb13583da-ab13761046-4k
```

O módulo reconstruído foi validado com o mesmo vermagic, MODVERSIONS, 27
dependências GKI resolvidas, nenhum namespace adicional e os oito callbacks
KCFI iguais ao módulo stock. Se o outro aparelho ou kernel não corresponder
exatamente, **não use esse `.ko`**.

## 2. Requisitos do ambiente de teste

- NX809J inicializado normalmente, sem processo de atualização em andamento.
- ROM `userdebug`, `ro.debuggable=1` e `su 0` funcional.
- Cabo USB confiável, bateria acima de 50% e computador sem suspensão automática.
- `adb` recente e apenas um aparelho selecionado explicitamente pelo serial.
- Acesso ao módulo reconstruído e confirmação do SHA-256 no computador.
- Módulo stock presente em `/vendor_dlkm/lib/modules/zte_ir.ko`.
- Acesso físico ao botão de reinicialização e ao bootloader, somente como contingência.
- Nenhum aplicativo usando o transmissor IR durante o procedimento.

Nunca use neste procedimento:

```text
rmmod -f
insmod -f
setenforce 0
--disable-verity
flash vbmeta
flash boot/vendor_dlkm
escrita em /sys/bus/spi/devices/.../remove
```

## 3. Variáveis no PowerShell

Abra PowerShell no computador de teste e ajuste somente estas variáveis:

```powershell
$ErrorActionPreference = 'Stop'

$Serial = 'SERIAL_ADB_DO_APARELHO'
$NewKo = 'C:\caminho\para\zte_ir_reconstructed.ko'
$RemoteNewKo = '/data/local/tmp/zte_ir_reconstructed.ko'
$RemoteStockKo = '/data/local/tmp/zte_ir_stock.ko'
$VendorStockKo = '/vendor_dlkm/lib/modules/zte_ir.ko'

$ExpectedKernel = '6.12.23-android16-5-gf1bdb13583da-ab13761046-4k'
$ExpectedNewSha = '2e7e1dfb116cf4574b3fd2ed6cc6512e9bd882974d20c32341ae742ca175b61c'
$ExpectedStockSha = 'b7a70d47bbdad67e184f968808b2c448172fc1ff16bb22e80b9beaa08d9641a1'
$SpiDevice = 'spi15.0'
$DriverPath = '/sys/bus/spi/drivers/zte_ir'

$Evidence = Join-Path $PWD ('zte_ir-test-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
New-Item -ItemType Directory -Path $Evidence | Out-Null
```

Sempre use `-s $Serial`. Não dependa da seleção automática do ADB.

## 4. Pré-validação obrigatória

### 4.1 ADB, root e identidade

```powershell
adb -s $Serial get-state
adb -s $Serial shell su 0 id

$Model = (adb -s $Serial shell getprop ro.product.model).Trim()
$BuildType = (adb -s $Serial shell getprop ro.build.type).Trim()
$Debuggable = (adb -s $Serial shell getprop ro.debuggable).Trim()
$Kernel = (adb -s $Serial shell su 0 uname -r).Trim()

"model=$Model build=$BuildType debuggable=$Debuggable kernel=$Kernel"
```

Resultado obrigatório:

```text
model=NX809J
build=userdebug
debuggable=1
kernel=6.12.23-android16-5-gf1bdb13583da-ab13761046-4k
```

Pare se `su 0 id` não mostrar `uid=0(root)` ou se qualquer campo divergir.

### 4.2 SHA-256 local

```powershell
$LocalSha = (Get-FileHash -Algorithm SHA256 -LiteralPath $NewKo).Hash.ToLowerInvariant()
if ($LocalSha -ne $ExpectedNewSha) {
    throw "SHA-256 incorreto para o módulo reconstruído: $LocalSha"
}
```

### 4.3 Estado stock

```powershell
$ModulesBefore = adb -s $Serial shell su 0 cat /proc/modules
$StockLine = $ModulesBefore | Where-Object { $_ -match '^zte_ir\s' }
$CustomLine = $ModulesBefore | Where-Object { $_ -match '^zte_ir_reconstructed\s' }

if (-not $StockLine) { throw 'O módulo stock zte_ir não está carregado.' }
if ($CustomLine) { throw 'O módulo reconstruído já está carregado. Pare e faça rollback.' }

$StockFields = $StockLine -split '\s+'
if ([int]$StockFields[2] -ne 0) {
    throw "O módulo stock está em uso, refcount=$($StockFields[2]). Feche o consumidor IR."
}

adb -s $Serial shell su 0 readlink -f "$DriverPath/$SpiDevice"
adb -s $Serial shell su 0 cat "/sys/bus/spi/devices/$SpiDevice/uevent"
adb -s $Serial shell su 0 ls -lZ /dev/zte_ir
```

Resultados obrigatórios:

- Existe uma linha `zte_ir ... 0 ... Live` em `/proc/modules`.
- Não existe `zte_ir_reconstructed`.
- `$DriverPath/$SpiDevice` resolve para o dispositivo SPI real.
- O `uevent` contém `DRIVER=zte_ir` e `OF_COMPATIBLE_0=zte,zte_ir`.
- `/dev/zte_ir` existe.

Se o refcount não for zero, não execute unbind nem rmmod. O campo `.owner` das
file operations mantém o módulo referenciado enquanto houver arquivo aberto.

### 4.4 Política de assinatura e segurança

```powershell
adb -s $Serial shell su 0 test -e /proc/sys/kernel/module_sig_enforce
if ($LASTEXITCODE -eq 0) {
    adb -s $Serial shell su 0 cat /proc/sys/kernel/module_sig_enforce
}
adb -s $Serial shell su 0 getenforce
```

Se `module_sig_enforce` existir e retornar `1`, o módulo não assinado será
recusado. Pare; não desative a exigência. Mantenha o SELinux no estado original.

## 5. Preparar evidências e rollback antes da troca

Capture a linha de base:

```powershell
adb -s $Serial exec-out su 0 dmesg > (Join-Path $Evidence 'dmesg-before.txt')
adb -s $Serial shell su 0 cat /proc/modules > (Join-Path $Evidence 'modules-before.txt')
adb -s $Serial shell su 0 cat "/sys/bus/spi/devices/$SpiDevice/uevent" > (Join-Path $Evidence 'uevent-before.txt')
```

Copie e verifique o módulo stock sem alterar `/vendor_dlkm`:

```powershell
adb -s $Serial shell su 0 cp $VendorStockKo $RemoteStockKo
adb -s $Serial shell su 0 chmod 0600 $RemoteStockKo

$RemoteStockSha = ((adb -s $Serial shell su 0 sha256sum $RemoteStockKo) -split '\s+')[0].ToLowerInvariant()
if ($RemoteStockSha -ne $ExpectedStockSha) {
    throw "SHA-256 inesperado para o módulo stock: $RemoteStockSha"
}
```

Envie e verifique o módulo novo:

```powershell
adb -s $Serial push $NewKo $RemoteNewKo
adb -s $Serial shell su 0 chown 0 0 $RemoteNewKo
adb -s $Serial shell su 0 chmod 0600 $RemoteNewKo

$RemoteNewSha = ((adb -s $Serial shell su 0 sha256sum $RemoteNewKo) -split '\s+')[0].ToLowerInvariant()
if ($RemoteNewSha -ne $ExpectedNewSha) {
    throw "SHA-256 mudou após adb push: $RemoteNewSha"
}
```

Abra um segundo terminal e mantenha o log visível:

```powershell
adb -s $Serial shell su 0 dmesg -w
```

Se `dmesg -w` não for suportado, use:

```powershell
adb -s $Serial logcat -b kernel
```

## 6. Função segura para escrever em sysfs

Evite redirecionamento remoto com aspas frágeis. No PowerShell, use `tee` e
verifique o código de saída:

```powershell
function Set-RemoteSysfs {
    param(
        [Parameter(Mandatory=$true)][string]$Value,
        [Parameter(Mandatory=$true)][string]$Path
    )

    $Value | adb -s $Serial shell su 0 tee $Path | Out-Null
    if ($LASTEXITCODE -ne 0) {
        throw "Falha ao escrever '$Value' em '$Path'."
    }
}
```

## 7. Troca temporária em RAM

Execute uma etapa por vez. Não cole todo o bloco de uma só vez.

### 7.1 Desvincular o driver stock

```powershell
Set-RemoteSysfs -Value $SpiDevice -Path "$DriverPath/unbind"
Start-Sleep -Seconds 1

adb -s $Serial shell su 0 ls -la $DriverPath
adb -s $Serial shell su 0 ls -lZ /dev/zte_ir
```

Resultado obrigatório: o link `spi15.0` e o nó `/dev/zte_ir` desapareceram.
O diretório do driver ainda existe porque o módulo stock continua carregado.

Se o unbind falhar ou o vínculo permanecer, pare. Não execute `rmmod`.

### 7.2 Remover o módulo stock

```powershell
adb -s $Serial shell su 0 rmmod zte_ir
if ($LASTEXITCODE -ne 0) {
    Set-RemoteSysfs -Value $SpiDevice -Path "$DriverPath/bind"
    throw 'rmmod zte_ir falhou; o driver stock foi religado.'
}

$ModulesAfterRmmod = adb -s $Serial shell su 0 cat /proc/modules
if ($ModulesAfterRmmod -match '^zte_ir\s') {
    throw 'zte_ir ainda aparece em /proc/modules.'
}
```

### 7.3 Inserir o módulo reconstruído

```powershell
adb -s $Serial shell su 0 insmod $RemoteNewKo
if ($LASTEXITCODE -ne 0) {
    adb -s $Serial exec-out su 0 dmesg > (Join-Path $Evidence 'dmesg-insmod-failed.txt')
    throw 'insmod do módulo reconstruído falhou. Execute o rollback imediatamente.'
}
```

Verifique o nome do módulo e o binding:

```powershell
$ModulesCustom = adb -s $Serial shell su 0 cat /proc/modules
if ($ModulesCustom -notmatch '^zte_ir_reconstructed\s') {
    throw 'O módulo novo não apareceu em /proc/modules.'
}

adb -s $Serial shell su 0 ls -la $DriverPath
```

Normalmente o SPI core fará bind automático pelo OF compatible. Se o módulo
estiver carregado, mas `spi15.0` não aparecer no diretório do driver, faça uma
única tentativa explícita:

```powershell
Set-RemoteSysfs -Value $SpiDevice -Path "$DriverPath/bind"
Start-Sleep -Seconds 1
```

Se o bind explícito falhar, execute rollback. Não tente registrar outro driver
e não remova o dispositivo SPI pelo caminho `devices/.../remove`.

## 8. Validação sem transmissão IR

Primeiro valide somente registro, vínculo e nó de dispositivo:

```powershell
adb -s $Serial shell su 0 readlink -f "$DriverPath/$SpiDevice"
adb -s $Serial shell su 0 cat "/sys/bus/spi/devices/$SpiDevice/uevent"
adb -s $Serial shell su 0 ls -lZ /dev/zte_ir
adb -s $Serial shell su 0 cat /proc/modules
adb -s $Serial exec-out su 0 dmesg > (Join-Path $Evidence 'dmesg-custom-bound.txt')
```

Espere pelo menos 60 segundos observando o terminal de kernel. Critérios
obrigatórios:

- `zte_ir_reconstructed` permanece `Live`.
- `spi15.0` está ligado ao driver `zte_ir`.
- `/dev/zte_ir` existe com o contexto SELinux esperado.
- Não há `BUG`, `Oops`, `panic`, `KASAN`, `KCSAN`, `CFI failure`,
  `Unable to handle`, `use-after-free`, `refcount` ou stack trace novo.
- O ADB permanece estável.

Essa fase não abre `/dev/zte_ir` e não emite IR.

## 9. Smoke test funcional opcional

Faça esta etapa somente após a validação sem transmissão. O teste padrão deve
abrir o dispositivo e configurar 38 kHz por ioctl, sem chamar `write`.

Programa mínimo para compilar com um Android NDK para arm64:

```c
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <sys/ioctl.h>
#include <unistd.h>

#define ZTE_IR_IOC_SET_CARRIER _IOW('i', 0x31, int)

int main(void)
{
    int carrier_hz = 38000;
    int fd = open("/dev/zte_ir", O_WRONLY | O_CLOEXEC);

    if (fd < 0) {
        fprintf(stderr, "open: %s\n", strerror(errno));
        return 1;
    }
    if (ioctl(fd, ZTE_IR_IOC_SET_CARRIER, &carrier_hz) < 0) {
        fprintf(stderr, "ioctl: %s\n", strerror(errno));
        close(fd);
        return 2;
    }
    if (close(fd) < 0) {
        fprintf(stderr, "close: %s\n", strerror(errno));
        return 3;
    }
    puts("zte_ir open/ioctl/close: OK");
    return 0;
}
```

Compile fora do aparelho com o Clang do NDK correspondente e envie:

```powershell
adb -s $Serial push .\zte_ir_smoke_test /data/local/tmp/zte_ir_smoke_test
adb -s $Serial shell su 0 chmod 0755 /data/local/tmp/zte_ir_smoke_test
adb -s $Serial shell su 0 /data/local/tmp/zte_ir_smoke_test
```

Resultado esperado:

```text
zte_ir open/ioctl/close: OK
```

Não use `dd`, `printf` ou dados aleatórios em `/dev/zte_ir`. Uma escrita é uma
transmissão física. Caso seja necessário validar `write`, use depois um
programa dedicado com um vetor conhecido e uma janela de teste separada.

## 10. Rollback normal obrigatório

O teste padrão termina restaurando o módulo stock, mesmo quando tudo funciona.

### 10.1 Fechar consumidores

Confirme que o smoke test terminou e que o refcount do módulo novo é zero:

```powershell
$NewLine = (adb -s $Serial shell su 0 cat /proc/modules) |
    Where-Object { $_ -match '^zte_ir_reconstructed\s' }
$NewFields = $NewLine -split '\s+'
if ([int]$NewFields[2] -ne 0) {
    throw "O módulo novo ainda está em uso, refcount=$($NewFields[2])."
}
```

### 10.2 Unbind e rmmod do módulo novo

```powershell
Set-RemoteSysfs -Value $SpiDevice -Path "$DriverPath/unbind"
Start-Sleep -Seconds 1

adb -s $Serial shell su 0 rmmod zte_ir_reconstructed
if ($LASTEXITCODE -ne 0) {
    throw 'Não force a remoção. Feche o consumidor e tente novamente.'
}
```

### 10.3 Restaurar o stock

```powershell
adb -s $Serial shell su 0 insmod $RemoteStockKo
if ($LASTEXITCODE -ne 0) {
    throw 'Falha ao reinserir o módulo stock. Reinicie o aparelho.'
}

Start-Sleep -Seconds 1
adb -s $Serial shell su 0 test -d $DriverPath
if ($LASTEXITCODE -ne 0) {
    throw "Driver stock não reapareceu em $DriverPath; interrompa e colete os logs."
}
adb -s $Serial shell su 0 ls -la $DriverPath
```

Se o stock estiver carregado, mas não ligado:

```powershell
Set-RemoteSysfs -Value $SpiDevice -Path "$DriverPath/bind"
Start-Sleep -Seconds 1
```

Validação final obrigatória:

```powershell
$ModulesRollback = adb -s $Serial shell su 0 cat /proc/modules
if ($ModulesRollback -notmatch '^zte_ir\s') {
    throw 'O módulo stock não voltou.'
}
if ($ModulesRollback -match '^zte_ir_reconstructed\s') {
    throw 'O módulo reconstruído ainda está carregado.'
}

adb -s $Serial shell su 0 readlink -f "$DriverPath/$SpiDevice"
adb -s $Serial shell su 0 ls -lZ /dev/zte_ir
adb -s $Serial exec-out su 0 dmesg > (Join-Path $Evidence 'dmesg-after-rollback.txt')
```

## 11. Rollback de emergência

Se o ADB continuar disponível, execute na ordem:

```powershell
# Execute o unbind somente se o link existir.
adb -s $Serial shell su 0 test -e "$DriverPath/$SpiDevice"
if ($LASTEXITCODE -eq 0) {
    Set-RemoteSysfs -Value $SpiDevice -Path "$DriverPath/unbind"
}

# Remova o reconstruído somente se estiver listado.
$EmergencyModules = adb -s $Serial shell su 0 cat /proc/modules
if ($EmergencyModules -match '^zte_ir_reconstructed\s') {
    adb -s $Serial shell su 0 rmmod zte_ir_reconstructed
}

# Reinsira o stock somente se ele não estiver listado.
$EmergencyModules = adb -s $Serial shell su 0 cat /proc/modules
if ($EmergencyModules -notmatch '^zte_ir\s') {
    adb -s $Serial shell su 0 insmod $RemoteStockKo
}

adb -s $Serial shell su 0 test -e "$DriverPath/$SpiDevice"
if ($LASTEXITCODE -ne 0) {
    Set-RemoteSysfs -Value $SpiDevice -Path "$DriverPath/bind"
}
```

Se o ADB cair, a interface congelar ou ocorrer reboot espontâneo:

1. Não execute comandos adicionais às cegas.
2. Aguarde a reinicialização normal.
3. Como nenhuma partição foi alterada, o boot deve carregar novamente o módulo stock.
4. Depois do ADB voltar, capture `/sys/fs/pstore` antes de novos testes:

```powershell
adb -s $Serial shell su 0 ls -la /sys/fs/pstore
adb -s $Serial pull /sys/fs/pstore (Join-Path $Evidence 'pstore')
adb -s $Serial exec-out su 0 dmesg > (Join-Path $Evidence 'dmesg-after-reboot.txt')
```

Se o sistema não iniciar normalmente, use o bootloader apenas para iniciar uma
imagem de kernel já conhecida. Não altere vbmeta ou partições para tentar
resolver um erro de módulo carregado somente em RAM.

## 12. Diagnóstico por mensagem de erro

| Erro | Interpretação | Ação segura |
|---|---|---|
| `Device or resource busy` no rmmod | Há referência/arquivo aberto | Feche o consumidor, confirme refcount zero e tente novamente; nunca force |
| `File exists`/driver já registrado | O stock ou o novo ainda registrou `zte_ir` | Verifique `/proc/modules`, faça unbind/rmmod correto e não insira uma segunda cópia |
| `Invalid module format` | Vermagic, arquitetura ou MODVERSIONS incompatível | Capture dmesg, pare e use o módulo stock |
| `disagrees about version of symbol` | CRC de símbolo/KMI diferente | Não use esse `.ko` nesse kernel |
| `Required key not available` | Assinatura obrigatória | Não desative a política; restaure/reinicie |
| `Operation not permitted` | SELinux, assinatura ou política de módulos | Capture avc/dmesg; não use `setenforce 0` |
| `No such device` no bind | Nome SPI/OF diferente ou dispositivo removido | Não escreva em `devices/.../remove`; restaure o stock ou reinicie |
| CFI failure/KASAN/Oops | Violação de ABI ou memória | Rollback/reboot imediato e coleta de pstore |
| `/dev/zte_ir` não aparece | Probe, class/device_create ou uevent falhou | Verifique dmesg; não faça smoke test; rollback |

## 13. Critérios de aprovação

Considere a sessão aprovada somente quando todos forem verdadeiros:

- Pré-validação completa sem divergências.
- Unbind e unload stock sem `-f` e com refcount zero.
- `insmod` reconstruído retorna zero.
- `zte_ir_reconstructed` aparece `Live`.
- `spi15.0` está ligado ao driver `zte_ir`.
- `/dev/zte_ir` reaparece com SELinux correto.
- 60 segundos sem alerta de kernel ou perda de ADB.
- Smoke test open/ioctl/close retorna sucesso, caso executado.
- Rollback restaura `zte_ir`, remove `zte_ir_reconstructed` e religa `spi15.0`.
- Evidências antes, durante e depois foram preservadas.

O primeiro teste deve sempre terminar em rollback. Persistência em boot,
substituição no `vendor_dlkm` ou empacotamento em imagem são etapas separadas e
não fazem parte deste runbook.
