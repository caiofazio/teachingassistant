Feature: Auto-avaliação
    As a: aluno de uma turma
    I want to: auto-avaliar minhas metas, atribuindo notas (MA, MPA, MANA) a todas as metas.
    So that: Eu posso ver as  notas atribuídas e as auto-avaliadas.


Scenario: Auto-avaliação feita com sucesso
    Given: Estou logado no sistema como “Aluno” de login “João” e senha “1234”
    And: Estou na página “Notas”
    And: A auto avaliação ainda não foi feita
    When: Eu seleciono “MA” ou “MANA” ou “MPA” para cada uma das metas.
    And: Clico em “Aplicar”
    Then: Eu recebo uma mensagem de confirmação
    And: Consigo ver as notas auto-avaliadas na página “Notas”
Scenario: Definir notas de auto-avaliação
    Given: O aluno “João” não se auto-avaliou
    When: O aluno atribui “MA” ou “MANA” ou “MPA” para todas as “Metas”.
    Then: As notas atribuídas a cada meta são registradas no sistema.

