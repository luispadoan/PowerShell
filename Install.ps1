Write-Host "******************************************************************************************************************"
Write-Host "***************************************** Install Programs *******************************************************"
Write-Host "******************************************************************************************************************"
Write-Host "************************************ Desenvolvido por Luis Padoan ************************************************"
Write-Host "******************************************************************************************************************"

$programas = @(
    "7-Zip",
    "K-Lite Codec Pack Full",
    "Anydesk",
    "Java 8",
    "Adobe Acrobat Reader DC",
    "Google Chrome",

)

foreach ($programa in $programas){
    winget install $programa --silent --accept-package-agreements --accept-source-agreements | Out-Null
    Write-Host "Instalado $programa com Sucesso ..."
}

Write-Host "******************************************************************************************************************"

$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")







