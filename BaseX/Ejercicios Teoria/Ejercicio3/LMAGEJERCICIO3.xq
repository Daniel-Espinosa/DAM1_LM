("EJERCICIO3 TEORIA"),
(" ** El nombre del perro del dueño ‘D02’"),
//perro[@id = //dueño[@id="D02"]/id_perro/text()]/nombre/text(),
(" ** Nombre del dueño de Visi"),
//dueño[id_perro = //perro[nombre = "Visi"]/@id]/nombre/text(),
(" ** Ciudades donde viven los Fox Terrier. "),
//dueño[id_perro = //perro[raza = "Fox Terrier"]/@id]/ciudad/text(),
(" ** Tamaño de los perros que no viven en Santander"),
//perro[@id = //dueño[ciudad = "Santander"]/id_perro/text()]/tamaño/text()