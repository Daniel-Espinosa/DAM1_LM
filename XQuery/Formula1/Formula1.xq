('1. Saca el nombre(contenido) de todas las escuderías.'),
for $x in //escuderias/escuderia 
return data($x/nombre),
('2. Saca toda la información (elementos y contenido) de todas las escuderías que se hayan creado antes del
año 2000.'),
for $x in //escuderias/escuderia
where $x/anioCreacion <2000
return $x,
('3. Muestra el contenido de todas las nacionalidades diferentes a las que pertenecen los pilotos.'),
for $x in //pilotos/piloto 
return distinct-values($x/nacionalidad),
('4. Muestra el número total de carreras que hay en el documento (que ya se hayan disputado).'),
let $x := count(//resultados/circuito) 
return $x,
('5. Muestra el contenido de todos los patrocinadores de las escuderías que contengan una ‘t’.'),
for $x in //escuderias/escuderia
where $x[contains(nombre,'t')] 
return data($x/patrocinador),
('6. Muestra todos los datos (elementos) del piloto que está clasificado quinto.'),
let $y := //clasificacionPilotos/quinto/@piloto
for $x in //pilotos/piloto[@siglas = $y]
return $x,
('7. Muestra los elementos del anteúltimo circuito informado en el apartado de resultados.'),
let $x := //circuitos/circuito[last()-1] 
return $x,
('8. Indica cuántos pilotos hay en la clasificación.'),
let $x := count(//clasificacionPilotos/*)  
return $x,
('9. Dentro de una etiqueta carreras, indica cuántas se han disputado en seco y cuantas con lluvia. La salida
deberá ser SECO: 1 – LLUVIA:3'),
let $s := count(//resultados/circuito/neumaticosSeco)
let $l := count(//resultados/circuito/neumaticosLluvia)
return concat('SECO: ',$s, ' - LLUVIA: ',$l ),
('10. Calcula el número de vueltas rápidas que realizan los pilotos de la escudería “Mercedes-AMG Petronas
Formula One Team”.'),
let $y := //escuderias/escuderia[nombre = 'Mercedes-AMG Petronas Formula One Team']/coche/id_piloto
let $x := //pilotos/piloto[@siglas = $y]
return sum($x/@vueltasRapidas) 

