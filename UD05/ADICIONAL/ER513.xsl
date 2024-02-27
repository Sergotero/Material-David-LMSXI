<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
          <title>Resultado</title>
      </head>
      <body>
        <ol>
          <xsl:for-each select="//libro">
            <xsl:if test="autores/autor/@nacimiento > 1900">
              <li><xsl:value-of select="titulo"/></li>
            </xsl:if>
          </xsl:for-each>
        </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>