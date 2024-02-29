<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head><title>Datos por edificio</title></head>
      <body>
        <h1>Edificio A</h1>
        <table border='1'>
          <xsl:for-each select="inventario/producto">
            <xsl:if test="lugar/@edificio='A'">
              <tr>
                <td>
                  <xsl:value-of select="nombre"/>
                </td>
                <td>
                  <xsl:if test="peso[@unidad='kg']">
                    <xsl:value-of select="peso"/> kg
                  </xsl:if>
                  <xsl:if test="peso[@unidad='g']">
                    <xsl:value-of select="peso * 0.001"/> kg
                  </xsl:if>
                </td>
                <td>
                  <xsl:value-of select="lugar/@edificio"/>
                  <xsl:value-of select="lugar/aula"/>
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
        <h1>Edificio B</h1>
        <table border='1'>
          <xsl:for-each select="inventario/producto">
            <xsl:if test="lugar/@edificio='B'">
              <tr>
                <td>
                  <xsl:value-of select="nombre"/>
                </td>
                <td>
                  <xsl:if test="peso[@unidad='kg']">
                    <xsl:value-of select="peso"/> kg
                  </xsl:if>
                  <xsl:if test="peso[@unidad='g']">
                    <xsl:value-of select="peso * 0.001"/> kg
                  </xsl:if>
                </td>
                <td>
                  <xsl:value-of select="lugar/@edificio"/>
                  <xsl:value-of select="lugar/aula"/>
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>