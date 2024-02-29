<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="utf-8" indent="yes"/>
  <xsl:template match="/">
    <inventario>
      <xsl:for-each select="inventario/producto">
        <xsl:if test="lugar/@edificio='B'">
          <producto>
            <peso>
              <xsl:value-of select="peso"/>
            </peso>
            <nombre>
              <xsl:value-of select="nombre"/>
            </nombre>
            <lugar>
              <xsl:attribute name="edificio">
                <xsl:value-of select="lugar/@edificio"/>
              </xsl:attribute>
              <aula>
                <xsl:value-of select="lugar/aula"/>
              </aula>
            </lugar>
          </producto>
        </xsl:if>
      </xsl:for-each>
    </inventario>
  </xsl:template>
</xsl:stylesheet>