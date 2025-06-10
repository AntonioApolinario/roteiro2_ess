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
        And uma caixa de seleção é ativada na primeira coluna a frente das informações que foram inseridas referente ao equip
