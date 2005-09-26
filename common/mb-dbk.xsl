<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
  
  <xsl:import href="file:///usr/share/xml/docbook/stylesheet/nwalsh/xhtml/chunk.xsl"/>

  <xsl:param name="html.stylesheet" select="'mb.css'"/>
  <xsl:param name="admon.graphics" select="1"/> 
  <xsl:param name="admon.graphics.extension" select="'.png'" />
  <xsl:param name="navig.graphics" select="1" />
  <xsl:param name="navig.graphics.extension" select="'.png'" />
  <xsl:param name="section.autolabel" select="1" />
  <xsl:param name="chapter.autolabel" select="1" />
  <xsl:param name="navig.showtitles" select="0" />


  <xsl:template name="user.header.content">
  <p class="mbheader"><a href="http://projects.o-hand.com/matchbox"><img src="images/mb-logo-75.png" border="0"/></a></p>
  </xsl:template>

  <xsl:template name="user.footer.content">
    <div id="footer">&#x00A9; 2005 <a href="http://www.o-hand.com">OpenedHand Ltd</a>.</div>
  </xsl:template>

</xsl:stylesheet>
