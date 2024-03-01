<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- <xsl:strip-space elements="*" /> -->
  <!-- <xsl:preserve-space elements="XPath" /> -->
  <!-- <xsl:mode on-no-match="shallow-skip"/> -->
  
  <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <!-- Probar con: /  y  (/r/n1)[1] -->
  <xsl:template match="/">
   <html>
    <head></head>
    <body>
             <!-- Probar con: //n11/* ,  n11/* y //n1/*/* -->
            <xsl:for-each select="//n1/*/*">
            
                <xsl:if test="position()!=last()"> <h1>  <xsl:value-of select="."/></h1> </xsl:if>
                <xsl:if test="position()=last()"> <h3>  <xsl:value-of select="."/></h3></xsl:if>
              
            </xsl:for-each>
    </body>
   </html>
  </xsl:template>
</xsl:stylesheet>