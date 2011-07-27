# language: es
Característica: Topicos y Detalles
  Para entender mas sobre los topicos
  Los usuarios deben verlos en una lista con sus detalles

  Escenario: Visualizando un topico en detalle
    Cuando visito topicos
    Y hago click en "Rails Fixtures"
    Entonces debo ver "Rails Fixtures"
    Y no deberia ver "New Topico"

  Escenario: Eliminando un topico
    Cuando visito topicos
    Y hago click en "Delete"
    Entonces no debo ver "Rails Fixtures"
    Y deberia ver "New Topico"