<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
   Document root
 </xsl:template>
  <xsl:template match="/" priority="1">
   Apply this document Root
   
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="department">
   Department Data 
    <!-- default priority -0.5 -->
  </xsl:template>
  <xsl:template match="department">
   I WIN!          
    <!-- default priority -0.5 -->
  </xsl:template>
</xsl:stylesheet>
