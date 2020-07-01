<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:template match="/">
  <regions><xsl:apply-templates/></regions>
 </xsl:template>
 <xsl:template match="region">
  <region id="{region_id}" name="{region_name}"/>
 </xsl:template>
</xsl:stylesheet>
