# SCRIPT PARA INSTALAÇÃO DO ARREMATE

# DEFINE A URL DO INSTALADOR DO ANYDESK
$arremateUrl = "https://storage.googleapis.com/arremate/stable/ArremateInstalador.exe"


# DEFINE O CAMINHO PARA SALVAR O INSTALADOR DO ARREMATE
$installerPath = "$env:TEMP\ArremateInstalador.exe"

# DOWNLOAD DO ANYDESK
Write-Host "Baixando o Arremate..."
Invoke-WebRequest -Uri $arremateUrl -OutFile $installerPath

# EXECUTANDO O INSTALADOR EM MODO SILENCIOSO
Write-Host "Instalando o Arremate..."
Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait

Write-Host "Arremate Instalado com Sucesso!!!"

