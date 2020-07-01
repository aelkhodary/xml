<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
      <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="department">
    <xsl:value-of select="department_id"/> - <b><xsl:value-of select="department_name"/></b><br/>
  </xsl:template>
  <xsl:template match="*/text()"/>
</xsl:stylesheet>
