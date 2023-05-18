("Nombre de los jugadores nacidos antes del 90"),

for $x in doc("futbol")//jugador
where $x/año <1990
return data($x/nombre),

("Nombre de los equipos que hayan ganado algún mundial o algún europeo"),
for $x in doc("futbol")//equipo
where $x/c_europa > 0 or $x/mundial > 0
return data($x/nombre),

("Nombre de los jugadores que hayan nacido en España ordenados por año de nacimiento."),
for $x in doc("futbol")//jugador
where $x/pais ="España"
order by $x/año
return data($x/nombre)