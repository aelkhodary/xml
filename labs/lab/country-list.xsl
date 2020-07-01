<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <!-- Root template -->
   <xsl:template match="/">
      <html>
      <body>
      <xsl:apply-templates/>
      <p><a href="javascript:history.back()">Back</a></p>
      </body>
      </html>   
   </xsl:template>
   <xsl:template match="COUNTRIES">
     <h2>Countries</h2>
     <xsl:choose>
       <xsl:when test="(count(COUNTRY)&gt;0)">
         <table border="1">
         <tr><th>Id</th><th>Name</th><th>Region</th></tr>
         <xsl:apply-templates/>
         </table>
       </xsl:when>
       <xsl:otherwise><p>Country not found!</p></xsl:otherwise>
     </xsl:choose>
   </xsl:template>
   <xsl:template match="COUNTRY">
     <tr>
     <td><xsl:value-of select="COUNTRY_ID"/></td>
     <td><xsl:value-of select="COUNTRY_NAME"/></td>
     <td><xsl:value-of select="REGION_ID"/></td>
     </tr>
   </xsl:template>
</xsl:stylesheet>
