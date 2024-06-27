Write-Host "**********************************************************************************************************************"
Write-Host "*****************************************                      *******************************************************"
Write-Host "*****************************************   Install Programs   *******************************************************"
Write-Host "*****************************************                      *******************************************************"
Write-Host "**********************************************************************************************************************"
Write-Host "************************************                                  ************************************************"
Write-Host "************************************   Desenvolvido por Luis Padoan   ************************************************"
Write-Host "************************************                                  ************************************************"
Write-Host "**********************************************************************************************************************"

#DECLARAÇÃO DA VARIÁVEL PARA OS PROGRAMAS QUE SERÃO INSTALADOS
$programas = @(
    "7-Zip",
    "K-Lite Codec Pack Full",
    "Anydesk",
    "Java 8",
    "Adobe Acrobat Reader DC",
    "Google Chrome",
    ""

)

#FUNÇÃO PARA INSTALAR OS PROGRAMAS COM O WINGET
foreach ($programa in $programas){
    winget install $programa --silent --accept-package-agreements --accept-source-agreements | Out-Null
    Write-Host "Instalado $programa com Sucesso ..."
}

Write-Host "******************************************************************************************************************"

#FECHAR A TELA APÓS PRESSIONAR ALGUMA TECLA
Write-Host "Pressione qualquer tecla para fechar..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")







