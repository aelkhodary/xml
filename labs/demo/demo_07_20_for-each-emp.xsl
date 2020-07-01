<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<HTML>
<BODY>
  <H1>Employees</H1>
   <TABLE BORDER="1">
   <TR>
     <TH>Department</TH>
     <TH>Employee</TH>
     <TH>Job Id</TH>
     <TH>Salary</TH>
   </TR>
   <xsl:for-each select="/ROWSET/ROW">
     <!--
     <xsl:sort select="DEPARTMENT_ID" data-type="number"/>
     <xsl:sort select="LAST_NAME"/>
     -->
     <TR>
      <TD><xsl:value-of select="DEPARTMENT_ID"/></TD>
      <TD><xsl:value-of select="LAST_NAME"/></TD>
      <TD><xsl:value-of select="JOB_ID"/></TD>
      <TD><xsl:value-of select="SALARY"/></TD> 
     </TR> 
   </xsl:for-each>
</TABLE>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>