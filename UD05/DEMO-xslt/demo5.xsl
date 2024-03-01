<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:strip-space elements="*" />
  <!-- <xsl:preserve-space elements="XPath" /> -->
  <xsl:mode on-no-match="shallow-skip"/>
    <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">
   <html>
    <head></head>
    <body>
          <xsl:apply-templates  select="//n1/*/*"/>
    </body>
   </html>
  </xsl:template>

<xsl:template match="//n1/*/*" >
   <h1>
       <xsl:value-of select="."/>
   </h1>
</xsl:template>

<!-- Ojo: probar sin paréntesis -->
<xsl:template match="(//n1/*/*)[last()]">
   <h3>
       <xsl:value-of select="."/>
   </h3>
</xsl:template>

</xsl:stylesheet>
