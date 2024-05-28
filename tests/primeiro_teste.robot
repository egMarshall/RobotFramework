*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Abrir navegador e acessar o site do Organo
    Open Browser  url=http://www.localhost:3000  browser=chrome
    Maximize Browser Window

Preencher os campos do formulário
    Input Text  locator=id:form-nome  text=Érico
    Input Text  locator=id:form-cargo  text=QA
    Input Text  locator=id:form-imagem  text=https://github.com/egmarshall.png
    Click Element  locator=class:lista-suspensa
    Click Element  //option[contains(.,'Programação')]
    Sleep  3s
    Click Button  locator=form-botao
    Element Should Be Visible  locator=class:colaborador
    Sleep    10s
