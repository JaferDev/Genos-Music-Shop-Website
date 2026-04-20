<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/MusicLibrary">
  <html lang="en">
    <head>
      <meta charset="UTF-8"></meta>
      <title>Coursework1 - Songs</title>

      <link rel="stylesheet" href="CW1.css"></link>
      <link href="https://fonts.googleapis.com/css2?family=Orbitron&amp;display=swap" rel="stylesheet"></link>
      <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@300;400;600&amp;display=swap" rel="stylesheet"></link>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"></link>
    </head>

    <body>
      <div class="background">

        <div class="header">  
          <div class="logo-container">
            <div class="logo-row">
              <img src="Genos3.jpeg" class="logo-img logo-left"></img>
              <img src="Genos7.jpeg" class="logo-img logo-center"></img>
              <img src="Genos3.jpeg" class="logo-img logo-right"></img>
            </div>
          </div>
        </div>

        <div class="navbarContainer">
          <div class="container2">
            <div class="navbar1">
              <nav>
                <ul>
                  <li><a class="pages" href="Home_Genos.html">Home</a></li>
                  <li><a class="pages" href="CW1.html#Genres">Genres</a></li>
                  <li><a class="pages" href="CW1.html#contact">Contact</a></li>
                  <li><a class="pages" href="CW1.html">About Us</a></li>
                  <li><a class="pages" href="songs.xml">Songs</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </div>

        <h1 class="artists-title">Music Library</h1>
        <p class="artists-subtitle">Explore your favorite tracks by genre</p>

        <div class="artists-container">
          <xsl:for-each select="GenreCategory/Song">
            <div class="artist-box">
              <div class="cover-container">
                <img src="{coverArt}" class="cover-art-img" alt="Album Cover"></img>
              </div>
              
              <div class="artist-profile">
                <img src="{image}" class="artist-img" alt="Artist Photo"></img>
              </div>
              
              <h2 class="artist-name"><xsl:value-of select="title" /></h2>
              <p class="artist-bio"><i>By <xsl:value-of select="artistName" /></i></p>
              
              <hr style="border: 0.5px solid #444; margin: 15px 0;"></hr>
              
              <p class="artist-subinfotitle"><b>Genre:</b></p>
              <p class="artist-subinfo"><xsl:value-of select="genre"/></p>
            </div>
          </xsl:for-each>
        </div>
      </div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
