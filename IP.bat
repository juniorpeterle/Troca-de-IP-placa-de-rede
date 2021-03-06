@echo off
cls
:menu
cls
color 0

date /t

echo Computador: %computername%        Usuario: %username%
                   
echo                   MENU TAREFAS
echo  =============================================
echo * 1. Colocar fixo IP placa de rede             * 
echo * 2. Colocar automatico o IP da placa de rede  *
echo * 3.                                           *
echo * 4.                                           *
echo * 5. Sair                                      * 
echo  =============================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
cls
echo Voce esta prestes a colocar seu IP da placa de rede (Ethernet) como fixo
set /p ip= Digite o IP desejado:
set /p mask= Digite a mascara da rede:
set /p gateway= Digite o gateway padrao:
netsh interface ip set address name="Ethernet" source=static addr=%ip% mask=%mask% gateway=%gateway%
echo ================================================
echo *      Seu endereco de IP foi alterado          *
echo ================================================
pause
goto menu

:opcao2
cls
ipconfig /release Ethernet
netsh interface ip set address name="Ethernet" source=dhcp
echo =====================================================================
echo *      Voce colocou o IP da sua placa de rede em automatico          *
echo =====================================================================
pause
goto menu

:opcao3
cls
echo ==================================
echo *     nao tem nada aqui       *
echo ==================================
pause
goto menu

:opcao4
cls
echo ==================================
echo *     nao tem nada aqui       *
echo ==================================
pause
goto menu

:opcao5
cls
exit

:opcao6
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu