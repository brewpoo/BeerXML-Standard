<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:b="urn:beerxml:v2"
  xmlns:rec="urn:beerxml:recipe:v2"
  xmlns:ferm="urn:beerxml:fermentable:v2"
  xmlns:misc="urn:beerxml:miscellaneous:v2"
  xmlns:yeast="urn:beerxml:yeast:v2"
  xmlns:hop="urn:beerxml:hop:v2"
  version="1.0"
  >
 <xsl:template match="/b:beer_xml">
   <html>
    <body>
      <div>
        <h1><xsl:value-of select="/b:beer_xml/b:recipes/b:recipe/rec:name"/></h1>
        <div>
          <h1>Ingredients for <xsl:value-of select="/b:beer_xml/b:recipes/b:recipe/rec:batch_size"/> litres</h1>

          <h2>Hops</h2>
          <ul>
            <xsl:for-each
             select="/b:beer_xml/b:recipes/b:recipe/rec:hops/hop:hop">
              <li><xsl:value-of select="hop:name"/></li>
            </xsl:for-each>
          </ul>

          <h2>Fermentables</h2>
          <ul>
            <xsl:for-each
             select="/b:beer_xml/b:recipes/b:recipe/rec:fermentables/ferm:fermentable">
              <li><xsl:value-of select="ferm:name"/></li>
            </xsl:for-each>
          </ul>
          <h2>Flavourings</h2>
          <ul>
            <xsl:for-each
             select="/b:beer_xml/b:recipes/b:recipe/rec:miscs/misc:misc">
              <li><xsl:value-of select="misc:name"/></li>
            </xsl:for-each>
          </ul>
          <h2>Yeasts</h2>
          <ul>
            <xsl:for-each
             select="/b:beer_xml/b:recipes/b:recipe/rec:yeasts/yeast:yeast">
              <li><b><xsl:value-of select="yeast:name"/></b> from <em><xsl:value-of select="yeast:laboratory"/></em></li>
            </xsl:for-each>
          </ul>
        </div>
      </div>
    </body>
  </html>


 </xsl:template>
</xsl:stylesheet>
