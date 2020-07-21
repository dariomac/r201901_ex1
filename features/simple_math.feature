# language: es

Característica: Simple maths
  In order to do maths
  As a developer
  I want to increment variables

  Escenario: easy maths
    Dado a variable set to 1
    Cuando I increment the variable by 1
    Entonces the variable should contain 2

  Esquema del escenario: much more complex stuff
    Dado a variable set to <var>
    Cuando I increment the variable by <increment>
    Entonces the variable should contain <result>

    Ejemplos:
      | var | increment | result |
      | 100 |         5 |    105 |
      |  99 |      1234 |   1333 |
      |  12 |         5 |     17 |
