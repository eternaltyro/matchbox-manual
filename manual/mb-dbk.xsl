<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
  
  <xsl:import href="file:///usr/share/xml/docbook/stylesheet/nwalsh/xhtml/chunk.xsl"/>

  <xsl:param name="html.stylesheet" select="'mb.css'"/>
  <!-- <xsl:param name="admon.graphics" select="1"/> -->

<!--

  <xsl:template name="article.titlepage">
    <div id="header">
      <h1><xsl:value-of select="articleinfo/title"/></h1>
    </div>
    <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/authorgroup"/>
    <xsl:apply-templates mode="article.titlepage.recto.auto.mode" select="articleinfo/author"/>
  </xsl:template>

  <xsl:template match="articleinfo/author" mode="titlepage.mode">
    <div class="{name(.)}">
      <b><xsl:call-template name="person.name"/></b>
      <xsl:text> </xsl:text>
      <xsl:apply-templates mode="titlepage.mode" select="./email"/>
    </div>
  </xsl:template>

-->

  <xsl:template name="user.footer.content">
    <div id="footer">&#x00A9; 2005 <a href="http://www.o-hand.com">Opened Hand Ltd</a>.</div>
  </xsl:template>

</xsl:stylesheet>
