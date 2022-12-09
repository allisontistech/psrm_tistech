*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variable ***
${BASE_URL_POLARIS}         https://10.129.105.62:6501/ouaf/loginPage.jsp
#${BASE_URL_ANTARES}


*** Keywords ***
Abrir Navegador
    Open Browser               about:blank    FireFox    #options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Set Window Size            1440           900
    Maximize Browser Window

Fechar Navegador
    Sleep            5
    Close Browser

End Test
    Capture Page Screenshot    #filename=ITCMD-screenshot-{index.png}

Scroll Page To Location
    [Arguments]           ${x_location}                                   ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})
