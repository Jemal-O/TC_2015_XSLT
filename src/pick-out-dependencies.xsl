<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
		"use strict";
		window.links = [
		<xsl:variable name="varString">
		<xsl:for-each select="packJSStructure/file|packJSStructure/module">
		    <xsl:for-each select="dependencies/dependency">
			    {source:"<xsl:value-of select="../../id"/>",
				 target: "<xsl:value-of select="."/>"}, 
			</xsl:for-each>
		</xsl:for-each>
		</xsl:variable>
		<xsl:value-of select="substring($varString,0,string-length($varString)-5)"/>
		]
	</xsl:template>
</xsl:stylesheet>