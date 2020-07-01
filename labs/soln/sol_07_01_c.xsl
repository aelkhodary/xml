<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <!-- Root template -->
<xsl:output method="html" omit-xml-declaration="yes"/>
   <xsl:template match="/">
     <h1>Departments</h1>
     <xsl:apply-templates/>
   </xsl:template>
   
   <xsl:template match="department">
     <h2><xsl:value-of select="department_name"/></h2>
     <ul>
       <li>Id: <xsl:value-of select="department_id"/></li>
       <xsl:if test="manager_id and manager_id!=''">
         <li>Manager: <xsl:value-of select="manager_id"/></li>
       </xsl:if>
       <li>Location: 
         <xsl:choose>
           <xsl:when test="location_id=1700">Seattle</xsl:when>
           <xsl:when test="location_id=2400">London</xsl:when>
           <xsl:otherwise>
             <xsl:value-of select="location_id"/>
           </xsl:otherwise>
         </xsl:choose>
       </li>
     </ul>
   </xsl:template>
</xsl:stylesheet>
