("EJ1"),
//ies/nombre,
("EJ2"),
//ies/web,
("EJ3"),
//ies/ciclos/ciclo/nombre/text(),
("EJ4"),
//ies/ciclos/ciclo/@id,
("EJ5"),
//ies/ciclos/ciclo/decretoTitulo/@año,
("EJ6"),
//ies/ciclos/ciclo[grado ="Medio"],
("EJ7"),
//ies/ciclos/ciclo[grado = "Superior"]/nombre,
("EJ8"),
//ies/ciclos/ciclo/decretoTitulo[@año <2010]/../nombre/text(),
("EJ9"),
//ies/ciclos/ciclo/decretoTitulo[@año = 2010 or @año = 2008]/../nombre/text(),
("EJ9 Otra manera de hacerlo"),
//@año[.=2010 or .=2008]/..//../nombre/text()