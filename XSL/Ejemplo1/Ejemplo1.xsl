<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">

<!-->● Lista con el título de cada libro y la editorial.
● Tabla con el título del libro,autores y editorial.<-->

<html>
  <head>
    <title>Ejemplo1</title>
    <link rel="stylesheet" type="text/css" href="Ejemplo1.css"/> 
  </head>
<body>

<ul>
<xsl:for-each select="//libro">
 <li>Titulo: <xsl:value-of select="titulo"/> - Editorial: <xsl:value-of select="editorial"/></li>
 </xsl:for-each>
</ul>

<table>

<tr><td>Titulo</td><td>Autor</td><td>editorial</td></tr>
<xsl:for-each  select="//libro">
<tr><td><xsl:value-of select="titulo"/></td><td><xsl:value-of select="autores/autor"/></td><td><xsl:value-of select="editorial"/></td></tr>
</xsl:for-each>
</table>

</body>

</html>
    
  </xsl:template>
</xsl:stylesheet>