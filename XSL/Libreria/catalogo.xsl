<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="utf-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Libreria</title>
        <link rel="stylesheet" type="text/css" href="catalogo.css"/>
      </head>
      <body>
        <div>
          <h2>Lista del título, número de páginas</h2>
          <ul>
            <xsl:for-each select="//libro">
              <li>
                <xsl:value-of select="concat(titulo,' - ',paginas)"/>
              </li>
            </xsl:for-each>
          </ul>
        </div>
        <div>
          <h2>Titulo Autores y Editorial</h2>
          <table>
            <tr>
              <td>Titulo</td>
              <td>Autores</td>
              <td>Editorial</td>
            </tr>
            <xsl:for-each select="//libro">
              <tr>
                <td>
                  <xsl:value-of select="titulo"/>
                </td>
                <td>
                  <xsl:value-of select="autores/autor"/>
                </td>
                <td>
                  <xsl:value-of select="editorial"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </div>
        
        <div>
        <h2>Ejercicio 2</h2>
          <ul>
          <xsl:for-each select="//libro[paginas>500]">
          <xsl:sort select="titulo"/>
              <li>
                <xsl:value-of select="concat(titulo,' - ',paginas)"/>
              </li>
            </xsl:for-each>
          
          
          
          </ul>
        </div>
        
        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
