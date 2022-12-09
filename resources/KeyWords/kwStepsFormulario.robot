*** Settings ***
Resource    ../base.robot
Resource    ../Page_Objects/homeScreen.robot
Resource    ../Page_Objects/formularioScreen.robot
Resource    ../Page_Objects/loginScreen.robot

Resource    kwStepsLogin.robot


*** Keywords ***
E preenche com conta outrem
    Click Element                    ${CHECK_TRABALHADOR_CONTA_OUTREM}                     modifier=False

E pressiona o botao verificar
    Click Element                    ${BTN_VERIFICAR}                                      modifier=False

Entao valida que houve erros
    Page Should Contain              Enquadramento emimpostos: Grupo de IRT requerido       loglevel=TRACE
