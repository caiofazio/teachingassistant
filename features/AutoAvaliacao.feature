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

Scenario: Auto-avaliação falhou por nota faltando
    Given: Estou logado no sistema como “Aluno” de login “João” e senha “1234”
    And: Estou na página “Notas”
    And: A auto avaliação ainda não foi feita
    When: Eu seleciono “MA” ou “MANA” ou “MPA” para 3 “Metas” e deixo 2 “Metas” em branco.
    And: Eu clico em “Aplicar”
    Then: Eu recebo uma mensagem de erro, pedindo para preencher todas as notas.
    And: Continuo na página “Notas”.
Scenario: Definir notas de auto-avaliação com nota faltando
    Given: O aluno “João” não se auto-avaliou
    When: O aluno atribui “MA” ou “MANA” ou “MPA” para apenas 2 das “Metas”.
    Then: O sistema não registra as notas atribuidas e envia mensagem de erro.
    When: O aluno atribui “MA” ou “MANA” ou “MPA” para metade das “Metas”.
    Then: O sistema não registra as notas atribuidas.
Scenario: Verificar notas sem discrepância
    Given: Estou logado no sistema como “Professor”, de login “Bruno” e senha “1234”
    When: Eu entro na página “Alunos”.
    Then: Eu consigo ver a lista dos “Alunos” com suas notas e auto-avaliações 
    And: Vejo que 5 “Alunos” se auto-avaliaram
    And: Na parte inferior vejo uma mensagem indicando que não há discrepância.
Scenario: Verificar notas com discrepância
    Given: Estou logado no sistema como “Professor”, de login “Bruno” e senha “1234”
    When: Eu entro na página “Alunos”.
    Then: Eu consigo ver a lista dos “Alunos” com suas notas e auto-avaliações. 
    And: Vejo que 3 “Alunos” se auto-avaliaram
    And: Na parte inferior vejo uma mensagem indicando há discrepância.
    And: Na lista consigo ver os “Alunos” que apresentaram discrepância com background em vermelho e a porcentagem dessa discrepância tambem em vermelho.
