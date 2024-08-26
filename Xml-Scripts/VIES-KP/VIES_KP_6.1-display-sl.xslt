<?xml version="1.0" encoding="utf-8"?><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:doc="http://edavki.durs.si/Documents/Schemas/VIES_KP_6.xsd" xmlns:form="http://tempuri.org/Forms" xmlns:incl="urn:hermes-softlab-com-durs-include" xmlns:edp="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd" xmlns:loc="urn:hermes-softlab-com-durs-localize"><xsl:template match="/"><html xmlns:var="urn:hermes-softlab-com-durs-variant"><head><style type="text/css" xmlns:outxsl="generated:xsl" xmlns:edp="http://tempuri.org/EDP-Common-1" xmlns:loc="http://tempuri.org/EDP-l10n">

/*** EDP-Style 2.0 ***/

.lblprefill { border: 1px solid #B4BCB9; background-color: #F0F0F0; color:#000}
div.fldprefill, div.fldborder, span.fldborder {  border: 1px solid #cfa1a0; padding: 2px; }
div.fldinput, div.fldValue, span.fldinput { background: white; border: 1px solid #cfa1a0; padding: 2px;  }

body.sign { border: 0; font-size: 8pt; background: #efefef; font-family: verdana, sans-serif;}
table {border: 0px; }

   /*** COMMON HEADER ***/
div.commonheader {display: block;  padding: 0.6em 1em; /*border-color: #00659c;*/ 
background-image: url('durs_znak_60.png'); background-attachment:scroll;  background-position:bottom right; background-repeat:no-repeat;  background-attachment:scroll;}
div.commonheader table { font-size: 100%;}
div.commonheader table td {color: #000;  }

   /*** Signing ***/
div.signareafile { display: block; height: expression('100%'); background: #f2f2f2; font-size: 8pt; padding: 5px 15px; margin-bottom: 20px; }
div.signareafile h2, div.signareaprep h2 {margin-top: 0; margin-bottom: 0.3em; }
div.signareafile table { font-size: 120%;}
div.signareafile table table { font-size: 100%;}

   /*** Headings ***/
.signareafile h1 {font-size: 26px; }
.signareafile h2 {font-size: 20px; }
.signareafile h3 {font-size: 18px; }
.signareafile h4 {font-size: 16px; }
.signareafile h5 {font-size: 14px; }
.signareafile h6 {font-size: 12px; }

.signareafile p  {margin: 0 0 0.1em 0px; line-height: 1.3em;}
.signareafile li {margin-bottom: 3px;}
.signareafile ul {margin:0; padding: 4pt 2.4em;}
.signareafile li ul {margin:0; padding: 2pt 1.5em;}

.signareafile .instruct {margin-bottom: 0.5em; color: #343434; }
.signareafile .instruct1 {margin-bottom: 0em; color: #343434; }
.signareafile .instruc2 {display: none;}
.signareafile .hidden {display: none;}
.signareafile .no-margin {margin: 0;}
.signareafile .right { text-align: right;}

.bold { font-weight: bold; }

   /*** TABLE SIGN BULLET ***/
div.tablebackground {background-color: #e2e2e2;}
table.tablesignbullet {margin: 0.2em 0px 10px 0px; border: #738294 1px solid; background-color: #fafafa;  }
table.tablesignbullet tr.noborder td {border: 0px none; background-color: #f8f8f8; }
table.tablesignbullet td {padding: 0.3em 6px 0.3em 4px; border-bottom: #f1f1f1 1px solid; vertical-align: middle;}
table.tablesignbullet tr.first td { background: #b8ccce; border-bottom: #016a73 2px solid; font-weight: bold;}
table.tablesignbullet tr.first1 td { background: #D3DDDE ; border-bottom: #308289 1px solid}
table.tablesignbullet tr.First td { background: #b8ccce; border-bottom: #016a73 2px solid; font-weight: bold;}
table.tablesignbullet td.value {text-align: center; }
/*table.tablesignbullet td.lbl {padding-left: 12px; }*/
table.tablesignbullet td.right {text-align: right; }  
table.tablesignbullet td.input {padding-top: 0; padding-bottom: 0; }
table.tablesignbullet td.dark {background: #efefef; }
table.tablesignbullet td.lblmenu {background: #f1f1f1; border-bottom: #e8e8e8 0px solid;}
table.tablesignbullet tr.subhead {font-weight: bold; background-color: #e9e9e9;}
table.tablesignbullet tr.lblheader  {font-weight: bold;  background-color: #dddddd;}
table.tablesignbullet tr.lblheader2 {font-weight: bold; background-color: #e9e9e9; }
table.tablesignbullet tr.lblheader3 {font-weight: bold; background-color: #f3f3f3; }
table.tablesignbullet tr.empty td {background:#f2f2f2; border-bottom: #738294 1px solid; border-top:none; line-height:3px;}
table.tablesignbullet tr.summary td {background:#f5f5f5; font-weight:bold; border-top: #738294 2px solid ;}
table.tablesignbullet tr.grey td {background:#c8d3d4; line-height:0.6em;}
td.tdcomment {background-color: #f3f3f3; color: #343434;}

   /*** TABLE SIGN SIMPLE ***/
table.tablesignsimple {margin: 0.2em 0px 10px 25px; }
table.tablesignsimple td {padding: 3px 8px 3px 0px; vertical-align: middle; }

   /*** TABLE SIGN FORM ***/
table.tablesignform {border-top: 1px solid #b9d3e1; width: 100%; margin-top: 15px; }
table.tablesignform td.right {text-align: right; }   

   /*** TABLE FORMDDVO ***/
table.formddvo td {vertical-align: top; padding: 4px 4px 3px 4px; font: normal 8pt verdana, sans-serif;  }

   /*** TABLE FORMINPUT ***/
table.forminput {width: 100%;}
table.forminput td {}
table.forminput td.no {text-align: right; width: 20px;}
table.forminput td.input {padding: 0px 2px; width: 105px;}

   /*** TABLE FORMDOH ***/

table.doh tr.subhead td  {text-align: center; vertical-align: middle; padding-left: 5px; padding-right: 5px;}
table.doh tr.subhead {font-weight: normal; }
table.doh td.input {vertical-align: top; padding-left: 5px; padding-right: 5px; text-align: center;}
table.doh td.lblno {vertical-align: top; padding-left: 5px; padding-right: 5px; padding-bottom: 3px; padding-top: 6px; }
table.doh td.lbl  { padding-right: 1px; padding-left: 1px; padding-bottom: 3px; vertical-align: top; padding-top: 6px; }
table.doh td.dark {background: #ffffff; }
table.doh tr.subhead td.dark {background-color: #e0e0e0; }

TABLE.doh A { padding-right: 7px; display: block; padding-left: 7px; padding-bottom: 0.35em; padding-top: 0.35em; }
TABLE.doh A:hover { background: #00659c; color: #fff; }
TABLE.doh DIV P { margin: 7px; color: #00659c; }
TABLE.doh DIV LI { margin: 7px; color: #00659c; line-height: 1.2em; }
TABLE.doh SELECT, table.doh table.insert { margin-top: 1px; }

table.doh table.insert td {padding: 2px; }
table.doh table.insert td.input {padding-top: 0px; }
table.doh table.insert td.lbl {padding-top: 5px; }

/*** TABLE BULLETFULL margin: 0.2em 0px 10px 5px;  ***/

table.tablebulletFull td.tblhdr {margin:0; padding:0; border:0;}
table.tablesignbullet td.tblhdr {margin:0; padding:0; border:0;}
table.tblHeader {margin:0; padding:0; border:none 0; width:100% ;  }
table.tblHeader td.tdHeader1  { text-align:center; FONT-WEIGHT: bold; width:5em; BACKGROUND: #016a73;  COLOR: #fff; BORDER-BOTTOM: #016a73 2px solid}
table.tblHeader td.tdHeader2 {FONT-WEIGHT: bold; padding-left:1em;  BACKGROUND: #b8ccce; BORDER-BOTTOM: #016a73 2px solid}

td.mark1st {border-top:10px #D2DADD solid}
div.indent3 {padding-left: 3em; text-indent:-3em;}

table.tablebulletFull {margin: 0.2em 0px 10px 0px; border: 1px solid #738294; background: #ffffff;  width: 100%; }
table.tablebulletFull td {padding: 0.3em 8px 0.3em 8px; border-bottom: 1px solid #efefef; vertical-align: top;}
table.tablebulletFull tr.first td {background: #b8ccce; border-bottom: #016a73 2px solid; font-weight: bold;}
table.tablebulletFull tr.first1 td { background: #D3DDDE ; border-bottom: #308289 1px solid}
table.tablebulletFull td.lblFirst {background-color: #016A73; color:#fff ; width:5em;}
table.tablebulletFull tr.firstX td {border-left: #016A73 5em solid; border-bottom: #016A73 2px solid; background: #B8CCCE; font-weight:bold;}
table.tablebulletFull span.firstX { left: -4em; position: relative; color:#fff;}
table.tablebulletFull span.firstXx { left: -2em; position: relative;}
table.tablebulletFull tr.lblheader {font-weight: bold; background-color: #d9d9d9; }
table.tablebulletFull tr.lblheader2 {font-weight: bold; background-color: #e4e4e4; }
table.tablebulletFull tr.lblheader3 {font-weight: bold; background-color: #eeeeee; }
table.tablebulletFull tr.subhead td img {margin: 0px 2px;}
table.tablebulletFull tr.oddRow {background: #f3f3f3; }
table.tablebulletFull tr.evenRow {background: #ffffff; }
table.tablebulletFull td.lbl {padding-top: 0.45em; }
table.tablebulletFull td.lblmenu {background: #f1f1f1; border-bottom: #eaeaea 0px solid;}
table.tablebulletFull td.lblno {padding-top: 0.45em;}
table.tablebulletFull td.valuebld {padding-top: 0.45em; font-weight: bold;}
table.tablebulletFull td.input {padding-top: 0.45em; }
table.tablebulletFull td.dark {background: #eeeeee; }
table.tablebulletFull td.subtable { padding: 0; margin:0}
table.tablebulletFull DIV P { MARGIN: 7px; COLOR: #343434; }
table.tablebulletFull tr.lHeader td {background: #f1f1f1;}
table.tablebulletFull tr.lSummary td {background:#f2f2f2; font-weight:bold; border-top: #738294 2px solid ;}
table.tablebulletFull tr.empty td {background:#f3f3f3; border-bottom: #c1c7cf 1px solid; border-top:none; line-height:3px;}

table.tableSubTable {margin: 0.2em 0px 1px 0px; width:100%; }
table.tableSubTable tr.oddRow {background: #f1f1f1; }
table.tableSubTable tr.evenRow {background: #ffffff; }

table.evenoddrow1&gt;tbody&gt;tr:nth-child(even) {background: #fefefe}
table.evenoddrow1&gt;tbody&gt;tr:nth-child(odd) {background: #f6f6f6} 

table.evenoddrow tr:nth-child(even) {background: #fefefe}
table.evenoddrow tr:nth-child(odd) {background: #f6f6f6} 

table.full { width: 100%;}

@media print {
}



    </style></head><body class="sign"><xsl:call-template name="VIES_KP"></xsl:call-template></body></html></xsl:template><xsl:template name="VIES_KP"><xsl:for-each select="doc:Envelope"><xsl:if test="//edp:Signatures/edp:DepositorSignature" xmlns:var="urn:hermes-softlab-com-durs-variant" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:DepositorSignature/ds:Signature/ds:SignatureValue)=''"><h1>Oddajanje vloge</h1><p class="instruct">S potrditvijo boste podpisali dokument in ga predložili finančni upravi. Vloženega dokumenta ne morete več spreminjati.</p></xsl:if></xsl:if><xsl:if test="//edp:Signatures/edp:PreparerSignature" xmlns:var="urn:hermes-softlab-com-durs-variant" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:PreparerSignature/ds:Signature/ds:SignatureValue)=''"><h1>Priprava vloge</h1><p class="instruct">S potrditvijo boste pripravili dokument za podpisnika. Dokument ne bo predložen finančni upravi.</p></xsl:if></xsl:if><xsl:if test="//edp:Signatures/edp:DepositorServerSignature" xmlns:var="urn:hermes-softlab-com-durs-variant" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:DepositorServerSignature/ds:Signature/ds:SignatureValue)=''"><h1>Oddajanje vloge</h1><p class="instruct">S potrditvijo boste podpisali dokument in ga predložili finančni upravi. Vloženega dokumenta ne morete več spreminjati.</p></xsl:if></xsl:if><xsl:if test="//edp:Signatures/edp:PreparerServerSignature" xmlns:var="urn:hermes-softlab-com-durs-variant" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:PreparerServerSignature/ds:Signature/ds:SignatureValue)=''"><h1>Priprava vloge</h1><p class="instruct">S potrditvijo boste pripravili dokument za podpisnika. Dokument ne bo predložen finančni upravi.</p></xsl:if></xsl:if><div class="document"><div class="commonheader"><table cellspacing="0"><tbody><xsl:for-each select="edp:Header//edp:domain"><tr><td><b>Sistem:</b></td><td><xsl:value-of select="."></xsl:value-of></td></tr></xsl:for-each><xsl:for-each select="edp:Header//edp:responseTo"><tr><td><b>Odgovor na dokument:</b></td><td><xsl:value-of select="."></xsl:value-of></td></tr></xsl:for-each><xsl:for-each select="edp:Signatures//edp:receipt"><tr><td><b>Vloženo:</b></td><td><xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:timestamp"></xsl:value-of></xsl:with-param></xsl:call-template></td></tr><xsl:if test="string-length(edp:documentNumber)!=0"><tr><td><b>Št. dokumenta:</b></td><td><xsl:value-of select="edp:documentNumber"></xsl:value-of></td></tr></xsl:if><xsl:if test="string-length(edp:metaText1)!=0 and string-length(edp:metaDate1)!=0 and starts-with(edp:metaText1, 'SI')"><tr><td><b>Referenčna številka:</b></td><td><xsl:value-of select="edp:metaText1"></xsl:value-of></td></tr><tr><td><b>Verzija:
                  </b></td><td><xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:metaDate1"></xsl:value-of></xsl:with-param></xsl:call-template></td></tr></xsl:if></xsl:for-each><xsl:for-each select="edp:Signatures/edp:DepositorSignature/edp:Depositor"><tr><td><b>Vložil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td><td>                
                (<xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:timestamp"></xsl:value-of></xsl:with-param></xsl:call-template>)
              </td></tr></xsl:for-each><xsl:for-each select="edp:Signatures/edp:DepositorServerSignature/edp:Depositor"><tr><td><b>Vložil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td></tr></xsl:for-each><xsl:for-each select="edp:Signatures/edp:PreparerSignature/edp:Preparer"><tr><td><b>Pripravil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td><td>
                (<xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:timestamp"></xsl:value-of></xsl:with-param></xsl:call-template>)
              </td></tr></xsl:for-each><xsl:for-each select="edp:Signatures/edp:PreparerServerSignature/edp:Preparer"><tr><td><b>Pripravil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td></tr></xsl:for-each></tbody></table><p> </p></div><div class="signareafile"><xsl:for-each select="doc:body/doc:VIES_KP"><h1>(RP-O) Rekapitulacijsko poročilo</h1><h2>Zbirno poročilo za dobave v druge države članice Unije ter prenos blaga v okviru ureditve skladiščenja na odpoklic</h2><table class="tablesignbullet" cellspacing="2" cellpadding="2"><tr><td>Za obdobje poročanja</td><td>Leto</td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:General/doc:Year)"> 
      </xsl:when><xsl:when test="doc:General/doc:Year=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:General/doc:Year"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td>Mesec</td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:General/doc:Month)"> 
      </xsl:when><xsl:when test="doc:General/doc:Month=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:General/doc:Month"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input">
                  [1]
                </td></tr></table><table><tr><td><table class="tablesignbullet" cellspacing="2" cellpadding="2"><tr><td valign="top">Identifikacijska številka za DDV [10]
                      </td><td class="input"><div><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(//edp:Header/edp:taxpayer/edp:vatNumber)"> 
      </xsl:when><xsl:when test="//edp:Header/edp:taxpayer/edp:vatNumber=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="//edp:Header/edp:taxpayer/edp:vatNumber"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr><tr><td valign="top">Naziv [11]
                      </td><td class="input"><div><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(//edp:Header/edp:taxpayer/edp:name)"> 
      </xsl:when><xsl:when test="//edp:Header/edp:taxpayer/edp:name=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="//edp:Header/edp:taxpayer/edp:name"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr><tr><td valign="top">Naslov [12]
                      </td><td class="input"><div><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(//edp:Header/edp:taxpayer/edp:address1)"> 
      </xsl:when><xsl:when test="//edp:Header/edp:taxpayer/edp:address1=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="//edp:Header/edp:taxpayer/edp:address1"></xsl:value-of></xsl:otherwise></xsl:choose><br></br><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(//edp:Header/edp:taxpayer/edp:city)"> 
      </xsl:when><xsl:when test="//edp:Header/edp:taxpayer/edp:city=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="//edp:Header/edp:taxpayer/edp:city"></xsl:value-of></xsl:otherwise></xsl:choose><br></br><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(//edp:Header/edp:taxpayer/edp:postNumber)"> 
      </xsl:when><xsl:when test="//edp:Header/edp:taxpayer/edp:postNumber=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="//edp:Header/edp:taxpayer/edp:postNumber"></xsl:value-of></xsl:otherwise></xsl:choose> 
                          <xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(//edp:Header/edp:taxpayer/edp:postName)"> 
      </xsl:when><xsl:when test="//edp:Header/edp:taxpayer/edp:postName=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="//edp:Header/edp:taxpayer/edp:postName"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr><tr><td valign="top">Identifikacijska številka za DDV davčnega zastopnika [13]
                      </td><td class="input"><div><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:General/doc:RPO13)"> 
      </xsl:when><xsl:when test="doc:General/doc:RPO13=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:General/doc:RPO13"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr></table></td><xsl:if test="doc:RepresentedForeigner"><td><table class="tablesignbullet" cellspacing="2" cellpadding="0"><tr><td>Identifikacijska številka tujca</td><td class="input"><div><xsl:if test="doc:RepresentedForeigner/doc:IdNumber"><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:RepresentedForeigner/doc:IdNumber)"> 
      </xsl:when><xsl:when test="doc:RepresentedForeigner/doc:IdNumber=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:RepresentedForeigner/doc:IdNumber"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:if></div></td></tr><tr><td>Naziv tujca</td><td class="input"><div><xsl:if test="doc:RepresentedForeigner/doc:Name"><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:RepresentedForeigner/doc:Name)"> 
      </xsl:when><xsl:when test="doc:RepresentedForeigner/doc:Name=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:RepresentedForeigner/doc:Name"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:if></div></td></tr><tr><td>Naslov tujca</td><td class="input"><div><xsl:if test="doc:RepresentedForeigner/doc:Address"><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:RepresentedForeigner/doc:Address)"> 
      </xsl:when><xsl:when test="doc:RepresentedForeigner/doc:Address=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:RepresentedForeigner/doc:Address"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:if></div></td></tr></table></td></xsl:if></tr></table><table class="tablesignbullet" cellspacing="0" width="95%"><tr class="first"><td colspan="22">
                  A. Podatki o dobavah za tekoče obdobje</td></tr><tr class="lblheader2"><td colspan="2">Identifikacijska številka kupca (prejemnika oz. pridobitelja)</td><td rowspan="2">Skupna vrednost dobav blaga¹ [A3]
                </td><td rowspan="2">Skupna vrednost dobav blaga po carinskih postopkih 42 in 63¹ [A4]
                </td><td rowspan="2">Skupna vrednost tristranskih dobav blaga¹ [A5]
                </td><td rowspan="2">Skupna vrednost opravljenih storitev¹ [A6]
                </td><td rowspan="2">Skupna vrednost dobav blaga po skladiščenju na odpoklic¹ [A7]
                </td></tr><tr class="lblheader2"><td>Koda države [A1]
                </td><td>Številka za DDV (brez kode države) [A2]
                </td></tr><xsl:for-each select="doc:A_Current/doc:A"><tr><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:A1)"> 
      </xsl:when><xsl:when test="doc:A1=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:A1"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:A2)"> 
      </xsl:when><xsl:when test="doc:A2=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:A2"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:A3"></xsl:with-param></xsl:call-template></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:A4"></xsl:with-param></xsl:call-template></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:A5"></xsl:with-param></xsl:call-template></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:A6"></xsl:with-param></xsl:call-template></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:A7"></xsl:with-param></xsl:call-template></div></td></tr></xsl:for-each><tr class="subhead"><td> </td><td>Skupna vrednost vseh dobav in storitev (kontrolni podatek)<div></div></td><td align="right"><div class="">
                    [A13] <xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:General/doc:A13"></xsl:with-param></xsl:call-template></div></td><td align="right"><div class="">
                    [A14] <xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:General/doc:A14"></xsl:with-param></xsl:call-template></div></td><td align="right"><div class="">
                    [A15] <xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:General/doc:A15"></xsl:with-param></xsl:call-template></div></td><td align="right"><div class="">
                    [A16] <xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:General/doc:A16"></xsl:with-param></xsl:call-template></div></td><td align="right"><div class="">
                    [A17] <xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:General/doc:A17"></xsl:with-param></xsl:call-template></div></td></tr></table><br></br><table class="tablesignbullet" cellspacing="0" width="95%"><tr class="first"><td colspan="22">
                  B. Popravki podatkov o dobavah za pretekla obdobja</td></tr><tr class="lblheader2"><td colspan="2" style="border-bottom:0;">Obdobje [B0]
                </td><td colspan="2">Identifikacijska številka kupca (prejemnika oz. pridobitelja)</td><td rowspan="2">Nova vrednost dobav blaga¹ [B3]
                </td><td rowspan="2">Nova vrednost dobav blaga po carinskih postopkih 42 in 63¹ [B4]
                </td><td rowspan="2">Nova vrednost tristranskih dobav blaga¹ [B5]
                </td><td rowspan="2">Nova vrednost opravljenih storitev¹ [B6]
                </td><td rowspan="2">Nova vrednost dobav blaga po skladiščenju na odpoklic¹ [B7]
                </td></tr><tr class="lblheader2"><td>leto</td><td>kvartal/mesec</td><td>Koda države [B1]
                </td><td>Številka za DDV (brez kode države) [B2]
                </td></tr><xsl:for-each select="doc:B_PastCorrections/doc:B"><tr><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:B0_Y)"> 
      </xsl:when><xsl:when test="doc:B0_Y=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:B0_Y"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:B0_M)"> 
      </xsl:when><xsl:when test="doc:B0_M=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:B0_M"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:B1)"> 
      </xsl:when><xsl:when test="doc:B1=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:B1"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:B2)"> 
      </xsl:when><xsl:when test="doc:B2=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:B2"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:B3"></xsl:with-param></xsl:call-template></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:B4"></xsl:with-param></xsl:call-template></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:B5"></xsl:with-param></xsl:call-template></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:B6"></xsl:with-param></xsl:call-template></div></td><td class="input" align="right"><div class=""><xsl:call-template name="Amount2" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:with-param name="amount" select="doc:B7"></xsl:with-param></xsl:call-template></div></td></tr></xsl:for-each></table><br></br><table class="tablesignbullet" cellspacing="0"><tr class="first"><td colspan="22">
                  C. Prenos blaga v okviru ureditve skladiščenja na odpoklic</td></tr><tr class="lblheader2"><td colspan="2" style="border-bottom:0;">Identifikacijska številka kupca (prejemnika)</td></tr><tr class="lblheader2"><td>Koda države[C0]
                </td><td>Številka za DDV (brez kode države)[C1]
                </td></tr><xsl:for-each select="doc:C_TransferOfGoods/doc:C"><tr><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:C0)"> 
      </xsl:when><xsl:when test="doc:C0=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:C0"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:C1)"> 
      </xsl:when><xsl:when test="doc:C1=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:C1"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr></xsl:for-each></table><br></br><table class="tablesignbullet" cellspacing="0"><tr class="first"><td colspan="22">
                  D. Vračilo blaga, prenesenega v okviru ureditve skladiščenja na odpoklic</td></tr><tr class="lblheader2"><td colspan="2" style="border-bottom:0;">Identifikacijska številka kupca (prejemnika) od katerega je bilo blago vrnjeno davčnemu zavezancu (dobavitelju)</td></tr><tr class="lblheader2"><td>Koda države[D0]
                </td><td>Številka za DDV (brez kode države)[D1]
                </td></tr><xsl:for-each select="doc:D_ReturnOfGoods/doc:D"><tr><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:D0)"> 
      </xsl:when><xsl:when test="doc:D0=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:D0"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:D1)"> 
      </xsl:when><xsl:when test="doc:D1=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:D1"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr></xsl:for-each></table><br></br><table class="tablesignbullet" cellspacing="0"><tr class="first"><td colspan="22">
                  E. Zamenjava kupca (prejemnika) blaga v okviru ureditve skladiščenja na odpoklic</td></tr><tr class="lblheader2"><td colspan="2" style="border-bottom:0;">Identifikacijska številka prvega kupca (prejemnika), kateremu je bil opravljen prenos blaga v skladiščenje na odpoklic</td><td colspan="2" style="border-bottom:0;">Identifikacijska številka novega kupca (prejemnika)</td></tr><tr class="lblheader2"><td>Koda države[E0]
                </td><td>Številka za DDV (brez kode države)[E1]
                </td><td>Koda države[E2]
                </td><td>Številka za DDV (brez kode države)[E3]
                </td></tr><xsl:for-each select="doc:E_Customer/doc:E"><tr><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:E0)"> 
      </xsl:when><xsl:when test="doc:E0=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:E0"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:E1)"> 
      </xsl:when><xsl:when test="doc:E1=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:E1"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:E2)"> 
      </xsl:when><xsl:when test="doc:E2=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:E2"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:E3)"> 
      </xsl:when><xsl:when test="doc:E3=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:E3"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr></xsl:for-each></table><br></br><table class="tablesignbullet" cellspacing="0"><tr class="first"><td colspan="22">
                  F. Popravki podatkov v zvezi s prenosom ali vračilom blaga v okviru ureditve skladiščenja na odpoklic</td></tr><tr class="lblheader2"><td colspan="4" style="border-bottom:0;">Obdobje [F0]
                </td><td colspan="2" style="border-bottom:0;">Identifikacijska številka prvega ali napačnega kupca (prejemnika), kateremu je bil opravljen prenos/vračilo</td><td colspan="2" style="border-bottom:0;">Identifikacijska številka pravega kupca (prejemnika)</td></tr><tr class="lblheader2"><td>leto</td><td>
                  mesec
                </td><td>Tabela, ki se popravlja (C, D)[F1]
                </td><td>Vrsta popravka[F2]
                </td><td>Koda države[F3]
                </td><td>Številka za DDV (brez kode države)[F4]
                </td><td>Koda države[F5]
                </td><td>Številka za DDV (brez kode države)[F6]
                </td></tr><xsl:for-each select="doc:F_GoodsCorrections/doc:F"><tr><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:F0_Y)"> 
      </xsl:when><xsl:when test="doc:F0_Y=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:F0_Y"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:F0_M)"> 
      </xsl:when><xsl:when test="doc:F0_M=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:F0_M"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:F1)"> 
      </xsl:when><xsl:when test="doc:F1=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:F1"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:F2)"> 
      </xsl:when><xsl:when test="doc:F2=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:F2"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:F3)"> 
      </xsl:when><xsl:when test="doc:F3=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:F3"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:F4)"> 
      </xsl:when><xsl:when test="doc:F4=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:F4"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:F5)"> 
      </xsl:when><xsl:when test="doc:F5=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:F5"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:F6)"> 
      </xsl:when><xsl:when test="doc:F6=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:F6"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr></xsl:for-each></table><br></br><table class="tablesignbullet" cellspacing="0"><tr class="first"><td colspan="22">
                  G. Popravki podatkov v zvezi z zamenjavo kupca (prejemnika) blaga v okviru ureditve skladiščenja na odpoklic</td></tr><tr class="lblheader2"><td colspan="4" style="border-bottom:0;">Obdobje [G0]
                </td><td colspan="2" style="border-bottom:0;">Identifikacijska številka prvega kupca (prejemnika), kateremu je bil opravljen prenos blaga v skladiščenje na odpoklic</td><td colspan="2" style="border-bottom:0;">Identifikacijska številka novega kupca (prejemnika)</td></tr><tr class="lblheader2"><td>leto</td><td>
                  mesec
                </td><td>Tabela, ki se popravlja (E)[G1]
                </td><td>Vrsta popravka[G2]
                </td><td>Koda države[G3]
                </td><td>Številka za DDV (brez kode države)[G4]
                </td><td>Koda države[G5]
                </td><td>Številka za DDV (brez kode države)[G6]
                </td></tr><xsl:for-each select="doc:G_CustomerCorrections/doc:G"><tr><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:G0_Y)"> 
      </xsl:when><xsl:when test="doc:G0_Y=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:G0_Y"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:G0_M)"> 
      </xsl:when><xsl:when test="doc:G0_M=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:G0_M"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:G1)"> 
      </xsl:when><xsl:when test="doc:G1=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:G1"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:G2)"> 
      </xsl:when><xsl:when test="doc:G2=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:G2"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:G3)"> 
      </xsl:when><xsl:when test="doc:G3=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:G3"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:G4)"> 
      </xsl:when><xsl:when test="doc:G4=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:G4"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:G5)"> 
      </xsl:when><xsl:when test="doc:G5=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:G5"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:G6)"> 
      </xsl:when><xsl:when test="doc:G6=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:G6"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr></xsl:for-each></table><br></br><table class="tablesignbullet" cellspacing="2" cellpadding="2"><tr><td>Odgovorna oseba [17]
                </td><td class="input"><div class=""><xsl:if test="doc:General/doc:RPO17_ResponsiblePerson"><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:General/doc:RPO17_ResponsiblePerson)"> 
      </xsl:when><xsl:when test="doc:General/doc:RPO17_ResponsiblePerson=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:General/doc:RPO17_ResponsiblePerson"></xsl:value-of></xsl:otherwise></xsl:choose> 
                    </xsl:if><xsl:if test="doc:General/doc:RPO17_TaxNumber">
                      (D:<xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:General/doc:RPO17_TaxNumber)"> 
      </xsl:when><xsl:when test="doc:General/doc:RPO17_TaxNumber=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:General/doc:RPO17_TaxNumber"></xsl:value-of></xsl:otherwise></xsl:choose>)
                    </xsl:if></div></td><td></td></tr><tr><td>Kontaktna oseba [18]
                </td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:General/doc:RPO18)"> 
      </xsl:when><xsl:when test="doc:General/doc:RPO18=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:General/doc:RPO18"></xsl:value-of></xsl:otherwise></xsl:choose></div></td><td></td></tr><tr><td>Telefonska številka [19]
                </td><td class="input"><div class=""><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(doc:General/doc:RPO19)"> 
      </xsl:when><xsl:when test="doc:General/doc:RPO19=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="doc:General/doc:RPO19"></xsl:value-of></xsl:otherwise></xsl:choose></div></td></tr></table><xsl:if test="//edp:Signatures/edp:DepositorSignature"><p>Potrjujem resničnost navedenih podatkov [14].</p></xsl:if><p>¹ Za obdobja do 31.12.2006 se zneski vnašajo v tolarjih brez stotinov. <br></br>
                 Za obdobja med 1.1.2007 in 31.12.2009 se zneski vnašajo v eurih in centih.
    <br></br>
                 Za obdobja po 1.1.2010 se zneski vnašajo v eurih brez centov.</p><div style="display:inline-block; width:100%;" xmlns:var="urn:hermes-softlab-com-durs-variant"><table class="tablesignform" cellspacing="0"><tr><td></td><td class="right">e-VIES_KP_6.1</td></tr></table></div></xsl:for-each><xsl:call-template name="InternalAttachments"></xsl:call-template></div></div></xsl:for-each></xsl:template><xsl:template name="Amount"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="$amount='0'">0,00</xsl:when><xsl:otherwise><xsl:value-of select="translate(translate(format-number($amount, '#,##0.00'), '.,', ',.'), 'NaN', ' ')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="Amount2"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="not($amount)"> </xsl:when><xsl:otherwise><xsl:value-of select="translate(format-number($amount, '#,##0'), '.,', ',.')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="dateAndTime"><xsl:param name="timestamp"></xsl:param><xsl:if test="not($timestamp='')"><xsl:call-template name="dateOnly"><xsl:with-param name="timestamp" select="$timestamp"></xsl:with-param></xsl:call-template> <xsl:value-of select="substring($timestamp, 12, 8)"></xsl:value-of></xsl:if></xsl:template><xsl:template name="dateOnly"><xsl:param name="timestamp"></xsl:param><xsl:variable name="tmonth"><xsl:value-of select="substring($timestamp, 6, 2)"></xsl:value-of></xsl:variable><xsl:variable name="tday"><xsl:value-of select="substring($timestamp, 9, 2)"></xsl:value-of></xsl:variable><xsl:variable name="tyear"><xsl:value-of select="substring($timestamp, 1, 4)"></xsl:value-of></xsl:variable><xsl:if test="($timestamp) and ($timestamp != '')"><xsl:value-of select="$tday"></xsl:value-of>.<xsl:value-of select="$tmonth"></xsl:value-of>.<xsl:value-of select="$tyear"></xsl:value-of></xsl:if></xsl:template><xsl:template name="InternalAttachments"><xsl:if test="//edp:AttachmentList/edp:ExternalAttachment"><p> </p><table class="tablesignbullet" cellspacing="0" cellpadding="2" width="100%"><tr class="first"><td colspan="6">Vsebovane priloge</td></tr><tr class="lblheader2"><td>#</td><td>Id</td><td>Ime datoteke</td><td>Tip priloge</td><td>Opis</td><td>Zgoščena vrednost (SHA-1 hash)</td></tr><xsl:for-each select="//edp:AttachmentList/edp:ExternalAttachment"><tr><td class="left"><xsl:value-of select="position()"></xsl:value-of>.</td><td class="left"><xsl:value-of select="edp:attachmentId"></xsl:value-of></td><td class="left"><a><xsl:attribute name="href">../../CommonPages/Documents/AttachmentDownload.aspx?intAttId=<xsl:value-of select="edp:attachmentId"></xsl:value-of></xsl:attribute><xsl:value-of select="edp:filename"></xsl:value-of></a></td><td class="left"><xsl:value-of select="edp:type"></xsl:value-of></td><td class="left"><xsl:value-of select="edp:description"></xsl:value-of></td><td class="left"><xsl:value-of select="edp:hash"></xsl:value-of></td></tr></xsl:for-each></table></xsl:if></xsl:template></xsl:stylesheet>