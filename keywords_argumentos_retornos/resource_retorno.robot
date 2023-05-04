*** Settings ***
Documentation    Essa suit cria um e-mail a partir do nome e sobrenome do usuario
Library          FakerLibrary
Library          String

*** Variables ***


&{DADOS}    nome=Vinicius    sobre_nome=Brandão    email=@testerobot.com


*** Keywords ***
Criar um email
    ${criar}    email_gerado    ${DADOS.nome}    ${DADOS.sobre_nome}
    Log To Console    ${criar}
    

email_gerado 
    [Arguments]    ${NOME}    ${SOBRE}
    ${RESULTADO}    Log To Console    ${NOME}    ${SOBRE}
    ${PALAVRA}      Generate Random String
    ${PA}           FakerLibrary.Word

    [Return]    ${NOME}${SOBRE}${PA}${PALAVRA}${DADOS.email}

      

# junta a palvra e cria o e-mail
#     [Arguments]    ${NOME}    ${SOBRE}