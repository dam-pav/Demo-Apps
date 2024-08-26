<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html" indent="yes" />

   <xsl:template match="/">
      <html>
         <head>
            <title>SFR - Statistika finančnih računov</title>
            <style>
               body {
                  font-family: Arial, sans-serif;
               }
               h1 {
                  text-align: left;
                  margin-bottom: 20px;
                  font-size: 24px;
               }
               .box {
                  background-color: #f0f0f0;
                  border: 1px solid #000;
                  padding: 10px;
                  margin-bottom: 20px;
               }
               .obrazec {
                  background-color: #e0e0e0;
               }
               .box h2, .box h3 {
                  margin-top: 0;
                  margin-bottom: 10px;
               }
               .fields {
                  display: grid;
                  grid-template-columns: 1fr 1fr;
                  gap: 10px;
               }
               .field {
                  display: flex;
                  justify-content: space-between;
               }
               .field-label {
                  font-weight: bold;
                  text-align: right;
                  width: 45%;
               }
               .field-value {
                  text-align: left;
                  width: 55%;
               }
               table {
                  width: 100%;
                  table-layout: fixed; /* Ensure equal width for P columns */
                  border-collapse: collapse;
                  margin-top: 10px;
               }
               th, td {
                  border: 1px solid #000;
                  padding: 5px;
                  text-align: center;
               }
               th {
                  background-color: #d3d3d3;
               }
               tbody tr:nth-child(even) {
                  background-color: #dcdcdc;
               }
               tbody tr:nth-child(odd) {
                  background-color: #ffffff;
               }
            </style>
         </head>
         <body>
            <h1>SFR - Statistika finančnih računov</h1>

            <!-- Ident Section -->
            <div class="box ident">
               <h2>Ident</h2>
               <div class="fields">
                  <div class="field">
                     <span class="field-label">Vrsta:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/Ident/@vrsta"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Krog:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/Ident/@krog"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Datum:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/Ident/Datum"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Ura:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/Ident/Ura"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Način predložitve:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/Ident/NacinPredlozitve"/></span>
                  </div>
               </div>
            </div>

            <!-- Osnovni Podatki Section -->
            <div class="box osnovni-podatki">
               <h2>Osnovni podatki</h2>
               <div class="fields">
                  <div class="field">
                     <span class="field-label">Šifra proračunskega uporabnika:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/SifUpor"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Matična številka:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/MaticnaStevilka10"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Davčna številka:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/DavcnaStevilka"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Sektor:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/Sektor"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Ime:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/Ime"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Sedež:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/Sedez"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Odgovorna oseba:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/OdgovornaOseba"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Telefonska številka:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/TelefonskaStevilka"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Email:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/Email"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Vodja podjetja:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/VodjaPodjetja"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Datum:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/Datum"/></span>
                  </div>
                  <div class="field">
                     <span class="field-label">Kraj:</span> <span class="field-value"><xsl:value-of select="AjpesDokument/OsnovniPodatki/Kraj"/></span>
                  </div>
               </div>
            </div>

            <!-- Obrazci Section -->
            <div class="box obrazci">
               <h2>Obrazci</h2>
               <xsl:for-each select="AjpesDokument/Obrazci/Obrazec">
                  <div class="box obrazec">
                     <h3>Obrazec ID: <xsl:value-of select="@id"/></h3>
                     <table>
                        <thead>
                           <tr>
                              <th>Aop ID</th>
                              <xsl:for-each select="Aop[1]/P">
                                 <xsl:variable name="sfrCol">
                                       <xsl:choose>
                                          <xsl:when test="@s='1'">S.0</xsl:when>
                                          <xsl:when test="@s='2'">S.1</xsl:when>
                                          <xsl:when test="@s='3'">S.11</xsl:when>
                                          <xsl:when test="@s='4'">S.12</xsl:when>
                                          <xsl:when test="@s='5'">S.121</xsl:when>
                                          <xsl:when test="@s='6'">S.122+S.123</xsl:when>
                                          <xsl:when test="@s='7'">S.124</xsl:when>
                                          <xsl:when test="@s='8'">S.125+S.127</xsl:when>
                                          <xsl:when test="@s='9'">S.126</xsl:when>
                                          <xsl:when test="@s='10'">S.128</xsl:when>
                                          <xsl:when test="@s='11'">S.129</xsl:when>
                                          <xsl:when test="@s='12'">S.13</xsl:when>
                                          <xsl:when test="@s='13'">S.1311</xsl:when>
                                          <xsl:when test="@s='14'">S.1313</xsl:when>
                                          <xsl:when test="@s='15'">S.1314</xsl:when>
                                          <xsl:when test="@s='16'">S.14</xsl:when>
                                          <xsl:when test="@s='17'">S.15</xsl:when>
                                          <xsl:when test="@s='18'">S.2</xsl:when>
                                          <xsl:when test="@s='19'">S.21</xsl:when>
                                          <xsl:when test="@s='20'">S.2111</xsl:when>
                                          <xsl:when test="@s='21'">S.2112</xsl:when>
                                          <xsl:when test="@s='22'">S.22</xsl:when>
                                       </xsl:choose>
                                 </xsl:variable>
                                 <th><xsl:value-of select="$sfrCol"/></th>
                              </xsl:for-each>
                           </tr>
                        </thead>
                        <tbody>
                           <xsl:for-each select="Aop">
                              <tr>
                                 <td><xsl:value-of select="@id"/></td>
                                 <xsl:for-each select="P">
                                    <td><xsl:value-of select="."/></td>
                                 </xsl:for-each>
                              </tr>
                           </xsl:for-each>
                        </tbody>
                     </table>
                  </div>
               </xsl:for-each>
            </div>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
