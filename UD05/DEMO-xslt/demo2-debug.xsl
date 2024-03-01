<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- <xsl:strip-space elements="*" /> -->
  <!-- <xsl:preserve-space elements="XPath" /> -->
  <!-- <xsl:mode on-no-match="shallow-skip"/> -->
  
  <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">
  <xsl:message expand-text="yes">  DEBUG1 {./*/name()} </xsl:message>

   <html>
    <head></head>
    <body>
             <!-- Probar con: //n11/* y  n11/* -->
            <xsl:for-each select="//n11/*">
            <xsl:message expand-text="yes">  DEBUG2 {name()} </xsl:message>

             <h1>
                  <xsl:value-of select="."/>
              </h1>
            </xsl:for-each>
    </body>
   </html>
  </xsl:template>
</xsl:stylesheet>