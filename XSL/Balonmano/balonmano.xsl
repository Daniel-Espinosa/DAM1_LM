<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="utf-8" indent="yes"/>
  <xsl:template match="/">




<html>

<head>
<title>Balomano</title>
<link rel="stylesheet" type="text/css" href="balonmano.css"/>
</head>

<body>
<div>
<h1>Equipos</h1>

<xsl:for-each select="//equipo">
<h2>Selección: <xsl:value-of select="nombre"/></h2>
<h2>Entrenador: <xsl:value-of select="entrenador"/></h2>

<table>

<tr><td>Jugador</td><td>Posición</td></tr>

<xsl:for-each select="jugadores/jugador">
<tr>

<td><xsl:value-of select="text()"/></td>
<td><xsl:value-of select="@posicion"/></td>
</tr>

</xsl:for-each>


</table>

</xsl:for-each>





</div>



</body>
</html>  
  
  </xsl:template>
</xsl:stylesheet>
