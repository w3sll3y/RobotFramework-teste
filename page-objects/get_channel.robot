***Settings***
Library  SeleniumLibrary
Library  String

***Variables***
${URL}  https://sky.com.br
${BROWSER}  chrome
${KEY}  ESC
${BUTTON_PROGRAMMATION}  partial link:Programação
${BUTTON_CHANNELS}  partial link:LISTA CANAIS
${INPUT_SEARCH_CHANNEL}  id=searchChannel
${SLEEP}  2s

***Keywords***
Abrir o navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Fechar modal de boas vindas ao site
    Press Keys    None    ${KEY}

Clicar no menu de Programação
    Click Link  ${BUTTON_PROGRAMMATION}

Clicar no botão LISTA CANAIS 
    Click Element  ${BUTTON_CHANNELS} 

Digitar "${CHANNEL}" na pesquisa por canais
    Input Text  ${INPUT_SEARCH_CHANNEL}  ${CHANNEL}
    Sleep   ${SLEEP}
    Set Global Variable   ${CHANNEL} 

Verificar se canal pesquisado é o igual ao que apareceu
    ${stri2}=  Convert To Upper Case  ${CHANNEL}
    ${VERIFY}=  Get Text  xpath=//p[text()='${stri2}']
    Should Contain  ${stri2}  ${VERIFY}  msg=O teste falhou!

Fechar navegador
    Close Browser