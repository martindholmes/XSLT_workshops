<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns="http://www.w3.org/1999/xhtml"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0"
  exclude-result-prefixes="#all">
  
  <xsl:output method="xml"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>A Snippet</title>
      </head>
      <body>
        <xsl:apply-templates select="child::node()"/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="lg">
    <div class="poem">
      <xsl:apply-templates select="child::node()"/>
    </div>
  </xsl:template>
  
  <xsl:template match="head">
    <h1><xsl:apply-templates select="child::node()"/></h1>
  </xsl:template>
  
  <xsl:template match="title">
    <xsl:text>“</xsl:text>
    <xsl:apply-templates select="child::node()"/>
    <xsl:text>”</xsl:text>
  </xsl:template>
  
  <xsl:template match="l">
    <p class="metrical_line">
      <xsl:apply-templates select="child::node()"/>
    </p>
  </xsl:template>
  
  <xsl:template match="note">
    <p style="font-family: serif; font-size: small; text-align: right;">
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
</xsl:stylesheet>