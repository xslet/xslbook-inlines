<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet xmlns:book="https://github.com/xslet/2020/xslbook" xmlns:do="https://github.com/xslet/2020/xsldo" xmlns:ut="https://github.com/xslet/2020/xslutil" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><xsl:strip-space elements="*"/><xsl:template match="/*"><xsl:variable name="_data_url" select="@data-src"/><html><head><meta charset="utf-8"/><title><xsl:value-of select="@title"/></title><link rel="stylesheet" href="./unit-test.css"/><script src="./unit-test.js"/></head><body><div id="passFailBar"/><h1><xsl:value-of select="@title"/></h1><xsl:apply-templates select="describe|it"><xsl:with-param name="data_url" select="$_data_url"/></xsl:apply-templates></body></html></xsl:template><xsl:template match="describe"><xsl:param name="data_url"/><xsl:variable name="_data_url"><xsl:choose><xsl:when test="boolean(@data-src)"><xsl:value-of select="@data-src"/></xsl:when><xsl:otherwise><xsl:value-of select="$data_url"/></xsl:otherwise></xsl:choose></xsl:variable><section class="describe"><div class="title"><xsl:value-of select="@title"/></div><xsl:apply-templates select="describe|it"><xsl:with-param name="data_url" select="$_data_url"/></xsl:apply-templates></section></xsl:template><xsl:template match="it"><xsl:param name="data_url"/><xsl:variable name="_data_url"><xsl:choose><xsl:when test="boolean(@data-src)"><xsl:value-of select="@data-src"/></xsl:when><xsl:otherwise><xsl:value-of select="$data_url"/></xsl:otherwise></xsl:choose></xsl:variable><section><xsl:choose><xsl:when test="@skip='true'"><xsl:attribute name="class">it skip</xsl:attribute><div class="title"><xsl:value-of select="@title"/></div></xsl:when><xsl:otherwise><xsl:variable name="_computed"><xsl:apply-templates select="compute"><xsl:with-param name="data_url" select="$_data_url"/></xsl:apply-templates></xsl:variable><xsl:variable name="_expected"><xsl:apply-templates select="expect"/></xsl:variable><xsl:choose><xsl:when test="$_computed = $_expected"><xsl:attribute name="class">it pass</xsl:attribute><xsl:call-template name="it-content"><xsl:with-param name="expected" select="$_expected"/><xsl:with-param name="computed" select="$_computed"/></xsl:call-template></xsl:when><xsl:otherwise><xsl:attribute name="class">it fail</xsl:attribute><xsl:call-template name="it-content"><xsl:with-param name="expected" select="$_expected"/><xsl:with-param name="computed" select="$_computed"/></xsl:call-template></xsl:otherwise></xsl:choose></xsl:otherwise></xsl:choose></section></xsl:template><xsl:template name="it-content"><xsl:param name="computed"/><xsl:param name="expected"/><div class="title"><xsl:value-of select="@title"/><a class="to-show" href="javascript:void(0)" onclick="showHideComparison(this);"/></div><div class="comparison hide"><div class="legends"><span class="expected">:Expected, </span><span class="computed">:Computed</span></div><div class="code expected"><xsl:value-of select="$expected"/></div><div class="code computed"><xsl:value-of select="$computed"/></div></div></xsl:template><xsl:template match="compute/param"/></xsl:stylesheet>