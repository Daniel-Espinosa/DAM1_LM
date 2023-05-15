<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="utf-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Alumnos</title>
        <link rel="stylesheet" type="text/css" href="alumnos.css"/>
      </head>
      <body>
        <div>
          <h1>Alumnos</h1>
          <h2>Nombre y Apellido</h2>
          <ul>
            <xsl:for-each select="//alumno">
              <xsl:sort select="nombre"/>
              <li>
                <xsl:value-of select="concat(nombre,' ',apellidos)"/>
              </li>
            </xsl:for-each>
          </ul>
        </div>
        <br/>
        <div>
          <h2>Convocatoria Junio</h2>
          <table>
            <tr>
              <td>Nombre</td>
              <td>Apellidos</td>
              <td>Nota Examen Final</td>
              <td>Calificacion</td>
            </tr>
            <xsl:for-each select="//alumno[@convocatoria = 'Junio']">
              <tr>
                
                <td>
                  <xsl:value-of select="nombre"/>
                </td>
                <td>
                  <xsl:value-of select="apellidos"/>
                </td>
                <td>
                  <xsl:value-of select="final"/>
                </td>
                
                <xsl:if test="final &gt; 9">
                  <td>Sobresaliente</td>
                </xsl:if>
                <xsl:if test="final &lt; 9 and final &gt; 7">
                  <td>Sobresaliente</td>
                </xsl:if>
                <xsl:if test="final &lt; 7 and final &gt; 6">
                  <td>Bien</td>
                </xsl:if>
                <xsl:if test="final &lt; 6 and final &gt; 5">
                  <td>Aprobado</td>
                </xsl:if>
                <xsl:if test="final &lt; 5">
                  <td>Suspenso</td>
                </xsl:if>
              
              </tr>
            </xsl:for-each>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
