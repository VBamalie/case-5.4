<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 5
   Case Problem 4

   Cairn Camping Store XSLT Style Sheet
   Author: Amalie Von Behren
   Date:   06/26/2024

   Filename:         camping.xsl
   Supporting Files: 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output 
   method="html" 
   doctype-system="about:legacy-compat" 
   encoding="UTF-8"
   indent="yes"/>
   <xsl:template match="/">
      <html>
         <head>
            <title> Cairn Camping Store</title>
         </head>
         <body>
            <header>
               <h1>Cairn Camping Store</h1>
            </header>
            <table border="1">
               <tr>
                  <th>Name</th>
                  <!-- <th>Address</th>
                  <th>ID</th> -->
               </tr>
               <xsl:for-each select="cusomer/cd">
                  <tr><xsl:value-of select="name"/></tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>