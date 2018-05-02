<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="root">
    <html lang="en" xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta charset="utf-8" />
        <title></title>
      </head>
      <body>
        <table border="1">
          <tr>
            <xsl:for-each select="prediccion/dia">
              <th>
              <xsl:value-of select="@fecha"/>
              </th>
            </xsl:for-each>
          </tr>
          <tr>
            <xsl:for-each select="prediccion/dia">
              <th>

                <!--ESTO ES ESTADO CIELO-->
                <xsl:if test="estado_cielo[@periodo='12-24']='11'">
                  <img src="fotos/11.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='11n'">
                  <img src="fotos/11n.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='12'">
                  <img src="fotos/12.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='12n'">
                  <img src="fotos/12n.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='13'">
                  <img src="fotos/13.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='14'">
                  <img src="fotos/14.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='14n'">
                  <img src="fotos/14n.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='15'">
                  <img src="fotos/15.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='17'">
                  <img src="fotos/17.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='17n'">
                  <img src="fotos/17n.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='23'">
                  <img src="fotos/23.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='24'">
                  <img src="fotos/24.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='25'">
                  <img src="fotos/25.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='26'">
                  <img src="fotos/26.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='43'">
                  <img src="fotos/43.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='44'">
                  <img src="fotos/44.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='45'">
                  <img src="fotos/45.png"/>
                </xsl:if>
                <xsl:if test="estado_cielo[@periodo='12-24']='46'">
                  <img src="fotos/46.png"/>
                </xsl:if>
                <xsl:if test="count(estado_cielo)=1">
                  <xsl:if test="estado_cielo='11'">
                    <img src="fotos/11.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='11n'">
                    <img src="fotos/11n.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='12'">
                    <img src="fotos/12.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='12n'">
                    <img src="fotos/12n.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='13'">
                    <img src="fotos/13.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='14'">
                    <img src="fotos/14.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='14n'">
                    <img src="fotos/14n.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='15'">
                    <img src="fotos/15.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='17'">
                    <img src="fotos/17.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='17n'">
                    <img src="fotos/17n.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='23'">
                    <img src="fotos/23.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='24'">
                    <img src="fotos/24.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='25'">
                    <img src="fotos/25.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='26'">
                    <img src="fotos/26.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='43'">
                    <img src="fotos/43.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='44'">
                    <img src="fotos/44.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='45'">
                    <img src="fotos/45.png"/>
                  </xsl:if>
                  <xsl:if test="estado_cielo='46'">
                    <img src="fotos/46.png"/>
                  </xsl:if>
                </xsl:if>
                <br/>
                <xsl:if test="count(temperatura/dato)!=0">
                  <xsl:value-of select="temperatura/dato[@hora='12']"/>ºC
                </xsl:if>
                <xsl:if test="count(temperatura/dato)=0">
                  <xsl:value-of select="temperatura/maxima"/>ºC
                </xsl:if>
                <!--ESTO ES ESTADO CIELO-->
              </th>

            </xsl:for-each>
          </tr>
          <!--ESTO ES PROBABILIDAD PRECIPITACION-->
          <tr>
            <xsl:for-each select="prediccion/dia">
              <xsl:if test="count(temperatura/dato)!=0">
                <xsl:value-of select="temperatura/dato[@hora='12']"/>ºC
              </xsl:if>
              <xsl:if test="count(temperatura/dato)=0">
                <xsl:value-of select="temperatura/maxima"/>ºC
              </xsl:if>
            </xsl:for-each>
          </tr>
          <tr>
            <xsl:for-each select="prediccion/dia">
            </xsl:for-each>
          </tr>
          <tr>
            <xsl:for-each select="prediccion/dia">
            </xsl:for-each>
          </tr>
          <tr>
            <xsl:for-each select="prediccion/dia">
            </xsl:for-each>
          </tr>
          <tr>
            <xsl:for-each select="prediccion/dia">
            </xsl:for-each>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
