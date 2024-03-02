<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:strip-space elements="*" />
  <!-- <xsl:preserve-space elements="XPath" /> -->
  <xsl:mode on-no-match="shallow-skip"/>
    <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">
   <html>
    <head></head>
    <body>
            <!-- Probar con: //n11/ y  //n11/* -->
            <xsl:apply-templates select="//n11"/>
    </body>
   </html>
  </xsl:template>

<!-- Probar con: //n11/ ,  //n11/*  y //* -->
<xsl:template match="//*">
   <h1>
       <xsl:value-of select="."/>
   </h1>
</xsl:template>

</xsl:stylesheet>
