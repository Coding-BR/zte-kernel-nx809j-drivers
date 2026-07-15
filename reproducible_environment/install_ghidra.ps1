param(
    [string]$Destination = (Join-Path $PSScriptRoot ".tools")
)

$ErrorActionPreference = "Stop"
$Lock = Get-Content -Raw -LiteralPath (Join-Path $PSScriptRoot "environment.lock.json") | ConvertFrom-Json
$Cache = Join-Path $PSScriptRoot ".cache"
$Archive = Join-Path $Cache $Lock.ghidra.asset
$Expected = $Lock.ghidra.sha256
$Install = Join-Path $Destination "ghidra_12.1.2_PUBLIC"

$javaText = (& java -version 2>&1 | Out-String)
if ($LASTEXITCODE -ne 0) { throw "Java 21 or newer is required by Ghidra 12.1.2." }
if ($javaText -notmatch 'version "(\d+)') { throw "Unable to determine the Java version." }
if ([int]$Matches[1] -lt 21) { throw "Java 21 or newer is required; found $($Matches[1])." }
if ([int]$Matches[1] -ne 26) {
    Write-Warning "Ghidra supports this Java version, but the recorded NX809J analysis runtime used Java 26 build 26+35-2893."
}

New-Item -ItemType Directory -Force -Path $Cache,$Destination | Out-Null
if (-not (Test-Path -LiteralPath $Archive) -or
    (Get-FileHash -LiteralPath $Archive -Algorithm SHA256).Hash.ToLower() -ne $Expected) {
    Invoke-WebRequest -Uri $Lock.ghidra.download_url -OutFile $Archive
}
if ((Get-FileHash -LiteralPath $Archive -Algorithm SHA256).Hash.ToLower() -ne $Expected) {
    throw "Ghidra archive SHA-256 mismatch."
}
if (-not (Test-Path -LiteralPath $Install)) {
    Expand-Archive -LiteralPath $Archive -DestinationPath $Destination
}
Write-Output $Install
