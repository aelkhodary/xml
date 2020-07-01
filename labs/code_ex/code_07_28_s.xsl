<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:for-each select="//employee">
      <p>
        <xsl:value-of select="last_name"/>,    
        <xsl:choose>
          <xsl:when test="salary &lt; 10000">
            <font color="red">
              <xsl:value-of select="salary"/>
            </font>
          </xsl:when>
          <xsl:otherwise>
            <font color="blue">
              <xsl:value-of select="salary"/>
            </font>
          </xsl:otherwise>
        </xsl:choose>
      </p>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
