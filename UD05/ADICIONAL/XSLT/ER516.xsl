<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <body>
        <h2>Lista de libros</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Título</th>
            <th>Autor</th>
          </tr>
          <xsl:for-each select="catalogo/libro">
            <tr>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>