<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Root template -->
  <xsl:template match="/">
    <xsl:element name="DEPARTMENTS">
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>
  
  <xsl:template match="department">
    <xsl:element name="{local-name()}">
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
