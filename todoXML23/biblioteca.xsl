<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
 <xsl:template match="/">
	<html><head><link rel="stylesheet" type="text/css" href="biblioteca.css" /></head>
		<body>
      		<xsl:apply-templates />
    	</body></html>
  </xsl:template>
  
  
  <xsl:template match="libro">
     <p>
     <xsl:value-of select="autor"/>
     </p>
     <h2>
     <xsl:value-of select="titulo"/>
     </h2>     
  </xsl:template>
  
</xsl:stylesheet>