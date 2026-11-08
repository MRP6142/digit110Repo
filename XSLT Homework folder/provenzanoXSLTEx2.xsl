<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Organizations in Digital Mitford</title>
            </head>
            <body>
                <h1>Digital Mitford Lists of Organizations</h1> 
                <!--ebb: XPath shows us we have three <listOrg> elements in the si-modified.xml source document. 
                   Let's set up ONE numbered list for the OUTER list using HTML's <ol> element.
               In HTML, an <ol> looks like this: 
                   <ol>
                       <li>List 1 heading</li>
                       <li>List 2 heading</li>
                       <li>List 3 heading</li>
                   </ol>
               -->
                <ol>
                    <xsl:apply-templates select="descendant::listOrg"/>
                </ol> 
            </body> 
            
        </html>
    </xsl:template> 
    
    
    <!-- ebb: Now, write new template rules to 
       1) Handle processing of each listOrg, 
      to output the heading and create an internal bulleted list with <ul> every time it processes a listOrg element. 
       2) Handle processing of the organization list items for each internal list.
   -->
    
    <!-- mrp: rule template for 1 -->
    <xsl:template match="listOrg">
        <li>
            <xsl:apply-templates select="child::head"/>
            <ul> 
                <xsl:apply-templates select="child::org"/> <!--mrp: Is this right? -->    
            </ul>   
        </li>
    </xsl:template>
    
    <!-- mrp: rule template for 2 -->
    
    <xsl:template match="org">
        <li>
            <xsl:apply-templates select="child::orgName"/>
        </li>
    </xsl:template>
    
    
    
    
</xsl:stylesheet>