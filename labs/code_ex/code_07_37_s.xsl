<?xml version="1.0"?>
<xsl:stylesheet version ="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
 <xsl:template match="/">
  <html>
  <body>
  <table border="1">
  <tr><th>Id</th><th>Name</th><th>Salary</th></tr>
  <xsl:apply-templates/>
  </table>
  </body>
  </html>
 </xsl:template>
 <xsl:template match="employee">
  <tr>
   <td><xsl:value-of select="employee_id"/></td>
   <td><xsl:value-of select="last_name"/></td>
   <td><xsl:value-of select="salary"/></td>
  </tr>
 </xsl:template>
</xsl:stylesheet>
