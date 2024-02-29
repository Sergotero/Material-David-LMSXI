<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">
    <usuarios>
      <xsl:for-each select="//usuario">
        <usuario id="{@id}" nick="{nick}">
          <nombre><xsl:value-of select="nombre"/></nombre>
          <apps>
            <xsl:for-each select="apps/app">
              <xsl:variable name="id" select="@id"/>
              <app id="@id" pegi="{/android/aplicaciones/app[@id=$id]/pegi}">
                <xsl:value-of select="/android/aplicaciones/app[@id=$id]/titulo"/>
              </app>
            </xsl:for-each>
          </apps>
        </usuario>
      </xsl:for-each>
    </usuarios>
  </xsl:template>
</xsl:stylesheet>