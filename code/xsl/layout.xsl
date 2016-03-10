<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" />

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <title><xsl:value-of select="page/@title"/></title>
      <link rel="stylesheet" href="styles.css" />
      <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    </head>
    <body>
      <div id="container">
        <div id="header">
          <h1>My Website</h1>
          <ul class="navigation">
            <li>
              <a href="index.xml">
                <xsl:if test="page/@selected-navigation-item = 'home'">
                  <xsl:attribute name="class">selected</xsl:attribute>
                </xsl:if>
                Home
              </a>
            </li>
            <li>
              <a href="about.xml">
                <xsl:if test="page/@selected-navigation-item = 'about'">
                  <xsl:attribute name="class">selected</xsl:attribute>
                </xsl:if>
                About
              </a>
            </li>
            <li>
              <a href="contact.xml">
                <xsl:if test="page/@selected-navigation-item = 'contact'">
                  <xsl:attribute name="class">selected</xsl:attribute>
                </xsl:if>
                Contact
              </a>
            </li>
          </ul>
        </div>
        <div id="content">
          <xsl:copy-of select="page/content" />
        </div>
        <div id="footer">
          <p>Lorem ipsum dolor sit. &#169; 2009</p>
        </div>
      </div>
    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
