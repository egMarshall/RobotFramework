*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Abrir navegador e acessar o site do Organo
    Open Browser  url=http://www.localhost:3000  browser=chrome
    Maximize Browser Window
