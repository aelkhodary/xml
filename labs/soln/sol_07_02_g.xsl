<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <!-- Document Root template -->
   <xsl:template match="/">
     <html>
     <head><title>Employee Information</title></head>
     <body>
       <h1>Employee Information</h1>
       <!-- Add instructions here -->
       <xsl:apply-templates/>
     </body>
     </html>
   </xsl:template>
   
   <xsl:template match="employees">
     <table border="1">
       <tr><th>Id</th><th>Name</th><th>Salary</th></tr>
       <!-- Add instructions here -->
       <xsl:apply-templates>
         <xsl:sort select="last_name"/>
       </xsl:apply-templates>
     </table>
   </xsl:template>
   
   <xsl:template match="employee">
     <tr>
        <td><xsl:value-of select="employee_id"/></td>
        <td><xsl:value-of select="last_name"/>, 
            <xsl:value-of select="first_name"/></td>
        <td><!--xsl:value-of select="salary"/-->
          <xsl:apply-templates select="salary">
            <xsl:with-param name="minsal">8000</xsl:with-param>
          </xsl:apply-templates>
        </td>
     </tr>
   </xsl:template>
   
   <xsl:template match="salary">
     <xsl:param name="minsal" select="4500"/>
     <xsl:choose>
       <xsl:when test="number(.)&lt;$minsal">
         <b><xsl:value-of select="."/></b>
       </xsl:when>
       <xsl:otherwise>
         <i><xsl:value-of select="."/></i>
       </xsl:otherwise>
     </xsl:choose>
   </xsl:template>
</xsl:stylesheet>
