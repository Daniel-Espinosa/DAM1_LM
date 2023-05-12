<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"   encoding="utf-8" indent="yes"/>
  <xsl:template match="/">
<!-->● Lista con el título de los libros y su año de publicación, de los libros publicados en el 2018 o años posteriores.
● Tabla con el título del libro,autores y editorial de los libros del autor Miguel Angel.<-->

<html>
<head>
<title>Ejemplo1B</title>
<link rel="stylesheet" type="text/css" href="Ejemplo1B.css"/>
</head>
<body>
<ul>

<!-->● Lista con el título de los libros y su año de publicación, de los libros publicados en el 2018 o años posteriores.<-->
<xsl:for-each select="//libro[año>=2018]">
<li>Titulo: <xsl:value-of select="titulo"/> - Año: <xsl:value-of select="año"/></li>
</xsl:for-each>
</ul>

<!-->● Tabla con el título del libro,autores y editorial de los libros del autor Miguel Angel.<-->
<table>
<tr><td>Titulo</td><td>Autores</td><td>Editorial</td></tr>
<xsl:for-each select="//libro[autores/autor = 'Miguel Angel']">
<tr>
<td><xsl:value-of select="titulo"/></td>
<td><xsl:value-of select="autores/autor"/></td>
<td><xsl:value-of select="editorial"/></td>
</tr>
</xsl:for-each>


</table>



</body>

</html>  
  
  </xsl:template>
</xsl:stylesheet>
