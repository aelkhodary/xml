<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <!-- Document Root template -->
   <xsl:template match="/">
     <html>
     <head><title>Employee Information</title></head>
     <body>
       <h1>Employee Information</h1>
       <!-- Add instructions here -->
     </body>
     </html>
   </xsl:template>
   
   <xsl:template match="employees">
     <table border="1">
       <tr><th>Id</th><th>Name</th><th>Salary</th></tr>
       <!-- Add instructions here -->
     </table>
   </xsl:template>
   
   <xsl:template match="employee">
     <tr>
        <td><xsl:value-of select="employee_id"/></td>
        <td><xsl:value-of select="last_name"/>, 
            <xsl:value-of select="first_name"/></td>
        <td><xsl:value-of select="salary"/></td>
     </tr>
   </xsl:template>
   
   <xsl:template match="salary">
     <xsl:choose>
       <xsl:when test="number(.)&lt;5000">
         <b><xsl:value-of select="."/></b>
       </xsl:when>
       <xsl:otherwise>
         <i><xsl:value-of select="."/></i>
       </xsl:otherwise>
     </xsl:choose>
   </xsl:template>
</xsl:stylesheet>
