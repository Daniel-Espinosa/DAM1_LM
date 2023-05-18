("Nombre de las flores cuya temporada sea el verano"),
for $x in doc("Floristeria")//flor
where $x/temporada = "Verano"
return data($x/nombre),

("Nombre de las flores de españa cuyo nº lote sea menor de 200"),
for $x in doc("Floristeria")//flor
where $x/origen = "España" and $x/origen/@nLote < 200
return data($x/nombre),

("Precio de las flores cuya temporada sea la primavera o de origen Italiano"),
for $x in doc("Floristeria")//flor
where $x/temporada = "Primavera" or $x/origen = "Italia"
return data($x/precio)