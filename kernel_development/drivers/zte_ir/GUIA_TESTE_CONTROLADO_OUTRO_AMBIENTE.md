# Teste controlado do `zte_ir` em outro ambiente

Este runbook valida temporariamente, em RAM, o candidato `zte_ir.ko` no NX809J
userdebug. Ele não grava partições, não usa fastboot, não altera AVB/vbmeta e
exige rollback preparado antes de descarregar o módulo stock.

Não existe teste de kernel sem risco. Pare ao primeiro resultado inesperado.
Nunca use `rmmod -f`, `insmod -f`, `setenforce 0` ou comandos de flash.

## 1. Artefatos autorizados

```text
Candidato: curated/zte_ir/zte_ir.ko
SHA-256: 1a1d1362729f91510ec7dca7ffb1c4865105abef8c3ded90f7c8b00a6d8d4ffc
Tamanho: 238584 bytes
Módulo Linux: zte_ir

Stock: /vendor_dlkm/lib/modules/zte_ir.ko
SHA-256: b7a70d47bbdad67e184f968808b2c448172fc1ff16bb22e80b9beaa08d9641a1
Módulo Linux: zte_ir

Kernel: 6.12.23-android16-5-gf1bdb13583da-ab13761046-4k
```

Stock e candidato usam o mesmo nome de módulo. Portanto, nunca tente carregar
os dois ao mesmo tempo e não use apenas `lsmod` para distinguir qual está ativo.

## 2. Pré-condições

- ROM userdebug, `ro.debuggable=1` e `su 0` funcionais.
- Bateria acima de 50%, cabo confiável e somente um aparelho no ADB.
- Nenhum aplicativo usando IR.
- Arquivo stock legível antes do unbind.
- Janela de manutenção e reinicialização física disponíveis.
- Logs e diretório de evidência preparados no computador.

## 3. Variáveis e validação local

```powershell
$ErrorActionPreference = 'Stop'
$Serial = 'SERIAL_ADB_DO_APARELHO'
$NewKo = 'C:\caminho\para\curated\zte_ir\zte_ir.ko'
$ExpectedNewSha = '1a1d1362729f91510ec7dca7ffb1c4865105abef8c3ded90f7c8b00a6d8d4ffc'
$ExpectedStockSha = 'b7a70d47bbdad67e184f968808b2c448172fc1ff16bb22e80b9beaa08d9641a1'
$RemoteNewKo = '/data/local/tmp/zte_ir_candidate.ko'
$RemoteStockKo = '/data/local/tmp/zte_ir_stock.ko'
$Evidence = Join-Path $PWD ('zte_ir-test-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
New-Item -ItemType Directory -Path $Evidence | Out-Null

if ((Get-FileHash $NewKo -Algorithm SHA256).Hash.ToLower() -ne $ExpectedNewSha) {
    throw 'SHA-256 do candidato incorreto'
}
adb devices -l | Tee-Object (Join-Path $Evidence 'adb-devices.txt')
adb -s $Serial get-state
```

Pare se o serial não for exatamente o aparelho planejado.

## 4. Captura e preparação do rollback

```powershell
adb -s $Serial shell su 0 sh -c 'cat /vendor_dlkm/lib/modules/zte_ir.ko > /data/local/tmp/zte_ir_stock.ko'
adb -s $Serial pull $RemoteStockKo (Join-Path $Evidence 'zte_ir_stock.ko')
$StockLocal = Join-Path $Evidence 'zte_ir_stock.ko'
if ((Get-FileHash $StockLocal -Algorithm SHA256).Hash.ToLower() -ne $ExpectedStockSha) {
    throw 'O módulo stock não corresponde ao alvo aprovado'
}

adb -s $Serial push $NewKo $RemoteNewKo
adb -s $Serial shell su 0 sha256sum $RemoteNewKo | Tee-Object (Join-Path $Evidence 'candidate-device-sha.txt')
adb -s $Serial shell su 0 uname -a | Tee-Object (Join-Path $Evidence 'uname-before.txt')
adb -s $Serial shell su 0 cat /proc/modules | Tee-Object (Join-Path $Evidence 'modules-before.txt')
adb -s $Serial shell su 0 dmesg | Tee-Object (Join-Path $Evidence 'dmesg-before.txt')
adb -s $Serial shell su 0 readlink /sys/bus/spi/devices/spi15.0/driver | Tee-Object (Join-Path $Evidence 'binding-before.txt')
```

Confirme antes de continuar:

- o SHA stock está correto;
- o SHA do candidato no aparelho está correto;
- `/sys/bus/spi/devices/spi15.0` existe;
- o driver atual é `zte_ir`;
- nenhuma aplicação mantém `/dev/zte_ir` aberto.

Uma checagem conservadora de uso:

```powershell
adb -s $Serial shell su 0 sh -c 'command -v lsof >/dev/null && lsof /dev/zte_ir || true'
```

Se houver processo usando o nó, encerre o teste sem descarregar o módulo.

## 5. Unbind e troca temporária

Execute um comando por vez e confira o retorno:

```powershell
adb -s $Serial shell su 0 sh -c 'echo spi15.0 > /sys/bus/spi/drivers/zte_ir/unbind'
adb -s $Serial shell su 0 test ! -e /sys/bus/spi/devices/spi15.0/driver
adb -s $Serial shell su 0 rmmod zte_ir
adb -s $Serial shell su 0 sh -c '! grep -q "^zte_ir " /proc/modules'
adb -s $Serial shell su 0 insmod $RemoteNewKo
adb -s $Serial shell su 0 sh -c 'grep "^zte_ir " /proc/modules'
adb -s $Serial shell su 0 sh -c 'echo spi15.0 > /sys/bus/spi/drivers/zte_ir/bind'
adb -s $Serial shell su 0 readlink /sys/bus/spi/devices/spi15.0/driver
```

O bind deve terminar em `/sys/bus/spi/drivers/zte_ir`. Se qualquer etapa falhar,
execute o rollback imediatamente.

## 6. Validação sem transmissão destrutiva

```powershell
adb -s $Serial shell su 0 cat /proc/modules | Tee-Object (Join-Path $Evidence 'modules-candidate.txt')
adb -s $Serial shell su 0 ls -l /dev/zte_ir | Tee-Object (Join-Path $Evidence 'node-candidate.txt')
adb -s $Serial shell su 0 dmesg | Tee-Object (Join-Path $Evidence 'dmesg-candidate.txt')
adb -s $Serial shell su 0 sh -c 'dmesg | tail -n 300 | grep -Ei "zte_ir|spi|BUG:|panic|KASAN|CFI|Oops"'
```

Critérios mínimos:

- módulo `zte_ir` em estado `Live`;
- `spi15.0` ligado ao driver correto;
- `/dev/zte_ir` criado com permissões esperadas;
- ausência de `BUG`, `Oops`, KASAN, CFI e kernel panic;
- mensagem exclusiva do candidato: `module loaded successfully`.

O teste elétrico de transmissão deve usar uma sequência IR conhecida, receptor
externo e limite de tempo. Registre bytes enviados, retorno do `write`, carrier,
captura do receptor e dmesg. Não invente um payload em hardware não documentado.

## 7. Rollback obrigatório

O rollback é executado mesmo quando o candidato parece funcionar:

```powershell
adb -s $Serial shell su 0 sh -c 'test ! -e /sys/bus/spi/devices/spi15.0/driver || echo spi15.0 > /sys/bus/spi/drivers/zte_ir/unbind'
adb -s $Serial shell su 0 rmmod zte_ir
adb -s $Serial shell su 0 insmod $RemoteStockKo
adb -s $Serial shell su 0 sh -c 'echo spi15.0 > /sys/bus/spi/drivers/zte_ir/bind'
adb -s $Serial shell su 0 readlink /sys/bus/spi/devices/spi15.0/driver
adb -s $Serial shell su 0 sh -c 'grep "^zte_ir " /proc/modules'
adb -s $Serial shell su 0 dmesg | Tee-Object (Join-Path $Evidence 'dmesg-rollback.txt')
```

Se o `rmmod` responder `Module in use`, não force. Identifique o processo ou
binding restante, restaure o estado de uso normal e reinicie o aparelho de modo
controlado. Como nenhuma partição foi modificada, o reboot restaura o módulo
stock do `vendor_dlkm`.

## 8. Evidência necessária para fechar hardware

- SHA-256 local e remoto dos dois `.ko`.
- `uname -a`, `/proc/modules` e binding antes, durante e depois.
- dmesg completo nos três estados.
- resultado do nó `/dev/zte_ir`.
- resultado reproduzível da transmissão com receptor externo.
- rollback confirmado.
- revisão por pessoa diferente do implementador.

Somente após esses itens o gate de hardware pode mudar de `DEFERRED` para
`PASS`. Mesmo assim, “100% equivalente” exige uma definição de escopo e não
deve ser inferido apenas de um carregamento bem-sucedido.
