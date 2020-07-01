<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <!-- Root template -->
   <xsl:template match="/">
     <h1>Document Root</h1>
     <xsl:apply-templates/>
   </xsl:template>
   
   <xsl:template match="employees">
     <h2>Root element: - <xsl:value-of select="local-name(.)"/>:
                         <xsl:if test="local-name(.)">
                            <xsl:value-of select="text()"/>
                          </xsl:if>
     <xsl:if test="@*">
     (<xsl:for-each select="@*">
       <xsl:value-of select="local-name(.)"/>=<xsl:value-of select="."/>
       </xsl:for-each>)
     </xsl:if></h2>
     <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="employees//node()">
     <xsl:if test="local-name(.)!=''">
     <b>Element: - <xsl:value-of select="local-name(.)"/>:
                         <xsl:if test="local-name(.)">
                            <xsl:value-of select="text()"/>
                          </xsl:if></b>
     <xsl:if test="@*">
     (<xsl:for-each select="@*">
       <xsl:value-of select="local-name(.)"/>=<xsl:value-of select="."/>
       </xsl:for-each>)
     </xsl:if>
      <br/>
     </xsl:if>
     <xsl:apply-templates/>
   </xsl:template>


</xsl:stylesheet>
