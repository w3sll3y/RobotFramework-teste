***Settings***
Resource  ../page-objects/get_channel.robot

***Test Cases***
Fazer busca do canal
    Abrir o navegador
    Maximizar aba do navegador
    Apertar ESC para sair o modal
    Clicar no menu de Programação
    Clicar no botão LISTA CANAIS
    Digitar nome do canal
    Aguardar 
    Verificar se canal pesquisado é o igual ao que apareceu
    Fechar navegador
