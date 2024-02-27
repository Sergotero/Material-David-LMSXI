<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:param name="val1" as="xs:string"/>
    
    <xsl:template match="/*" mode="#all">
        <html id="{$val1}">
            "{$val1}" 
            <body>
                <xsl:apply-templates select="*"/>
            </body>
        </html>
    </xsl:template>  
    <xsl:template match="*" mode="#default">
        <p style="color: {name(.)}">(name(.))</p>
    </xsl:template>  
</xsl:stylesheet>