<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
     <xsl:apply-templates select="//region"/>
   </xsl:template>
   <xsl:template match="regions">
     <h1>Regions</h1><xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="region">
     <p><xsl:value-of select="."/></p>
   </xsl:template>
</xsl:stylesheet>
