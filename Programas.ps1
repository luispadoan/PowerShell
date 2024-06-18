# DEFINE OS CAMINHOS DOS SCRIPTS

$anydesk = "C:\Users\Luis-TI\Desktop\LUIS\Repositorios\Install_Anydesk.ps1"
$arremate = "C:\Users\Luis-TI\Desktop\LUIS\Repositorios\arremate.ps1"
$krolikPath= "C:\Users\Luis-TI\Desktop\LUIS\Repositorios\Executaveis\Krolik.exe"

# FUNÇÃO PARA EXIBIR O MENU

function Show-Menu {

    Clear-Host
    Write-Host "============================="
    Write-Host "          PROGRAMAS          "
    Write-Host "============================="
    Write-Host "1 - Anydesk"
    Write-Host "2 - Arremate"
    Write-Host "3 - Krolik"
    Write-Host "4 - Sair"
    Write-Host "============================="
}

#FUNÇÃO PARA EXECUTAR UM SCRIPT

while ($true) {
    Clear-Host
    Show-Menu

    # LER A OPÇÃO SELECIONADA PELO USUÁRIO
    $opcao = Read-Host "Opção"

    switch ($opcao) {
        1 { 
            .\Install_Anydesk.ps1
            break
         }
        2 { 
            .\arremate.ps1
            break
         }
        3 { 
            Start-Process -FilePath $krolikPath -ArgumentList "/S" -Wait
            break
         }
        4 { 
            Write-Host "Saindo ..."
            return 
            break
         }

        Default {
            Write-Host "Opção inválida"
            Start-Sleep -Seconds 2    

        }
    }
    
}
