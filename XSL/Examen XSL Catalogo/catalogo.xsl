<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="utf-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Catalogo</title>
        <link rel="stylesheet" type="text/css" href="catalogo.css"/>
      </head>
      <body>
        <div>
          <h2>Lista del título, número de páginas</h2>
        </div>
        <div>
          <ul>
            <xsl:for-each select="//libro">
              <li><xsl:value-of select="titulo"/> - <xsl:value-of select="paginas"/>   
</li>
            </xsl:for-each>
          </ul>
        </div>
        <div>
          <h2>Título autores y editorial</h2>
        </div>
        <div>
          <table>
            <tr>
              <th>Título</th>
              <th>Autores</th>
              <th>Editorial</th>
            </tr>
            <xsl:for-each select="//libro">
              <tr>
                <td>
                  <xsl:value-of select="titulo"/>
                </td>
                <td>
                  <xsl:for-each select="autores/autor">
                    <xsl:value-of select="concat(.,' ')"/>
                  </xsl:for-each>
                </td>
                <td>
                  <xsl:value-of select="editorial"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </div>
        <div>
          <h2>Lista del título, con número de páginas mayores a 512, ordenado por titulo</h2>
        </div>
        <div>
          <ul>
            <xsl:for-each select="//libro[paginas &gt;512]">
              <xsl:sort select="titulo"/>
              <li><xsl:value-of select="titulo"/> - <xsl:value-of select="paginas"/>   
            </li>
            </xsl:for-each>
          </ul>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
