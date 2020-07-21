# language: es

Característica: Dar de alta contenedor.
  Para agregar un contenedor al sistema
  Como administrador 
  Quiero cargar datos del contenedor y guardarlo.

  Escenario: Contenedor nuevo - dataTable
    Dado que el administrador quiere crear un contenedor con los siguientes datos
      | Id | Internal Number | Departure Date | Arrival Date | Airline | Total Weight | Total Boxes |
      | r1 | 2019011		     | 2019-12-15	    | 2019-12-17   | Copa	   | 350		      | 23          |
      | r2 | 2019012		     | 2020-02-13	    | 2020-02-14   | Copa	   | 235		      | 25          |
    
    Cuando el Administrador ingresa los campos requeridos: 
      | Nombre          |
      | Internal Number |
      | Departure Date  |
      | Arrival Date    |
    Entonces el contenedor se carga de forma exitosa

# Scenario Outline - https://cucumber.netlify.app/docs/gherkin/reference/
  Esquema del escenario: Contenedor nuevo [Scenario Outline or Template]
    Dado que el administrador quiere crear un contenedor con los siguientes datos
      |  Id  |  Internal Number  |  Departure Date  |  Arrival Date  |  Airline  |  Total Weight  |  Total Boxes  |
      | <Id> | <Internal Number> | <Departure Date> | <Arrival Date> | <Airline> | <Total Weight> | <Total Boxes> |
    
    Cuando el Administrador carga ingresa los campos requeridos: 
      | Nombre          |
      | Internal Number |
      | Departure Date  |
      | Arrival Date    |
    Entonces el contenedor se carga de forma exitosa

  Ejemplos:
    | Id | Internal Number | Departure Date | Arrival Date | Airline | Total Weight | Total Boxes |
    | r1 | 2019011		     | 2019-12-15	    | 2019-12-17   | Copa	   | 350		      | 23          |
    | r2 | 2019012		     | 2020-02-13	    | 2020-02-14   | Copa	   | 235		      | 25          |
