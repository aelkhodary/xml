<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/departments">
    <html>
      <body>
        <h1>Department Report</h1>
        <ol>
          <xsl:apply-templates select="department[position()&lt;5]" mode="toc"/>
        </ol>
        <xsl:apply-templates select="department[position()&lt;5]" mode="body"/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="department" mode="toc">
    <a href="#id_{department_id}">
      <li><xsl:value-of select="department_name"/></li>
    </a>
  </xsl:template>
  <xsl:template match="department" mode="body">
    <a name="#id_{department_id}">
      <h2><xsl:value-of select="department_name"/></h2>
    </a>
    <table border="1">
      <tr><xsl:apply-templates mode="body"/></tr>
      <tr><xsl:apply-templates/></tr>
    </table>
  </xsl:template>

  <xsl:template match="department/*" mode="body">
    <th><xsl:value-of select="local-name()"/></th>
  </xsl:template>
  
  <xsl:template match="department/*">
    <td><xsl:value-of select="."/></td>
  </xsl:template>
</xsl:stylesheet>
