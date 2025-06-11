Feature: Gerenciar equipamentos do "Lab1"
    As a Adiministrador do sistema de reservas
    I want to inserir, remover, alterar e visualizar as informações de equipamentos dispostos em um ambiente
    so that ter o gerenciamento de equipamentos para seus devidos usos

    Scenario: Administrador Tenta inserir equipamentos sem os campos serem preenchidos
        Given eu estou na página de gerenciamento de equipamentos
        And sem os campos "Fabricante", "Modelo", "Quantidade" e "Descrição" de equipamentos preenchidos
        When eu clico no botão "Inserir"
        Then uma seguinte mensagem é exíbida "Preencha todos os campos para fazer a inserção de um equipamento".

    Scenario: Adiministrador inserindo um equipamento no ambiente
        Given eu estou na página de gerenciamento de equipamentos
        And o campo "Fabricante" está com o valor "Epson"
        And o campo "Modelo" está com o valor "T3000"
        And o campo "Quantidade" está com o valor "1"
        And o campo "Descrição" está com o valor "Impressora lazer"
        When Clico o botão "Inserir"
        Then Então o equipamento aparece na listagem de equipamentos contidos no espaço
        And uma caixa de seleção é ativada na primeira coluna a frente das informações
        Then A coisa explode de vez
        And foi isso ai

    Scenario: clicando no botão "Excluir" sem selecionar nenhum equipamento
        Given eu estou na página de gerenciamento de equipamentos
        And sem selecionar nenhuma caixa de seleção ao lado de um equipamento da lista
        When eu tento clicar no botão "Excluir"
        Then o botão de excluir se encontra desabilitado
        And uma mensagem próxima ao ponteiro do mouse é exibida "Você deve selecionar um item da lista"

    Scenario: Administrador constata que há reservas que devem ser rejeitadas
        Given estou na página que exibe a agenda do "Lab1"
        And que há uma reserva que não deverá ser efetuada
        When clico no botão "Rejeitar"
        Then uma tela de confirmação é apresentada com as opções de confirmar ou cancelar
        And se confirmada a solicitação de reserva sai da lista
        And se cancelada o foco apenas volta para a página que esta a lista de solicitações
        And essa é a solicitação de mudança que querem que eu adicione para o roteiro 2 na branch fix
