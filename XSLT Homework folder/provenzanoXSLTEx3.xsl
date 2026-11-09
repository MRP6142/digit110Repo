<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/> 
    
    <xsl:template match="QuestEvent">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template> 
    
    <xsl:template match="QuestItem">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template> 
    
    <xsl:template match="character">
        <span class="character">
            <xsl:apply-templates/>
        </span> 
    </xsl:template> 
    
    <xsl:template match="epithet">
        <span class="epithet">
            <xsl:apply-templates/>
        </span>
    </xsl:template> 
    
    <xsl:template match="faction[@ref='MythicDawn']">
        <span class="MythicDawn"> 
            <xsl:apply-templates/>
        </span>
    </xsl:template> 
    
    <xsl:template match="location">
        <span class="location">
            <xsl:apply-templates/>
        </span>
    </xsl:template> 
    
</xsl:stylesheet>