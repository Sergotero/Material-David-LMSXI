<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- <xsl:strip-space elements="*" /> -->
  <!-- <xsl:preserve-space elements="XPath" /> -->
  <!-- <xsl:mode on-no-match="shallow-skip"/> -->
  
  <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <!-- Probar:-->
  <!--   match       select
       Demo: plantilla por defecto
          /         //n111
          //n111    .
       Demo: procesamiento de nodos
          /         //n111
          /         //n111/.
          /r        n1//n111
          /r/n1     n11/* 
          /r/n1     //n111
          /r/n1     .//n111
          /r/n1     node()//n111
  -->
  <xsl:template match="/">
   <html>
    <head></head>
    <body>
       <h1><xsl:value-of select="//n111"/></h1>
    </body>
   </html>
  </xsl:template>
</xsl:stylesheet>