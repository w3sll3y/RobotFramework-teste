***Settings***
Resource  ../page-objects/get_channel.robot
Suite Setup  Abrir o navegador
Suite Teardown  Fechar navegador

***Test Cases***
Fazer busca do canal
    Fechar modal de boas vindas ao site
    Clicar no menu de Programação
    Clicar no botão LISTA CANAIS
    Digitar "BANDSPORTS HD" na pesquisa por canais
    Verificar se canal pesquisado é o igual ao que apareceu