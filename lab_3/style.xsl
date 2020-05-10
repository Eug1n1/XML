<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <html>
   <body>
   <h2>Lab_3</h2>
   <table border="1">
     <tr bgcolor="#9acd32">
       <th>Title</th>
       <th>University</th>
       <th>Plan</th>
       <th>Points</th>
     </tr>
     <xsl:for-each select="spec/note">
     <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="university"/></td>
        <td><xsl:value-of select="plan"/></td>
        <td><xsl:value-of select="points"/></td>
     </tr>
     </xsl:for-each>
   </table>
   </body>
   </html>
</xsl:template>

</xsl:stylesheet>