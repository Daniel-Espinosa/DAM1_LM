<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
  


<html>
  <head>
    <title>catalogo</title>
    <link rel="stylesheet" type="text/css" href="Ejemplo0.css"/>
  </head>
  <body>
  
  <h1>Lista Cantantes</h1>
<ul>
  <xsl:for-each select ="//disco">
    <li><xsl:value-of select ="cantante"/></li>
  </xsl:for-each>
</ul>

<h1>Tabla</h1>
<table>
<!-->Tabla con el título del disco,nombre del cantante y el año de cada disco.<-->
<tr><td>Titulo</td><td>cantante</td><td>año disco</td></tr>
<xsl:for-each select="//disco">
<tr><td><xsl:value-of  select ="titulo"/></td><td><xsl:value-of  select ="cantante"/></td><td><xsl:value-of  select ="año"/></td></tr>
</xsl:for-each>
</table>







  </body>
</html>

  
  
  </xsl:template>
</xsl:stylesheet>
