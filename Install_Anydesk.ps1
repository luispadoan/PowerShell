# SCRIPT PARA INSTALAÇÃO DO ANYDESK

# DEFINE A URL DO INSTALADOR DO ANYDESK
$anydeskUrl = "https://download.anydesk.com/AnyDesk.exe"


# DEFINE O CAMINHO PARA SALVAR O INSTALADOR DO ANYDESK
$installerPath = "$env:TEMP\AnyDesk.exe"

# DOWNLOAD DO ANYDESK
Write-Host "Baixando o Anydesk..."
Invoke-WebRequest -Uri $anydeskUrl -OutFile $installerPath

# EXECUTANDO O INSTALADOR EM MODO SILENCIOSO
Write-Host "Instalando o Anydesk..."
Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait

Write-Host "Anydesk Instalado com Sucesso!!!"

