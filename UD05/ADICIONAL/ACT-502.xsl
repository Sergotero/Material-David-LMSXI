<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <tienda>
      <productos>
        <xsl:apply-templates select="productos/producto" />
      </productos>
      <ofertas>
        <xsl:apply-templates select="productos/producto[@descuento]" />
      </ofertas>
      <ventas>
        <xsl:apply-templates select="productos/ventas/venta" />
      </ventas>
    </tienda>
  </xsl:template>

  <xsl:template match="producto">
    <producto>
      <xsl:attribute name="id">
        <xsl:value-of select="@id"/>
      </xsl:attribute>
      <xsl:attribute name="precio">
        <xsl:value-of select="precio"/>
      </xsl:attribute>
      <xsl:value-of select="nombre"/>
    </producto>
  </xsl:template>

  <xsl:template match="venta">
    <venta>
      <xsl:attribute name="fecha">
        <xsl:value-of select="fecha"/>
      </xsl:attribute>
      <xsl:attribute name="id">
        <xsl:value-of select="@id"/>
      </xsl:attribute>
      <xsl:attribute name="cantidad">
        <xsl:value-of select="count(productos/producto)"/>
      </xsl:attribute>
      <xsl:for-each select="productos/producto">
        <producto>
          <xsl:variable name="id" select="@id" />
          <xsl:attribute name="precio">
            <xsl:value-of select="//producto[@id=$id]/precio"/>
          </xsl:attribute>
          <xsl:attribute name="categoria">
            <xsl:value-of select="//producto[@id=$id]/categoria"/>
          </xsl:attribute>
          <xsl:value-of select="//producto[@id=$id]/nombre"/>
        </producto>
      </xsl:for-each>
    </venta>
  </xsl:template>

</xsl:stylesheet>