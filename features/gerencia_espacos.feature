Feature: rotinas adminitrativas do "Lab1"
    As Administrador do sistema de reservas
    I Want to Editar informações do espaço, excluir o espaço, aprovar ou rejeitar as solicitações de reserva, visualizar o histórico de reservas, fazer reservas, gerenciar os equipamentos do espaço, saber quem tinha ou terá reservas em um periodo específico e analisar as avaliações
    so that manter a ordem e o bom uso do espaço e seus equipamentos

    Scenario: Administrador Edita informações de identificação do "Lab1", nome e tipo
        Given estou na página que exibe a agenda do "Lab1"
        And vejo o botão "Editar"
        When eu clico no botão "Editar"
        Then sou direcionado para outra página de edição da identificação do "Lab1"

    Scenario: Administrador deseja excluir o "Lab1"
        Given estou na página que exibe a agenda do "Lab1"
        And vejo o botão "Excluir"
        When clico no botão "Excluir"
        Then sou direcionado para um outra tela que me perguntará se desejo realmente excluir o "Lab1"
        And dá a confirmação da ação
