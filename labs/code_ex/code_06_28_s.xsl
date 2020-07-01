<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Root template -->
  <!-- xsl:template match="/" </xsl:template> -->
  <xsl:template match="//department_name">
    <html>
      <body>
        <p><xsl:value-of select="."/></p>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="*/text()"/>
</xsl:stylesheet>
