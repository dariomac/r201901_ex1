# language: es

Característica: us1-b. Carga de formulario epidemiológio
 Para cargar registros de personas que tienen NEXO
 Como usuario buchoneado
 Quiero contestar un formulario epidemiológico
 
  Escenario: 
    Dado que recibí la notificación de solicitud de carga
    Cuando NO EXISTE registro previo de la persona
    Entonces entra con cat. salida NEXO/SIN SÍNTOMAS 
      o NEXO/CON SÍNTOMAS y cat. entrada "Sin categoría", en el estado CONTACTAR.

  Escenario: 
    Dado que recibí la notificación de solicitud de carga
    Cuando NO EXISTE registro previo de la persona y no está identificado el prestador
    Entonces va directo a bandeja reasignar prestador MSP.

  Escenario: 
    Dado que recibí la notificación de solicitud de carga 
      y que EXISTE registro previo de la persona
    Cuando esta en listas DESESTIMADOS o AISLAMIENTO
    Entonces se mueve el registro a TAREAS PENDIENTES categoría CONTACTAR (en BDE)
      o SEGUIMIENTO (en BC) 
        y se actualiza la categoría de salida NEXO/CON 
          o SIN SÍNTOMAS
        y se mantiene la cat. entrada que ya tenía.

  Escenario: 
    Dado que recibí la notificación de solicitud de carga 
      y que EXISTE registro previo de la persona
    Cuando no esta en listas DESESTIMADOS o AISLAMIENTO
    Entonces permanece en el estado que estuviera
      y se actualiza la categoría de salida NEXO/CON 
        o SIN SÍNTOMAS
      y se mantiene la cat. entrada que ya tenía.
