<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head></head>
			<body>
				<h2>CANCION</h2>
				<h1>
					Titulo> <xsl:value-of select="cancion/titulo"/>
				</h1>
				<br/>
				<xsl:for-each select="cancion/letra/estrofa">
					<xsl:choose>
							<xsl:when test="tipo='estribillo'">
										<p>ESTRIBILLO:</p>
										<div class="estribillo">
											<xsl:for-each select="verso">
													<p>
    										<xsl:value-of select="."/>
    												</p>
      										</xsl:for-each>
      									</div>
      									
							</xsl:when>
							<xsl:otherwise>
										<p>(estrofa normal)</p>
										<div>
							</xsl:otherwise>
							
							
							
							
						</xsl:choose>
						
						<xsl:for-each select="verso">
											<p>
												<xsl:value-of slect="."/>
											</p>
							
      						
      
    					</xsl:for-each>	
    			<p>
	    			(Autor: <xsl:value-of select="cancion/autor"/>)
    			</p>
    			</body>
				</html>
				</xsl:template>
			</xsl:stylesheet>
