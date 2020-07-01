<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="region">
   <b><xsl:value-of select="."/></b><br/>
   boolean(id) = <xsl:value-of select="boolean(id)"/><br/>
   @num = <xsl:value-of select="@num"/><br/>
   @num + 2 = <xsl:value-of select="@num + 2"/><br/>
 </xsl:template>  
</xsl:stylesheet>
