<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="#all"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0"
  version="2.0">

<!-- 
    This is possibly the simplest XSLT stylesheet you'll ever use. 
    It processes a TEI file (hamlet.xml) and creates a text file 
    containing some simple statistics.
-->
  
<!-- For output we want to create a text file. -->
  <xsl:output method="text" encoding="UTF-8"/>
  
<!-- 
    We have only one template. This template matches "/",
    which is the root of the document, and everything that 
    happens is done here. 
-->
  <xsl:template match="/">
    <!--  Output some text as a title.  -->
    <xsl:text>STATISTICS FOR HAMLET
    
    </xsl:text>
    <!-- Create some statistics, using simple XPath.   -->
    
    <xsl:text>Number of speeches: </xsl:text>
    <xsl:value-of select="count(//sp)"/>
  </xsl:template>
  
</xsl:stylesheet>