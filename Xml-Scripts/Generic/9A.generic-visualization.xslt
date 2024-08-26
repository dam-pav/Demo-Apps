<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head/>
			<body>
				<ul>
					<xsl:apply-templates/>
				</ul>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="*">
		<li>
			<xsl:value-of select="name()"/>
			<xsl:if test="text()">
				<xsl:text>: </xsl:text>
				<xsl:apply-templates select="text()"/>
			</xsl:if>
			<xsl:if test="@*">
				<xsl:apply-templates select="@*"/>
			</xsl:if>
			<xsl:if test="*">
				<ul>
					<xsl:apply-templates/>
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<xsl:template match="@*">
		<xsl:text> (</xsl:text>
		<xsl:value-of select="name()"/>
		<xsl:text>: </xsl:text>
		<xsl:value-of select="."/>
		<xsl:text>)</xsl:text>
	</xsl:template>
</xsl:stylesheet>