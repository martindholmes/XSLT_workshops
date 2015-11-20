<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  exclude-result-prefixes="#all"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  version="2.0">
  <xd:doc scope="stylesheet">
    <xd:desc>
      <xd:p><xd:b>Created on:</xd:b> Nov 13, 2015</xd:p>
      <xd:p><xd:b>Author:</xd:b> mholmes</xd:p>
      <xd:p>This is a very simple stylesheet for 
      producing workabout XHTML output from
      our sample hamlet.xml file.</xd:p>
    </xd:desc>
  </xd:doc>
  
  <xsl:output method="xhtml" encoding="UTF-8" indent="yes"/>
  
<!--  The root template creates the frame for the document
     then calls apply-templates to process the TEI content. -->
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Hamlet</title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  
<!--  We suppress the teiHeader; we don't need to output this. -->
  <xsl:template match="teiHeader"/>
  
<!--  Just for now, we suppress the front element. -->
  <xsl:template match="front"/>
  
<!-- From all the major division elements, we create an HTML div. -->
  <xsl:template match="text|body|back|div">
    <div>
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
<!-- From head elements, we create an h2 element. -->
  <xsl:template match="head">
    <h2><xsl:apply-templates/></h2>
  </xsl:template>
  
<!--  From sp (speech) elements, we create another div. -->
  <xsl:template match="sp">
    <div>
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
<!--  From speaker elements, we use bold.  -->
  <xsl:template match="speaker">
    <b><xsl:apply-templates/>: </b>
  </xsl:template>
  
<!--  From lines and anonymous blocks, we output the 
     line and then add a linebreak. -->
  <xsl:template match="l|ab">
    <xsl:apply-templates/><br/>
  </xsl:template>
  
<!--  For stage directions, we create an italicized block. -->
  <xsl:template match="stage">
    <div><i><xsl:apply-templates/></i></div>
  </xsl:template>
  
</xsl:stylesheet>