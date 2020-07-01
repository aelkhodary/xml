<?xml version='1.0' encoding='windows-1252'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <!-- Root template -->
   <xsl:template match="/regions">
     <html>
     <body>
       <h1>Regions</h1>
       <table border="1">
       <xsl:apply-templates/>
       </table>
     </body>
     </html>
   </xsl:template>
   
   <xsl:template match="region">
     <tr>
     <td><xsl:value-of select="region_id"/></td>
     <td><xsl:value-of select="region_name"/></td>
     </tr>
   </xsl:template>
   
   <xsl:template match="*/text()"/>
</xsl:stylesheet>
