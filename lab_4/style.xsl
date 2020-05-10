<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <html>
   <body>
   <h2>Lab_4</h2>
   <table border="1">
     <tr bgcolor="#9acd32">
       <th>name</th>
       <th>surname</th>
       <th>year</th>
       <th>average</th>
     </tr>
     <xsl:for-each select="students/note">
     <xsl:sort select="year" order="ascending"/>
      <tr>
         <xsl:choose>
            <xsl:when test="average &lt; 6">
               <td bgcolor="red"><xsl:value-of select="name"/></td>
            </xsl:when>
            <xsl:when test="average = 6">
               <td bgcolor="green"><xsl:value-of select="name"/></td>
            </xsl:when>
            <xsl:otherwise>
               <td><xsl:value-of select="name"/></td>
            </xsl:otherwise>
         </xsl:choose>
         <td><xsl:value-of select="surname"/></td>
         <td><xsl:value-of select="year"/></td>
         <td><xsl:value-of select="average"/></td>
      </tr>
     </xsl:for-each>
   </table>
   </body>
   </html>
</xsl:template>

</xsl:stylesheet>