<?xml version="1.0" encoding="UTF-8"?>
<xslt:stylesheet xmlns:xslt="http://www.w3.org/1999/XSL/Transform-1.0">
  <xslt:template match="/">
    <html>
      <head>
        <title>Employee Salaries</title>
        <style>
          .highlight {
            background-color: yellow;
          }
        </style>
      </head>
      <body>
        <h1>Employee Salaries</h1>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Salary</th>
          </tr>
          <xslt:apply-templates select="employees/employee"/>
        </table>
      </body>
    </html>
  </xslt:template>

  <xslt:template match="employee">
    <xslt:variable name="salary" select="salary"/>
    <tr>
      <td><xslt:value-of select="name"/></td>
      <td>
        <xslt:choose>
          <xslt:when test="$salary &gt; 50000">
            <span class="highlight"><xslt:value-of select="$salary"/></span>
          </xslt:when>
          <xslt:otherwise>
            <xslt:value-of select="$salary"/>
          </xslt:otherwise>
        </xslt:choose>
      </td>
    </tr>
    </xslt:template>
</xslt:stylesheet>
