***Settings***
Resource  ../page-objects/get_channel.robot

***Test Cases***
Fazer busca do canal
    Abrir o navegador
    Fechar modal de boas vindas ao site
    Clicar no menu de Programação
    Clicar no botão LISTA CANAIS
    Digitar nome do canal
    Verificar se canal pesquisado é o igual ao que apareceu
    Fechar navegador
