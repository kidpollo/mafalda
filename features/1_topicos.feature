# language: es
Característica: Topicos
  Para ver una lista potencial de topicos
  Los usuario deben poder crear y editar los mismos

  Escenario: Nuevo Topico
    Cuando visito topicos
    Y hago click en "New Topico"
    Entonces debo ver el botón "Create"

  Escenario: Creando un topico
    Cuando visito topicos
    Y hago click en "New Topico"
    Cuando completo el campo "Titulo" con "Rails Fixtures"
    Y completo el campo "Descripcion" con "Rails es genial"
    Y oprimo "Create"
    Entonces debo ver "Rails Fixtures"
    Y debo estar en inicio

