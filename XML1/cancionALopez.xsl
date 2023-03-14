<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:key name="grupo-ingrediente" match="ingrediente" use="../titulo"/>

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="cancionALopez.css" />
            </head>
            <body>
                <xsl:for-each select="cafe/ingrediente[generate-id() = generate-id(key('grupo-ingrediente', ../titulo))]">
                    <h1>
                        <xsl:value-of select="../titulo"/>
                    </h1>
                    <h3>
                        <xsl:value-of select="../precio"/>
                    </h3>
                    <xsl:for-each select="key('grupo-ingrediente', ../titulo)">
                        <h2>
                            <xsl:value-of select="categoria"/>
                        </h2>
                        <h2>Receta</h2>
                        <xsl:for-each select="linea">
                            <span>
                                <p>
                                    <xsl:value-of select="."/>
                                </p>
                            </span>
                        </xsl:for-each>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>