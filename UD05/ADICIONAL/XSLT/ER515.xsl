<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Calificaciones Junio</title>
        <style type="text/css">
          .azul1{background-color:#369;}
          .azul2{background-color:#69C;}
          .azul3{background-color:#e0ffff;}
          td{text-align: center;}
          h1{color:#f00; font-weight:bold; text-align:center;}
        </style>
      </head>
      <body>
        <div>
          <h1>Calificaciones de la convocatoria de Junio</h1>
          <table border="3" align="center">
            <tr class="azul1">
              <th colspan="3">Datos</th>
              <th colspan="3">Notas</th>
            </tr>
            <tr class="azul2">
              <th>Nombres</th>
              <th>Apellidos</th>
              <th>Tareas</th>
              <th>Cuestionarios</th>
              <th>Examen</th>
              <th>Final</th>
            </tr>
            
            <xsl:for-each select="//alumno[@convocatoria='Junio']">
              <tr class="azul3">
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="apellidos"/></td>
                <td><xsl:value-of select="tareas"/></td>
                <td><xsl:value-of select="cuestionarios"/></td>
                <td><xsl:value-of select="examen"/></td>
                <td>
                  <xsl:choose>
                    <xsl:when test="final>=9">
                      <span style="color:blue;">Sobresaliente</span>
                    </xsl:when>
                    <xsl:when test="final>=7">
                      <span style="color:#5F9EA0;">Notable</span>
                    </xsl:when>
                    <xsl:when test="final>=6">
                      <span style="color:black;">Bien</span>
                    </xsl:when>
                    <xsl:when test="final>=5">
                      <span style="color:orange;">Suficiente</span>
                    </xsl:when>
                    <xsl:otherwise>
                      <span style="color:red;">Suspenso</span>
                    </xsl:otherwise>
                  </xsl:choose>
                </td>
              </tr>
            </xsl:for-each>
            
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>