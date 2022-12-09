Documentation    Representacao do padrao Page Object para Robot Framework

*** Variables ***
#Tela Minha Área
${URL_BASE}
#${URL_AREA}    http://webcnp01.homologacao.sefa.parana:8893/portalsgt_SIT/faces/minhaArea

#Autenticador
${LGN_USUARIO}         //*[@id="userId"]
${USR_LOGIN}           CONSULTA01
${LGN_PASSWORD}        //*[@id="password"]
${USR_PASSWORD}        CON2017

#Botao Acesso
${BTN_ACCESS}          //*[@id="loginButton"]

#Home Page
${PAGINA_PRINCIPAL}    //*[@id="IM_USER_HOME"]