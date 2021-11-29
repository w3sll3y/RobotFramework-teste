***Settings***
Library  SeleniumLibrary

***Variables***
${URL}  https://sky.com.br
${BROWSER}  chrome
${CHANNEL}  BANDSPORTS HD
${KEY}  ESC
${BUTTON_PROGRAMMATION}  partial link:Programação
${BUTTON_CHANNELS}  partial link:LISTA CANAIS
${INPUT_SEARCH_CHANNEL}  id=searchChannel
${SLEEP}  2s

    
***Keywords***
Abrir o navegador
    Open Browser  ${URL}  ${BROWSER}

Maximizar aba do navegador
    Maximize Browser Window

Apertar ESC para sair o modal
    Press Keys    None    ${KEY}

Clicar no menu de Programação
    Click Link  ${BUTTON_PROGRAMMATION}

Clicar no botão LISTA CANAIS 
    Click Element  ${BUTTON_CHANNELS} 

Digitar nome do canal
    Input Text  ${INPUT_SEARCH_CHANNEL}  ${CHANNEL}

Aguardar
    Sleep   ${SLEEP}

Verificar se canal pesquisado é o igual ao que apareceu
    ${VERIFY}=  Get Text  xpath=//p[text()='${CHANNEL}']
    Should Be Equal  ${VERIFY}  ${CHANNEL}  msg=O teste falhou!

Fechar navegador
    Close Browser