<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:ut="https://github.com/xslet/2020/xslutil"
 xmlns:do="https://github.com/xslet/2020/xsldo"
 xmlns:book="https://github.com/xslet/2020/xslbook">

 <!--**
  Prints one of the following HTML elements: <b>, <u>, <i>, <s>, <sup>, <sub>, and <br>.
 -->
 <xsl:template match="b|u|i|s|sup|sub|br">
  <!--** An URL of external data file from an ancestor element. -->
  <xsl:param name="data_url"/>
  <!--** A generated ID of a base node in a data source. -->
  <xsl:param name="data_gid"/>
  <!--** Index of parent <for> element. -->
  <xsl:param name="data_index"/>
  <!--** Index set of ancestor <for> elements. -->
  <xsl:param name="data_indexes"/>
  <!--** Elements which are allowed to be applied. -->
  <xsl:param name="allow"/>
  <!--** A flag if text node is allowed. -->
  <xsl:param name="allow_text_node" select="$ut:true"/>
  <!--** Elements which are denied to be applied. -->
  <xsl:param name="deny"/>
  <!--** Any attribute 0. -->
  <xsl:param name="arg0"/>
  <!--** Any attribute 1. -->
  <xsl:param name="arg1"/>
  <!--** Any attribute 2. -->
  <xsl:param name="arg2"/>
  <xsl:variable name="_data_url">
   <xsl:call-template name="book:get_data_url">
    <xsl:with-param name="data_url" select="$data_url"/>
    <xsl:with-param name="data_index" select="$data_index"/>
    <xsl:with-param name="data_indexes" select="$data_indexes"/>
   </xsl:call-template>
  </xsl:variable>
  <xsl:variable name="_data_gid">
   <xsl:call-template name="book:get_data_gid">
    <xsl:with-param name="data_gid" select="$data_gid"/>
   </xsl:call-template>
  </xsl:variable>
  <xsl:element name="{local-name()}">
   <xsl:attribute name="id">
    <xsl:call-template name="book:get_id">
     <xsl:with-param name="data_url" select="$data_url"/>
     <xsl:with-param name="data_gid" select="$data_gid"/>
     <xsl:with-param name="data_index" select="$data_index"/>
     <xsl:with-param name="data_indexes" select="$data_indexes"/>
     <xsl:with-param name="allow" select="$allow"/>
     <xsl:with-param name="allow_text_node" select="$allow_text_node"/>
     <xsl:with-param name="deny" select="$deny"/>
     <xsl:with-param name="arg0" select="$arg0"/>
     <xsl:with-param name="arg1" select="$arg1"/>
     <xsl:with-param name="arg2" select="$arg2"/>
    </xsl:call-template>
   </xsl:attribute>
   <xsl:apply-templates>
    <xsl:with-param name="data_url" select="$_data_url"/>
    <xsl:with-param name="data_gid" select="$_data_gid"/>
    <xsl:with-param name="data_index" select="$data_index"/>
    <xsl:with-param name="data_indexes" select="$data_indexes"/>
    <xsl:with-param name="allow" select="$allow"/>
    <xsl:with-param name="allow_text_node" select="$allow_text_node"/>
    <xsl:with-param name="deny" select="$deny"/>
    <xsl:with-param name="arg0" select="$arg0"/>
    <xsl:with-param name="arg1" select="$arg1"/>
    <xsl:with-param name="arg2" select="$arg2"/>
   </xsl:apply-templates>
  </xsl:element>
 </xsl:template>


 <!--**
  Prints wavy underlined text.
 -->
 <xsl:template match="w">
  <!--** An URL of external data file from an ancestor element. -->
  <xsl:param name="data_url"/>
  <!--** A generated ID of a base node in a data source. -->
  <xsl:param name="data_gid"/>
  <!--** Index of parent <for> element. -->
  <xsl:param name="data_index"/>
  <!--** Index set of ancestor <for> elements. -->
  <xsl:param name="data_indexes"/>
  <!--** Elements which are allowed to be applied. -->
  <xsl:param name="allow"/>
  <!--** A flag if text node is allowed. -->
  <xsl:param name="allow_text_node" select="$ut:true"/>
  <!--** Elements which are denied to be applied. -->
  <xsl:param name="deny"/>
  <!--** Any attribute 0. -->
  <xsl:param name="arg0"/>
  <!--** Any attribute 1. -->
  <xsl:param name="arg1"/>
  <!--** Any attribute 2. -->
  <xsl:param name="arg2"/>
  <xsl:variable name="_data_url">
   <xsl:call-template name="book:get_data_url">
    <xsl:with-param name="data_url" select="$data_url"/>
    <xsl:with-param name="data_index" select="$data_index"/>
    <xsl:with-param name="data_indexes" select="$data_indexes"/>
   </xsl:call-template>
  </xsl:variable>
  <xsl:variable name="_data_gid">
   <xsl:call-template name="book:get_data_gid">
    <xsl:with-param name="data_gid" select="$data_gid"/>
   </xsl:call-template>
  </xsl:variable>
  <xsl:element name="u">
   <xsl:attribute name="id">
    <xsl:call-template name="book:get_id">
     <xsl:with-param name="data_url" select="$data_url"/>
     <xsl:with-param name="data_gid" select="$data_gid"/>
     <xsl:with-param name="data_index" select="$data_index"/>
     <xsl:with-param name="data_indexes" select="$data_indexes"/>
     <xsl:with-param name="allow" select="$allow"/>
     <xsl:with-param name="allow_text_node" select="$allow_text_node"/>
     <xsl:with-param name="deny" select="$deny"/>
     <xsl:with-param name="arg0" select="$arg0"/>
     <xsl:with-param name="arg1" select="$arg1"/>
     <xsl:with-param name="arg2" select="$arg2"/>
    </xsl:call-template>
   </xsl:attribute>
   <xsl:attribute name="class">wavy</xsl:attribute>
   <xsl:apply-templates>
    <xsl:with-param name="data_url" select="$_data_url"/>
    <xsl:with-param name="data_gid" select="$_data_gid"/>
    <xsl:with-param name="data_index" select="$data_index"/>
    <xsl:with-param name="data_indexes" select="$data_indexes"/>
    <xsl:with-param name="allow" select="$allow"/>
    <xsl:with-param name="allow_text_node" select="$allow_text_node"/>
    <xsl:with-param name="deny" select="$deny"/>
    <xsl:with-param name="arg0" select="$arg0"/>
    <xsl:with-param name="arg1" select="$arg1"/>
    <xsl:with-param name="arg2" select="$arg2"/>
   </xsl:apply-templates>
  </xsl:element>
 </xsl:template>

</xsl:stylesheet>
