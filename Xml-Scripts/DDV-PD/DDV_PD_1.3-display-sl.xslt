<?xml version="1.0" encoding="utf-8"?><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:pdo="http://edavki.durs.si/Documents/Schemas/DDV_PD_1.xsd" xmlns:form="http://tempuri.org/Forms" xmlns:incl="urn:hermes-softlab-com-durs-include" xmlns:edp="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd" xmlns:loc="urn:hermes-softlab-com-durs-localize"><xsl:template match="/"><html xmlns:var="urn:hermes-softlab-com-durs-variant"><head><style type="text/css" xmlns:outxsl="generated:xsl" xmlns:edp="http://tempuri.org/EDP-Common-1" xmlns:loc="http://tempuri.org/EDP-l10n">

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



    </style></head><body class="sign"><xsl:call-template name="DDV_PD"></xsl:call-template></body></html></xsl:template><xsl:template name="DDV_PD"><xsl:for-each select="pdo:Envelope"><xsl:if test="//edp:Signatures/edp:DepositorSignature" xmlns:var="urn:hermes-softlab-com-durs-variant" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:DepositorSignature/ds:Signature/ds:SignatureValue)=''"><h1>Oddajanje vloge</h1><p class="instruct">S potrditvijo boste podpisali dokument in ga predložili finančni upravi. Vloženega dokumenta ne morete več spreminjati.</p></xsl:if></xsl:if><xsl:if test="//edp:Signatures/edp:PreparerSignature" xmlns:var="urn:hermes-softlab-com-durs-variant" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:PreparerSignature/ds:Signature/ds:SignatureValue)=''"><h1>Priprava vloge</h1><p class="instruct">S potrditvijo boste pripravili dokument za podpisnika. Dokument ne bo predložen finančni upravi.</p></xsl:if></xsl:if><xsl:if test="//edp:Signatures/edp:DepositorServerSignature" xmlns:var="urn:hermes-softlab-com-durs-variant" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:DepositorServerSignature/ds:Signature/ds:SignatureValue)=''"><h1>Oddajanje vloge</h1><p class="instruct">S potrditvijo boste podpisali dokument in ga predložili finančni upravi. Vloženega dokumenta ne morete več spreminjati.</p></xsl:if></xsl:if><xsl:if test="//edp:Signatures/edp:PreparerServerSignature" xmlns:var="urn:hermes-softlab-com-durs-variant" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:PreparerServerSignature/ds:Signature/ds:SignatureValue)=''"><h1>Priprava vloge</h1><p class="instruct">S potrditvijo boste pripravili dokument za podpisnika. Dokument ne bo predložen finančni upravi.</p></xsl:if></xsl:if><div class="document"><div class="commonheader"><table cellspacing="0"><tbody><xsl:for-each select="edp:Header//edp:domain"><tr><td><b>Sistem:</b></td><td><xsl:value-of select="."></xsl:value-of></td></tr></xsl:for-each><xsl:for-each select="edp:Header//edp:responseTo"><tr><td><b>Odgovor na dokument:</b></td><td><xsl:value-of select="."></xsl:value-of></td></tr></xsl:for-each><xsl:for-each select="edp:Signatures//edp:receipt"><tr><td><b>Vloženo:</b></td><td><xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:timestamp"></xsl:value-of></xsl:with-param></xsl:call-template></td></tr><xsl:if test="string-length(edp:documentNumber)!=0"><tr><td><b>Št. dokumenta:</b></td><td><xsl:value-of select="edp:documentNumber"></xsl:value-of></td></tr></xsl:if><xsl:if test="string-length(edp:metaText1)!=0 and string-length(edp:metaDate1)!=0 and starts-with(edp:metaText1, 'SI')"><tr><td><b>Referenčna številka:</b></td><td><xsl:value-of select="edp:metaText1"></xsl:value-of></td></tr><tr><td><b>Verzija:
                  </b></td><td><xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:metaDate1"></xsl:value-of></xsl:with-param></xsl:call-template></td></tr></xsl:if></xsl:for-each><xsl:for-each select="edp:Signatures/edp:DepositorSignature/edp:Depositor"><tr><td><b>Vložil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td><td>                
                (<xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:timestamp"></xsl:value-of></xsl:with-param></xsl:call-template>)
              </td></tr></xsl:for-each><xsl:for-each select="edp:Signatures/edp:DepositorServerSignature/edp:Depositor"><tr><td><b>Vložil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td></tr></xsl:for-each><xsl:for-each select="edp:Signatures/edp:PreparerSignature/edp:Preparer"><tr><td><b>Pripravil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td><td>
                (<xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:timestamp"></xsl:value-of></xsl:with-param></xsl:call-template>)
              </td></tr></xsl:for-each><xsl:for-each select="edp:Signatures/edp:PreparerServerSignature/edp:Preparer"><tr><td><b>Pripravil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td></tr></xsl:for-each></tbody></table><p> </p></div><div class="signareafile"><xsl:for-each select="pdo:body/pdo:DDV_PD"><h1>Poročilo o prodaji blaga na daljavo v druge države EU za leto <xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(pdo:Year)"> 
      </xsl:when><xsl:when test="pdo:Year=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="pdo:Year"></xsl:value-of></xsl:otherwise></xsl:choose></h1><p> </p><table class="tablesignbullet" cellspacing="0"><tr><td valign="top">Naziv</td><td><xsl:value-of select="//edp:Header/edp:taxpayer/edp:name"></xsl:value-of></td></tr><tr><td valign="top" style="border-width: 1px 1px 0px 1px">Ulica in hišna številka</td><td style="border-width: 1px 1px 0px 1px"><xsl:value-of select="//edp:Header/edp:taxpayer/edp:address1"></xsl:value-of></td></tr><tr><td valign="top" style="border-width: 0px">Naselje</td><td style="border-width: 0px"><xsl:value-of select="//edp:Header/edp:taxpayer/edp:city"></xsl:value-of></td></tr><tr><td valign="top" style="border-width: 0px">Poštna številka - Pošta</td><td style="border-width: 0px"><xsl:value-of select="//edp:Header/edp:taxpayer/edp:postNumber"></xsl:value-of> 
                  <xsl:value-of select="//edp:Header/edp:taxpayer/edp:postName"></xsl:value-of></td></tr><tr><td valign="top" style="border-width: 0px 1px 1px 1px">Država</td><td style="border-width: 0px 1px 1px 1px"><xsl:value-of select="//edp:Header/edp:taxpayer/edp:countryID"></xsl:value-of></td></tr><tr><td valign="top">Davčna številka</td><td><xsl:value-of select="//edp:Header/edp:taxpayer/edp:taxNumber"></xsl:value-of></td></tr></table><table class="tablesignbullet" cellspacing="0" width="100%"><xsl:if test="pdo:Sell"><tr class="lblheader2"><td class="left header">#</td><td class="left header">EU država</td><td class="left header">ID za DDV</td><td class="left header">Obdobje začetka identifikacije</td><td class="left header">Obdobje konca identifikacije</td><td class="header" align="right">Letni prihodek od prodaje</td></tr><xsl:for-each select="pdo:Sell"><tr><td class="left"><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(position())"> 
      </xsl:when><xsl:when test="position()=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="position()"></xsl:value-of></xsl:otherwise></xsl:choose>.
                    </td><td class="left"><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(pdo:EuCountry)"> 
      </xsl:when><xsl:when test="pdo:EuCountry=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="pdo:EuCountry"></xsl:value-of></xsl:otherwise></xsl:choose></td><td class="left"><xsl:choose xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:when test="not(pdo:DdvId)"> 
      </xsl:when><xsl:when test="pdo:DdvId=''"> 
      </xsl:when><xsl:otherwise><xsl:value-of select="pdo:DdvId"></xsl:value-of></xsl:otherwise></xsl:choose></td><td class="left"><xsl:call-template name="dateOnly"><xsl:with-param name="timestamp" select="pdo:IdentificationStart"></xsl:with-param></xsl:call-template></td><td class="left"><xsl:call-template name="dateOnly"><xsl:with-param name="timestamp" select="pdo:IdentificationEnd"></xsl:with-param></xsl:call-template></td><td align="right" style="padding-right:8px;"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="pdo:YearlyIncome"></xsl:with-param></xsl:call-template></td></tr></xsl:for-each></xsl:if><tr><td colspan="5" align="right" style="border-width: 0px; font-weight: bold;">Vsota</td><td align="right" style="padding-right:8px; font-weight: bold;"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="pdo:Sum"></xsl:with-param></xsl:call-template></td></tr></table><div style="display:inline-block; width:100%;" xmlns:var="urn:hermes-softlab-com-durs-variant"><table class="tablesignform" cellspacing="0"><tr><td></td><td class="right">e-DDV_PD_1.3</td></tr></table></div></xsl:for-each></div></div></xsl:for-each></xsl:template><xsl:template name="Amount"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="not($amount)"> </xsl:when><xsl:otherwise><xsl:value-of select="translate(format-number($amount, '#,##0'), '.,', ',.')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="dateAndTime"><xsl:param name="timestamp"></xsl:param><xsl:if test="not($timestamp='')"><xsl:call-template name="dateOnly"><xsl:with-param name="timestamp" select="$timestamp"></xsl:with-param></xsl:call-template> <xsl:value-of select="substring($timestamp, 12, 8)"></xsl:value-of></xsl:if></xsl:template><xsl:template name="dateOnly"><xsl:param name="timestamp"></xsl:param><xsl:variable name="tmonth"><xsl:value-of select="substring($timestamp, 6, 2)"></xsl:value-of></xsl:variable><xsl:variable name="tday"><xsl:value-of select="substring($timestamp, 9, 2)"></xsl:value-of></xsl:variable><xsl:variable name="tyear"><xsl:value-of select="substring($timestamp, 1, 4)"></xsl:value-of></xsl:variable><xsl:if test="($timestamp) and ($timestamp != '')"><xsl:value-of select="$tday"></xsl:value-of>.<xsl:value-of select="$tmonth"></xsl:value-of>.<xsl:value-of select="$tyear"></xsl:value-of></xsl:if></xsl:template></xsl:stylesheet>