# language: es

Característica: us2-a. Reporte de negativos con positivos previos
 Para facilitar el proceso de valoración clínica
 Como ACTOR
 Quiero ver los resultados de cada test junto a un indicador de test positivo previo

  Escenario:
    Dado que tengo un histórico de test
      | IdPaciente | Fecha    | Resultado |
      | p0001      | 20200304 | Positivo  |
      | p0006      | 20200401 | Negativo  |
      | p0003      | 20200415 | Positivo  |
    Cuando ciertos pacientes vuelven a realizarse el test
      | IdPaciente | Fecha    | Resultado |
      | p0001      | 20200304 | Negativo  |
      | p0006      | 20200401 | Negativo  |
      | p0008      | 20200501 | Negativo  |
    Entonces el actor visualizará
      | IdPaciente | Fecha    | Resultado | Positivo anterior |
      | p0001      | 20200304 | Negativo  | Si                |
      | p0006      | 20200401 | Negativo  | No                |
      | p0008      | 20200501 | Negativo  | No                |

  Escenario:
    Dado que me hice un test anteriormente y dió positivo
    Cuando me hago un nuevo test que da negativo
    Entonces el actor deberá visualizar el resultado negativo 
      y SI como valor de TEST POSITIVO ANTERIOR

  Escenario:
    Dado que me hice un test anteriormente y dió negativo o nunca me hice un test
      Cuando me hago un nuevo test y da negativo o positivo
      Entonces el actor deberá visualizar el resultado negativo o positivo
        y NO como valor de TEST POSITIVO ANTERIOR
