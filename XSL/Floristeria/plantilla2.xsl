<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">

  <html>
    <head>
        <title>Floristeria</title>
        <link rel="stylesheet" type="text/css" href="estilo1.css"/>
    </head>
    
    
    <body>
      <div>
        <h1>Nombres</h1>
        <ul>
          <xsl:for-each select="floristeria/flor">
            <li><xsl:value-of select="nombre"/></li>
          </xsl:for-each>
        </ul>
      </div>
    </body>
  </html>
      
</xsl:template>
</xsl:stylesheet>