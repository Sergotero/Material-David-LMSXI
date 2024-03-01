<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- <xsl:strip-space elements="*" /> -->
  <!-- <xsl:preserve-space elements="XPath" /> -->
  <!-- <xsl:mode on-no-match="shallow-skip"/> -->
  
  <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <!-- Probar las rutas: /r/n1/n11/n111, /r/n1/n11, /r/n1/ -->
  <xsl:template match="/">
   <html>
    <head></head>
    <body>
       <h1><xsl:value-of select="."/></h1>
    </body>
   </html>
  </xsl:template>
</xsl:stylesheet>