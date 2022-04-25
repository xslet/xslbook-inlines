<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
 xmlns:book="https://github.com/xslet/2020/xslbook"
 xmlns:do="https://github.com/xslet/2020/xsldo"
 xmlns:ut="https://github.com/xslet/2020/xslutil"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:import href="unit/unit-test.xsl"/>

 <xsl:strip-space elements="*"/>

 <xsl:template match="/xslbook">
  <xsl:variable name="_data_url">
   <xsl:call-template name="book:get_data_url"/>
  </xsl:variable>
  <html>
   <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <title>
     <xsl:value-of select="title"/>
    </title>
    <link rel="stylesheet" type="text/css" href="{$book:xsl_dir}/sample.css"/>
    <link rel="stylesheet" type="text/css" href="./sample.css"/>
   </head>
   <body>
    <main>
     <h1><xsl:value-of select="title"/></h1>
     <xsl:for-each select="body">
      <div class="body xslbook-body">
       <xsl:apply-templates>
        <xsl:with-param name="data_url" select="$_data_url"/>
       </xsl:apply-templates>
      </div>
     </xsl:for-each>
    </main>
   </body>
  </html>
 </xsl:template>

</xsl:stylesheet>
