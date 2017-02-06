<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <xsl:param name="section">no</xsl:param>
  <xsl:template match="/">



    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>The Great Plains During World War II</title>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
        <link href="css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
      </head>


      


      <body>
        <div class="all">

          
          <div class="header">
            <a href="index.html"><img src="images/template/header.gif" alt="The Great Plains During World War II"/></a>
          </div>
          

          <div id="col1">
            <div class="list">
              <ul class="mainmenu">
                <li>
                  <a href="intro.html?section=intro">Introduction</a>
                </li>
                <xsl:if test="$section='intro'">
                  <ul class="sublist">
                    <li>
                      <a href="isolationism.html?section=intro">Isolationism</a>
                    </li>
                  </ul>
                </xsl:if>
                <li>
                  <a href="thehomefront.html?section=homefront">The Home Front</a>
                </li>
                <xsl:if test="$section='homefront'">
                  <ul class="sublist">
                    <li>
                      <a href="warindustries.html?section=homefront">War Industries</a>
                    </li>
                    <li>
                      <a href="women.html?section=homefront">Women</a>
                    </li>
                    <li>
                      <a href="homedefense.html?section=homefront">Home Defense</a>
                    </li>
                    <li>
                      <a href="dailylife.html?section=homefront">Daily Life</a>
                    </li>
                    <li>
                      <a href="rationing.html?section=homefront">Rationing</a>
                    </li>
                  </ul>
                </xsl:if>
                <li>
                  <a href="agriculture.html">Agriculture</a>
                </li>
                <li>
                  <a href="military.html">Military Affairs</a>
                </li>
                <li>
                  <a href="archive.html?section=archive">Archive</a>
                </li>
                <xsl:if test="$section='archive'">
                  <ul class="sublist">
                    <li>
                      <a href="govdocs.html?section=archive">Government Documents</a>
                    </li>
                    <li>
                      <a href="congressmen.html?section=archive">Congressmen</a>
                    </li>
                    <li>
                      <a href="newspapers.html?section=archive">Newspapers</a>
                    </li>
                    <li>
                      <a href="imagelist.html?section=archive">Images</a>
                    </li>
                    <li>
                      <a href="additionalreadings.html?section=archive">Additional Readings</a>
                    </li>

                    <li>
                      <a href="suggestedreadings.html?section=archive">Suggested Readings</a>
                    </li>
                  </ul>
                </xsl:if>
                <li>
                  <a href="conclusion.html">Conclusion</a>
                </li>
              </ul>
              <br/>
             <!--<img src="images/template/thf.png"/> -->
            </div>

            <div class="content">
              <div class="text">


                <xsl:apply-templates/>

              </div>
            </div>
          </div>
        </div>

        <div class="footer"><a href="http://www.unl.edu"><img src="images/template/unl_logo.gif" border="0" /></a>
          <h4><a href="about.html">About</a></h4>
          <h5>Project Director: R. Douglas Hurt, Purdue University</h5>
          <h5>A project from  the <a href="http://plainshumanities.unl.edu/">Plains Humanities Alliance</a> and the <a href="http://cdrh.unl.edu">Center for Digital Research in the Humanities</a></h5>
          
          <h5>Copyright 2008 <a href="http://www.unl.edu">University of Nebraska&#8211;Lincoln</a></h5>
          
          
        </div>
      </body>
    </html>



  </xsl:template>

  <xsl:template match="teiHeader"/>


  <xsl:template match="docAuthor">
    <p class="author">
      <xsl:apply-templates/>
    </p>
  </xsl:template>


  <xsl:template match="byline">
    <p class="byline">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="docDate">
    <p class="author">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="head[@type='main']">
    <h2>
      <xsl:apply-templates/>
    </h2>
  </xsl:template>


  <xsl:template match="head[not(@type)]">

    <h2>
      <xsl:apply-templates/>
    </h2>
  </xsl:template>



  <xsl:template match="head[@type='sub']">
    <a>
        <xsl:attribute name="name"><xsl:value-of select="@id"/></xsl:attribute><xsl:text> </xsl:text></a>
    
    <h3>
      
      <xsl:apply-templates/>
      
    </h3>
  </xsl:template>




  <xsl:template match="text[.//pb]">
    <div class="main">
      <xsl:apply-templates/>
    </div>
  </xsl:template>




  <xsl:template match="figure">
    <xsl:choose>

      <xsl:when test="attribute::entity">
        <a>
          <xsl:attribute name="href">
            <xsl:text>images/figures/</xsl:text>
            <xsl:value-of select="@entity"/>
            <xsl:text>.jpg</xsl:text>
          </xsl:attribute>
          <img>
            <xsl:attribute name="src">
              <xsl:text>images/figures/thumbs/</xsl:text>
              <xsl:value-of select="@entity"/>
              <xsl:text>.jpg</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="class">
              <xsl:text>figure</xsl:text>
            </xsl:attribute>
          </img>

        </a>
      </xsl:when>
      <xsl:otherwise/>

    </xsl:choose>
  </xsl:template>

  <xsl:template match="milestone[@unit='smallbar']">
    <hr/>
  </xsl:template>


  <xsl:template match="sp">
    <div class="speakerSection">
      <xsl:apply-templates/>
    </div>
  </xsl:template>

  <xsl:template match="speaker">
    <p class="speaker">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>




  <xsl:template match="ref">

    <a>
      <xsl:attribute name="href">
        <xsl:if test="@n"></xsl:if><xsl:value-of select="@n"/>
        <xsl:if test="@target"><xsl:text>#</xsl:text><xsl:value-of select="@target"/></xsl:if>
        
     </xsl:attribute>

      <xsl:value-of select="."/>

    </a>
  </xsl:template>



  <!-- <xsl:template match="xref[@n]">
    <a href="{@n}.html">
      <xsl:apply-templates/>
    </a>
  </xsl:template>-->

  <xsl:template match="letter">
    <blockquote>
      <xsl:apply-templates/>
    </blockquote>
  </xsl:template>

  <xsl:template match="lb">
    <xsl:apply-templates/>
    <br/>
  </xsl:template>

  <xsl:template match="hi[@rend='roman']">
    <span class="roman">
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <xsl:template match="hi[@rend='italic']">
    <em>
      <xsl:apply-templates/>
    </em>
  </xsl:template>

  <xsl:template match="hi[@rend='italics']">
    <em>
      <xsl:apply-templates/>
    </em>
  </xsl:template>



  <xsl:template match="hi[@rend='bold']">
    <b>
      <xsl:apply-templates/>
    </b>
  </xsl:template>

  <xsl:template match="hi[@rend='quoted']">
    <xsl:text>"</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>"</xsl:text>
  </xsl:template>

  <xsl:template match="hi[@rend='underline']">
    <u>
      <xsl:apply-templates/>
    </u>
  </xsl:template>

  <xsl:template match="hi[@rend='super']">
    <sup>
      <xsl:apply-templates/>
    </sup>
  </xsl:template>

  <xsl:template match="hi[@rend='subscript']">
    <sub>
      <xsl:apply-templates/>
    </sub>
  </xsl:template>

  <xsl:template match="hi[@rend='center']">
    <center>
      <xsl:apply-templates/>
    </center>
  </xsl:template>

  <xsl:template match="hi[@rend='smallCaps']">
    <span class="smallcaps">
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <xsl:template match="hi[@rend='right']">
    <div class="right">
      <xsl:apply-templates/>
    </div>
  </xsl:template>

  <xsl:template match="body">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="list">
    <ul>
      <xsl:apply-templates select="./item"/>
    </ul>
  </xsl:template>

  <xsl:template match="item">
    <li>
      <xsl:apply-templates/>
    </li>
  </xsl:template>


  <xsl:template match="item/label">
    <strong>
      <xsl:apply-templates/>
    </strong>
  </xsl:template>

  <xsl:template match="figure[@entity]">

    <xsl:choose>
      <xsl:when test="//figure[@rend='photograph']">
        <div class="image">
          <a href="images/figures/{@entity}.jpg">
            <img src="images/figures/thumbs/{@entity}.jpg" alt="{@entity}"/>
          </a>
          
          <p class="figDesc">
            
            <xsl:apply-templates select="figDesc"/>
            
          </p>
        </div>
      </xsl:when>
      <xsl:otherwise>
        <div class="right">
          <a href="images/figures/{@entity}.jpg">
            <img src="images/figures/thumbs/{@entity}.jpg" alt="{@entity}"/>
          </a>

          <p class="figDesc">

            <xsl:apply-templates select="figDesc"/>

          </p>
        </div>
      </xsl:otherwise>
    </xsl:choose>




  </xsl:template>

  <xsl:template match="term | foreign | emph | title[not(@level='a')]">
    <em>
      <xsl:apply-templates/>
    </em>
  </xsl:template>

  <xsl:template match="revisionDesc">
    <!-- hide -->
  </xsl:template>

  <xsl:template match="publicationStmt">
    <!-- hide -->
  </xsl:template>

  <xsl:template match="sourceDesc">
    <!-- hide -->
  </xsl:template>



  <xsl:template match="bibl">
    <p class="bibl">
      <xsl:apply-templates/>
    </p>
  </xsl:template>



  <xsl:template match="notesStmt">
    <p class="top">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="table">
    <table>
      <xsl:apply-templates/>
    </table>
  </xsl:template>

  <xsl:template match="row">
    <tr>
      <xsl:apply-templates/>
    </tr>
  </xsl:template>

  <xsl:template match="cell">
    <td>
      <xsl:apply-templates/>
    </td>
  </xsl:template>

  <xsl:template match="placeName[@n='state']">
    <!-- Hide -->
  </xsl:template>

  <xsl:template match="orgName[@n='body']">
    <xsl:apply-templates/>
    <br/>
  </xsl:template>
  <xsl:template match="persName">
    <strong>
      <xsl:apply-templates/>
    </strong>
    <br/>
  </xsl:template>

  <xsl:template match="note[@type='bio']">
    <xsl:apply-templates/>
    <br/>
  </xsl:template>

  <xsl:template match="note[@type='bio_source']">
    <xsl:text>Source: </xsl:text>
    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="."/>
        <xsl:text>.html</xsl:text>
      </xsl:attribute>
      <xsl:value-of select="."/>

    </a>
    <br/>

  </xsl:template>

  <xsl:template match="orgName[@n='political']">
    <xsl:text>Political party: </xsl:text>
    <xsl:value-of select="."/>
    <br/>
    <xsl:text>Congresses served: </xsl:text>
  </xsl:template>

  <xsl:template match="orgName[@n='congress']">

    <xsl:apply-templates/>
    <xsl:text> </xsl:text>


  </xsl:template>

  <xsl:template match="placeName[@n='hometown']">
    <br/>
    <xsl:text>Hometown: </xsl:text>
    <xsl:apply-templates/>
    <br/>
  </xsl:template>

  <xsl:template match="note[@type='topic']"></xsl:template>



</xsl:stylesheet>
