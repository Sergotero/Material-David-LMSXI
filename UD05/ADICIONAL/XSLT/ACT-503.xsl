<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Tabla de artistas</title>
      </head>
      <body>
        <table>
          <tr>
            <th>Código</th>
            <th>Nombre</th>
            <th>Año de nacimiento</th>
            <th>Año de fallecimiento</th>
            <th>País</th>
            <th>Wikipedia</th>
          </tr>
          <xsl:for-each select="artistas/artista[nacimiento>1500]">
            <xsl:sort select="nacimiento"/>
            <tr>
              <td>
                <xsl:value-of select="@id"/>
              </td>
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <td>
                <xsl:value-of select="nacimiento"/>
              </td>
              <td>
                <xsl:choose>
                  <xsl:when test="fallecimiento">
                    <xsl:value-of select="fallecimiento"/>
                  </xsl:when>
                  <xsl:otherwise>
                    Desconocido
                  </xsl:otherwise>
                </xsl:choose>
              </td>
              <td>
                <xsl:value-of select="pais"/>
              </td>
              <td>
                <a target="_blank">
                  <xsl:attribute name="href">
                    <xsl:value-of select="@wikipedia"/>
                  </xsl:attribute>
                  Saber más
                </a>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>