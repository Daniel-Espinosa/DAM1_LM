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
return concat($x/nombre," ", $x/apellidos),

("9.	Obtén los datos del segundo profesor"),
for $x in doc("Listado")//profesor[2]
return $x,

("10.	Saca los datos del último profesor. "),
for $x in doc("Listado")//profesor[last()]
return $x,

("11.	Obtén todos los datos de los dos primeros profesores. "),
let $x := //profesor
return $x[position() <3],

("12.	Muestra el número de horas que tiene asignada la asignatura de Biología. "),
for $x in doc("Listado") //asignatura
where $x/nombre = "Biologia"
return data($x/num_horas),

("13.	Calcula la media de horas de todas las asignaturas."),
let $x := sum(//asignatura/num_horas)
let $y := count(//asignatura)
return $x div $y,

("14.	Muestra el nombre, sin etiquetas, de todos los tutores."),
for $x in doc("Listado") //profesor
where $x/tutor
return data($x/nombre),

("15.	Saca el nombre de todas las asignaturas que imparte el profesor Antonio."),
for $x in doc("Listado")//asignatura
let $y := //profesor[nombre="Antonio"]/@id
where $x/@prof = $y
return data($x/nombre),

("16.	Muestra el nombre de las asignaturas que tengan más de 3 horas de docencia. "),
for $x in doc("Listado")//asignatura
where $x/num_horas >3
return data($x/nombre),

("17.	Obtén el nivel y el grupo de los cursos en los que se da alguna asignatura, sin repeticiones."),
for $x in doc("Listado")//curso
where distinct-values($x/@id = //asignatura/@curso)
return concat($x/nivel, " " , $x/grupo),

("18.	Muestra el nombre y los apellidos de todos los profesores, sin las etiquetas y separando el nombre de los apellidos con un espacio. "),
for $x in doc("Listado")//profesor
return concat($x/nombre," ",$x/apellidos),

("19.	Calcula el número total de asignaturas que hay en el documento."),
let $x := count(//asignatura)
return $x,

("20.	Indica cuantos caracteres tiene el nombre de la segunda asignatura. "),
let $x := string-length(//asignatura[2]/nombre)
return $x,

("21.	Calcula la media de alumnos que hay en 4º de la ESO."),
let $x := avg(//curso[nivel="4º ESO"]/alumnos)
return $x,

("22.	Obtén el nombre de la asignatura que imparte la profesora Cristina en 4º de la ESO grupo A."),
for $x in doc("Listado")//asignatura
where $x/@prof = //profesor[nombre="Cristina"]/@id and $x/@curso = //curso[nivel="4º ESO" and grupo="A"]/@id
return data($x/nombre),

("23.	Muestra el nombre de todos los profesores en mayúsculas"),
for $x in doc("Listado")//profesor
return upper-case(data($x/nombre)),

("24.	Calcula el número total de alumnos que están cursando bachillerato. "),
let $x := sum(//curso[contains(nivel,"BACHILLER")]/alumnos)
return  $x,

("25.	Obtén el nivel del curso en el que se da música. "),
for $x in doc("Listado")//curso
where $x/@id = //asignatura[nombre="Musica"]/@curso
return data($x/nivel)