<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--CREDIT: HTML by https://www.github.com/ivanmodest12-->
<!--CREDIT: XSLT by https://www.github.com/JaferDev-->
<xsl:template match="/Artists">
  <html lang="en">
    <head>
      <meta charset="UTF-8"></meta>
      <title>Coursework1</title>

      <link rel="stylesheet" href="CW1.css"></link>
      <link href="https://fonts.googleapis.com/css2?family=Orbitron&amp;display=swap" rel="stylesheet"></link>
      <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@300;400;600&amp;display=swap" rel="stylesheet"></link>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"></link>
    </head>

    <body>
      <div class="background">

        <!-- HEADER -->
        <div class="header">  
          <div class="logo-container">
            <div class="logo-row">
              <img src="Genos3.jpeg" class="logo-img logo-left"></img>
              <img src="Genos7.jpeg" class="logo-img logo-center"></img>
              <img src="Genos3.jpeg" class="logo-img logo-right"></img>
            </div>
          </div>
        </div>

        <!-- NAVBAR -->
        <div class="navbarContainer">
          <div class="container2">
            <div class="navbar1">
              <nav>
                <ul>
                  <li><a class="pages" href="Home_Genos.html">Home</a></li>
                  <li><a class="pages" href="CW1.html#Genres">Genres</a></li>
                  <li><a class="pages" href="CW1.html#contact">Contact</a></li>
                  <li><a class="pages" href="CW1.html">About Us</a></li>
                  <li><a class="pages" href="#">Songs</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </div>

        <h1 class="artists-title">Featured Artists</h1>
        <p class="artists-subtitle">Meet the talented artists shaping today’s music scene</p>

        <!-- ARTISTS SECTION -->
        <div class="artists-container">
          <xsl:for-each select="Artist">
            <div class="artist-box">
              <img class="artist-img" src="{src}"></img>
              <h2 class="artist-name"><xsl:value-of select="name" /></h2>
              <p class="artist-bio"><xsl:value-of select="desc" /></p>
              <p class="artist-subinfotitle"><b>Awards:</b></p>
              <p class="artist-subinfo"><xsl:value-of select="awards"/></p>
              <p class="artist-subinfotitle"><b>Known For:</b></p>
              <p class="artist-subinfo"><xsl:value-of select="popularAlbums"/></p>
            </div>
          </xsl:for-each>
        </div>
      </div>
    </body>
  </html>

</xsl:template>
</xsl:stylesheet>