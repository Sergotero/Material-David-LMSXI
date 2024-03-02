<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- <xsl:strip-space elements="*" /> -->
  <!-- <xsl:preserve-space elements="XPath" /> -->
  <xsl:mode on-no-match="shallow-skip"/>
  <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">
   <html>
    <head></head>
    <body>
          <!-- Probar: //n111 , /r/n1 y //element() -->
          <xsl:apply-templates  select="//n111" mode="modo1"/>
          <xsl:comment> Listar valores </xsl:comment>
          <h1>Lista de valores:</h1>
          <ol> <xsl:apply-templates select="//n111" mode="modo2"/> </ol>
    </body>
   </html>
  </xsl:template>

<xsl:template match="//n111" mode="modo1">
   <h3>   <xsl:value-of select="."/>   </h3>
</xsl:template>

<!-- Ojo: probar sin paréntesis -->
<xsl:template match="(//n111)[position()=last()]" mode="modo1">
    <h2>  <xsl:value-of select="."/> </h2>
</xsl:template>

<xsl:template match="//n111" mode="modo2">
    <li><xsl:value-of select="."/></li>
</xsl:template>

<!-- <xsl:template match="*" mode="modo1"/> -->
<!-- <xsl:template match="*" mode="modo2"/> -->

</xsl:stylesheet>
