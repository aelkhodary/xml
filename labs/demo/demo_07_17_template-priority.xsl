<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <!-- Root template -->
   <xsl:template match="/">
     <xsl:apply-templates/> 
   </xsl:template>
   
   <xsl:template match="employees" priority="-0.5">
     <h2><font color="red">Employees</font></h2>
     <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="employees" priority="-0.5">
     <h2>Employees</h2>
     <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="employees" priority="-1">
     <h2>The Employees</h2>
     <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="employee">
     <b>Employee</b><br/>
     <xsl:apply-templates/>
     <hr/>
   </xsl:template>

   <xsl:template match="employee_id">
     Employee ID = <xsl:value-of select="."/><br/>
   </xsl:template>

   <xsl:template match="first_name">
     First name = <xsl:value-of select="."/><br/>
   </xsl:template>

   <xsl:template match="last_name">
     Last name = <xsl:value-of select="."/><br/>
   </xsl:template>
   
   <xsl:template match="salary">
     Salary = <xsl:value-of select="."/><br/>
   </xsl:template>
</xsl:stylesheet>
