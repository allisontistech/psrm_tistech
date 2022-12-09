*** Settings ***
Resource    ../base.robot
Resource    ../Page_Objects/loginScreen.robot


*** Keywords ***
#----LoginV1----#
Dado que o usario esteja logado
    #Acesso Login
    Go To    ${BASE_URL_POLARIS}

    #Informando dados de usuario
    Wait Until Element Is Visible    ${LGN_USUARIO}        timeout=60        error=None
    Click Element                    ${LGN_USUARIO}        modifier=False
    Input Text                       ${LGN_USUARIO}        ${USR_LOGIN}

    #Informando dados de senha
    Wait Until Element Is Visible    ${LGN_PASSWORD}       timeout=60        error=None
    Click Element                    ${LGN_PASSWORD}       modifier=False
    Input Text                       ${LGN_PASSWORD}       ${USR_PASSWORD}   test123

    #Clicar em Acessar
    Wait Until Element Is Visible    ${BTN_ACCESS}         timeout=60        error=None
    Click Button                     ${BTN_ACCESS}

    #Validade Login
#    Page Should Contain              ${PAGINA_PRINCIPAL}   timeout=600
