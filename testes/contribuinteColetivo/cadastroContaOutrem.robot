*** Settings ***
Documentation    Criar declaracao
...              Para que consiga cadastrar uma declaracao
...              Sendo um usuario logado
...              Quero concluir o envio de uma doacao plena

Resource    ../../resources/KeyWords/kwStepsLogin.robot
Resource    ../../resources/KeyWords/kwStepsMenu.robot
Resource    ../../resources/KeyWords/kwStepsFormulario.robot

Suite Setup       Abrir Navegador
Suite Teardown    Fechar Navegador


*** Test Cases ***
Acessar Formulario de Cadastro
    Dado que o usario esteja logado
    Quando pesquisa um cadastro
