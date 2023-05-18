("Obtener todos los datos de los perros de raza Fox Terrier"),
(:Obtener todos los datos de los perros de raza Fox Terrier:)
for $x in doc("Protectora")//perro
where $x/raza = "Fox Terrier"
return $x,

("Obtener el nombre de los perros de 10Kg de peso o más"),
(:Obtener el nombre de los perros de 10Kg de peso o más:)
for $x in doc("Protectora")//perro
where $x/peso >= 10
return data ($x/nombre),

("Obtener la raza de los perros que pesan entre 3 y 15 Kg de peso, ordenados por razas"),
for $x in doc("Protectora")//perro
where $x/peso >=3 and $x/peso <=15
order by $x/raza
return data($x/raza)
