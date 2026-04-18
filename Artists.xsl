<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="https://w3.org/1999/XSL/Transform">

<xsl:template match="/Artists">
  <html lang="en">
    <head>
      <meta charset="UTF-8">
      <title>Coursework1</title>

      <link rel="stylesheet" href="CW1.css">
      <link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@300;400;600&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    </head>

    <body>
      <div class="background">

        <!-- HEADER -->
        <div class="header">
          <div class="logo-container">
            <div class="logo-row">
              <img src="Genos3.jpeg" class="logo-img logo-left">
              <img src="Genos7.jpeg" class="logo-img logo-center">
              <img src="Genos3.jpeg" class="logo-img logo-right">
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

        <xsl:for-each select="Artists">
          <div class="artist-box">
            <!--Placeholder Image, To add functionality for images-->
            <img src="lilbaby.jpg" class="artist-img">
            <h2 class="artist-name"><xsl:value-of select="name" /></h2>
            <p class="artist-bio"><xsl:value-of select="desc" /></p>
            <!--To add functionality for multiple awards and popular albums-->
          </div>
        </xsl:for-each>
      </div>
    </body>
  </html>

</xsl:template>
</xsl:stylesheet>