<?xml version="1.0" encoding="UTF-8"?>
<!--
    
Oxygen float image
Copyright (c) 1998-2017 Syncro Soft SRL, Romania.  All rights reserved.
Licensed under the terms stated in the license file LICENSE 
available in the base directory of this plugin.

-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
  >
<!--For newer DITA OTs, this commented out xsl:template should be used instead of the current one-->
<!--<xsl:template match="*[contains(@class,' topic/image ')]" name="image">
    <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-startprop ')]" mode="outofline"/>
    <fo:float>
      <xsl:choose>
        <xsl:when test="contains(@outputclass, 'float-left')">
          <xsl:attribute name="float">left</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="float">right</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="empty(@href)"/>
        <xsl:otherwise>
          <fo:block xsl:use-attribute-sets="image__block">
            <xsl:call-template name="commonattributes"/>
            <xsl:apply-templates select="." mode="placeImage">
              <xsl:with-param name="imageAlign" select="@align"/>
              <xsl:with-param name="href">
                <xsl:choose>
                  <xsl:when test="@scope = 'external' or opentopic-func:isAbsolute(@href)">
                    <xsl:value-of select="@href"/>
                  </xsl:when>
                  <xsl:when test="exists(key('jobFile', @href, $job))">
                    <xsl:value-of select="key('jobFile', @href, $job)/@src"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="concat($input.dir.url, @href)"/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:with-param>
              <xsl:with-param name="height" select="@height"/>
              <xsl:with-param name="width" select="@width"/>
            </xsl:apply-templates>
          </fo:block>
          <xsl:if test="$artLabel='yes'">
            <fo:block>
              <xsl:apply-templates select="." mode="image.artlabel"/>
            </fo:block>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </fo:float>
    <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-endprop ')]" mode="outofline"/>
  </xsl:template>-->

    
  <xsl:template match="*[contains(@class,' topic/image ')][contains(@outputclass, 'float-left')
    or contains(@outputclass, 'float-right')
    ]">
    <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-startprop ')]" mode="outofline"/>
    <fo:float>
      <xsl:choose>
        <xsl:when test="contains(@outputclass, 'float-left')">
          <xsl:attribute name="float">left</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="float">right</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="empty(@href)"/>
        <xsl:otherwise>
          <!-- We can only place blocks inside floats. -->
          <fo:block xsl:use-attribute-sets="image__block">
            <xsl:call-template name="commonattributes"/>
            <xsl:apply-templates select="." mode="placeImage">
              <xsl:with-param name="imageAlign" select="@align"/>
              <xsl:with-param name="href" select="if (@scope = 'external' or opentopic-func:isAbsolute(@href)) then @href else concat($input.dir.url, @href)"/>
              <xsl:with-param name="height" select="@height"/>
              <xsl:with-param name="width" select="@width"/>
            </xsl:apply-templates>
          </fo:block>
        </xsl:otherwise>
      </xsl:choose>
    </fo:float>
    <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-endprop ')]" mode="outofline"/>
  </xsl:template>
</xsl:stylesheet>
