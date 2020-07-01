<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <h2>Departments with a manager</h2>
    <xsl:for-each select="//department">
      <xsl:if test="manager_id">
        <p><xsl:value-of select="."/></p>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
