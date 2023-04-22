*** Settings ***
Library    SeleniumLibrary    timeout=10


*** Variables ***
${URL}                     https://www.amazon.com.br
${MENU_ELETRONICOS}       //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}    //h1[contains(.,'Eletrônicos e Tecnologia')]
${CAMPO_PESQUISA}        //input[contains(@type,'text')]
${BOTAO_PESQUISA}        //input[contains(@type,'submit')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=gc
    Maximize Browser Window
    
Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    ${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
    
Entrar no menu "Eletrônicos"
    Click Element    ${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//img[contains(@alt,'${NOME_CATEGORIA}')]


Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=${CAMPO_PESQUISA}    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Button    ${BOTAO_PESQUISA}

Verificar o resultado da pesquisa, se está listando o produto pesquisado
    Title Should Be   //title[contains(.,'Amazon.com.br : Xbox Series S')]
    