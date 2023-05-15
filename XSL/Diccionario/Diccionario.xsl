<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="utf-8" indent="yes"/>
  <xsl:template match="/">

<html>
<head>
<title>DICCIONARIO SIMPLE</title>
<link rel="stylesheet" type="text/css" href="diccionario.css"></link>
</head>

<body>

<h1>DICCIONARIO SIMPLE</h1>
<table>
<tr><td>IDIOMA</td><td>SALUDO</td><td>DESPEDIDA</td></tr>

<xsl:for-each select="Diccionario/*">
<tr>
<td><xsl:value-of select="name(.)"/></td>
<td><xsl:value-of select="saludo"/></td>
<td><xsl:value-of select="despedida"/></td>
</tr>
</xsl:for-each>



</table>





</body>

</html>



  
  
  </xsl:template>
</xsl:stylesheet>
