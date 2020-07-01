<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:attribute-set name="region-info">
    <xsl:attribute name="id">5</xsl:attribute>
    <xsl:attribute name="name">Japan</xsl:attribute>
  </xsl:attribute-set>

  <xsl:template match="region[1]">
    <xsl:element name="{local-name()}" use-attribute-sets="region-info"/>
  </xsl:template>
  
  <xsl:template match="text()"/>
</xsl:stylesheet>
