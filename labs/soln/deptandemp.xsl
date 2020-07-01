<?xml version='1.0' encoding='windows-1252'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Root template -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Departments and Employees Page</title>
      </head>
      <body>
        <h1>Departments and Employees</h1>
        <xsl:if test="department/page_navigation/counter">
          <p><b>Page Hit count: <xsl:value-of select="department/page_navigation/counter"/></b></p>
        </xsl:if>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="department">
    <xsl:choose>
      <xsl:when test="department_name">
        <h2>Department: 
          <xsl:value-of select="department_id"/> - 
          <font color="blue">
            <xsl:value-of select="department_name"/>
          </font>
        </h2>
        <xsl:apply-templates select="page_navigation"/>
        <xsl:choose>
          <xsl:when test="count(employees/employees_row)&gt;0">
            <h3>Employees</h3>
            <table border="1">
              <tr>
                <th>Id</th>
                <th>Last Name</th>
                <th>Salary</th>
              </tr>
              <xsl:apply-templates select="employees"/>
            </table>
          </xsl:when>
          <xsl:otherwise>
            <h3>There are no employees in this department</h3>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:apply-templates select="page_navigation"/>
      </xsl:when>
      <xsl:otherwise>
        <h3>Department does not exist</h3>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="employees_row">
    <tr>
      <td>
        <xsl:value-of select="employee_id"/>
      </td>
      <td>
        <xsl:value-of select="last_name"/>
      </td>
      <td>
        <xsl:value-of select="salary"/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="page_navigation">
    <table>
      <xsl:if test="number(previous_id)!=0">
        <td>
          <form>
            <input type="hidden" name="dept_id" value="{previous_id}"/>
            <input type="submit" value="Previous"/>
          </form>
        </td>
      </xsl:if>
      <xsl:if test="number(next_id)!=0">
        <td>
          <form>
            <input type="hidden" name="dept_id" value="{next_id}"/>
            <input type="submit" value="Next"/>
          </form>
        </td>
      </xsl:if>
    </table>
  </xsl:template>

  <xsl:template match="previous_id"/>
  <xsl:template match="next_id"/>
  <xsl:template match="counter"/>
  <xsl:template match="department_id"/>
  <xsl:template match="department_name"/>
</xsl:stylesheet>
