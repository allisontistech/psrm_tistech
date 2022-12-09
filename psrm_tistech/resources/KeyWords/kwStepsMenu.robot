*** Settings ***
Resource    ../base.robot
Resource    ../Page_Objects/homeScreen.robot
Resource    ../Page_Objects/formularioScreen.robot
Resource    ../Page_Objects/loginScreen.robot

Resource    kwStepsLogin.robot


*** Keywords ***
E acessa a area de formulario de cadastro
    Sleep                            25
    Click Element                    ${BTN_MENU}
    Click Button                     ${BTN_FORMULARIOS}
    Click Button                     ${BTN_FORMULARIOS_DE_CADASTRO}
    Click Button                     ${BTN_ADICIONAR}
    Wait Until Element Is Visible    ${BTN_VERIFICAR}                      timeout=60            error=None

Quando pesquisa um cadastro
    Sleep                            25
    Click Element    ${NOME_COMPLETO} 
    Input Text       ${NOME_COMPLETO}    JOAO DA SILVA
    Input Text       ${PRIMEIRO_NOME}    JOAO
    Input Text       ${ULTIMO_NOME}      SILVA
    Click Element    ${BTN_PESQUISAR}

