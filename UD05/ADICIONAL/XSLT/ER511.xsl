<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Datos por edificio</title>
      </head>
      <body>
        <h1>Resultados</h1>
        <table border='1'>
          <xsl:for-each select="inventario/producto">
            <tr>
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <td>
                <xsl:if test="peso[@unidad='kg']">
                  <xsl:value-of select="peso"/>
                </xsl:if>
                <xsl:if test="peso[@unidad='g']">
                  <xsl:value-of select="peso * 0.001"/> 
                </xsl:if>
              </td>
              <td>
                <xsl:value-of select="lugar/@edificio"/>
                <xsl:value-of select="lugar/aula"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>