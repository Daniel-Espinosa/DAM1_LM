("1.	Obtén todos los elementos asignatura del documento. "),
for $x in doc("Listado")//asignatura
return $x,

("2.	Obtén todos los elementos nombre del documento. "),
for $x in doc ("Listado")//nombre
return $x,

("3.	Muestra los nombres de las asignaturas. "),
for $x in doc("Listado")//asignatura
return data($x/nombre),

("4.	Saca todos los elementos hijos de cada asignatura. "),
for $x in doc("Listado")//asignatura
return $x/*,

("5.	Obtén todos los atributos de cada asignatura."),
for $x in doc ("Listado")//asignatura
return $x/@*,

("6.	Muestra el id de todos los cursos."),
for $x in doc("Listado")//curso
return $x/@id,

("7.	Saca el nombre y los apellidos de cada profesor"),
for $x in doc("Listado")//profesor
return $x/*,


("8.	Muestra la misma información sin que aparezcan las etiquetas, solo deben salir los datos."),
for $x in doc("Listado")//profesor
return concat($x/nombre," ", $x/apellidos)

("9.	Obtén los datos del segundo profesor"),
for $x in doc("Listado")//profesor
where 
return $x

