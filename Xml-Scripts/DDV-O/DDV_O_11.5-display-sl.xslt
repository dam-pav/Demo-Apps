<?xml version="1.0" encoding="utf-8"?><xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ddvo="http://edavki.durs.si/Documents/Schemas/DDV_O_11.xsd" xmlns:edp="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd" xmlns:form="http://tempuri.org/Forms" xmlns:incl="urn:hermes-softlab-com-durs-include" xmlns:loc="urn:hermes-softlab-com-durs-localize" xmlns:var="urn:hermes-softlab-com-durs-variant"><xsl:template match="/"><html><head><style type="text/css" xmlns:outxsl="generated:xsl" xmlns:edp="http://tempuri.org/EDP-Common-1" xmlns:loc="http://tempuri.org/EDP-l10n">

/*** EDP-Style 2.0 ***/

.lblprefill { border: 1px solid #B4BCB9; background-color: #F0F0F0; color:#000}
div.fldprefill, div.fldborder, span.fldborder {  border: 1px solid #cfa1a0; padding: 2px; }
div.fldinput, div.fldValue, span.fldinput { background: white; border: 1px solid #cfa1a0; padding: 2px;  }

   /*** font-size general ***/
body, table { font-size: 9pt;}
body.sign { border: 0; background: #efefef; font-family: verdana, sans-serif;}
table {border: 0px; }

.mw50p {min-width:50%;}

   /*** COMMON HEADER ***/
div.commonheader {display: block;  padding: 0.6em 1em; /*border-color: #00659c;*/ 
background-image: url('durs_znak_60.png'); background-attachment:scroll;  background-position:bottom right; background-repeat:no-repeat;  background-attachment:scroll;}
div.commonheader table td {color: #000;  }

   /*** Signing ***/
div.signareafile { display: block; height: expression('100%'); background: #f2f2f2; padding: 5px 15px; margin-bottom: 20px; }
div.signareafile h2, div.signareaprep h2 {margin-top: 0; margin-bottom: 0.3em; }

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

.signareafile .instruct {margin-bottom: 0.5em; color: #343434; background-color: #EFECC9; padding: 6px; }
.signareafile .instruct1 {margin-bottom: 0em; color: #343434; background-color: #EFECC9; padding: 6px;}
.signareafile .instruc2 {display: none;}
.signareafile .hidden {display: none;}
.signareafile .no-margin {margin: 0;}
.signareafile .right { text-align: right;}

.bgTitle1 {background-color: #C8D3D7; color: #1c1c1c;padding: 2px 5px 1px 5px;}
.bgTitle2 {background-color: #D6DEE1; color: #1c1c1c;padding: 2px 5px 1px 5px; font-size: small;}
.bgTitle3 {background-color: #E4E9EC; color: #1c1c1c;padding: 2px 5px 1px 5px; font-size: small;}
.padd0 {padding: 0 !important;}
.cTitle1 {color: #C8D3D7;}
.cTitle2 {color: #D2DADD;}
.cTitle3 {color: #E4E9EC;}

.bold { font-weight: bold; }

   /*** TABLE SIGN BULLET ***/
div.tableframe-nc {display: inline-block;}   
.currencyright {font-size: 11px !important;text-align: right;}
div.tablebackground {background-color: #e2e2e2;}
table.tablesignbullet {margin: 0.2em 0px 10px 0px; border: #738294 1px solid; background-color: #fafafa;  }
table.tablesignbullet tr.noborder td {border: 0px none; background-color: #f8f8f8; }
table.tablesignbullet td {padding: 0.3em 6px 0.3em 4px; border-bottom: #f1f1f1 1px solid; vertical-align: middle;}
table.tablesignbullet tr.first td { background: #b8ccce; border-bottom: #016a73 2px solid; font-weight: bold;}
table.tablesignbullet tr.first1 td { background: #D3DDDE ; border-bottom: #308289 1px solid}
table.tablesignbullet tr.First td { background: #b8ccce; border-bottom: #016a73 2px solid; font-weight: bold;}
table.tablesignbullet td.value {text-align: center; }
table.tablesignbullet td.right {text-align: right; }  
table.tablesignbullet td.input {padding-top: 0; padding-bottom: 0; }
table.tablesignbullet td.dark {background: #efefef; }
table.tablesignbullet td.lblmenu {background: #f1f1f1; border-bottom: #e8e8e8 0px solid;}
table.tablesignbullet tr.subhead {font-weight: bold; background-color: #e9e9e9;}
table.tablesignbullet tr.lblheader  {background-color: #f2f2f2;}
table.tablesignbullet tr.lblheader0  {font-weight: bold;  background-color: #dddddd;}
table.tablesignbullet tr.lblheader2 {font-weight: bold; background-color: #e9e9e9; }
table.tablesignbullet tr.lblheader3 {font-weight: bold; background-color: #f3f3f3; }
table.tablesignbullet tr.empty td {background:#f2f2f2; border-bottom: #738294 1px solid; border-top:none; line-height:3px;}
table.tablesignbullet tr.summary td {background:#f4f4f4; font-weight:bold; border-top: #d4d4d4 1px solid ;}
table.tablesignbullet tr.lSummary td, tfoot.lSummary td {background:#f4f4f4; font-weight:bold; border-top: #d4d4d4 1px solid ;}
table.tablesignbullet tr.grey td {background:#c8d3d4; line-height:0.6em;}
td.tdcomment {background-color: #f3f3f3; color: #343434;}
.hyphenate {overflow-wrap: break-word;word-wrap: break-word;-webkit-hyphens: auto;-ms-hyphens: auto;-moz-hyphens: auto;hyphens: auto;}

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
table.tablebulletFull tr.lSummary td {background: #D9D9D9; font-weight:bold; border-top: #C4C4C4 1px solid;}
table.tablebulletFull tr.empty td {background:#f3f3f3; border-bottom: #c1c7cf 1px solid; border-top:none; line-height:3px;}

table.tableSubTable {margin: 0.2em 0px 1px 0px; width:100%; }
table.tableSubTable tr.oddRow {background: #f1f1f1; }
table.tableSubTable tr.evenRow {background: #ffffff; }

table.evenoddrow1&gt;tbody&gt;tr:nth-child(even) {background: #fefefe}
table.evenoddrow1&gt;tbody&gt;tr:nth-child(odd) {background: #f6f6f6} 


table.evenoddrow tr:nth-child(even) {background: #f8f8f8}
table.evenoddrow tr:nth-child(odd) {background: #e4e4e4;} 

table.evenoddrow tr:nth-child(even) td table.inevenodd tr {background: #f8f8f8;} 
table.evenoddrow tr:nth-child(odd) td table.inevenodd tr {background: #e4e4e4;} 
table.evenoddrow tr:nth-child(even) td table.inevenodd tr td.inp {background: #fefefe;}
table.evenoddrow tr:nth-child(odd) td table.inevenodd tr td.inp {background: #f6f6f6;} 

table.evenoddrow td table.inevenodd tr td {border-bottom: 0px solid;} 
table.evenoddrow tr:nth-child(even)  table.tablebullet tr {background: initial;} 
table.evenoddrow tr:nth-child(odd) table.tablebullet tr {background: initial;} 

table.full { width: 100%;}

.bgpadd1 {border-left-color: #f1f1f1; border-left-style: solid;border-left-width: 2em;}
.bgpadd2 {border-left-color: #f1f1f1; border-left-style: solid;border-left-width: 4em;}
.bgpadd3 {border-left-color: #f1f1f1; border-left-style: solid;border-left-width: 6em;}



    </style></head><body class="sign"><xsl:call-template name="DDV-O"></xsl:call-template></body></html></xsl:template><xsl:template name="DDV-O"><xsl:for-each select="ddvo:Envelope"><xsl:if test="//edp:Signatures/edp:DepositorSignature" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:DepositorSignature/ds:Signature/ds:SignatureValue)=''"><h1>Oddajanje vloge</h1><p class="instruct">S potrditvijo boste podpisali dokument in ga predložili finančni upravi. Vloženega dokumenta ne morete več spreminjati.</p></xsl:if></xsl:if><xsl:if test="//edp:Signatures/edp:PreparerSignature" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:PreparerSignature/ds:Signature/ds:SignatureValue)=''"><h1>Priprava vloge</h1><p class="instruct">S potrditvijo boste pripravili dokument za podpisnika. Dokument ne bo predložen finančni upravi.</p></xsl:if></xsl:if><xsl:if test="//edp:Signatures/edp:DepositorServerSignature" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:DepositorServerSignature/ds:Signature/ds:SignatureValue)=''"><h1>Oddajanje vloge</h1><p class="instruct">S potrditvijo boste podpisali dokument in ga predložili finančni upravi. Vloženega dokumenta ne morete več spreminjati.</p></xsl:if></xsl:if><xsl:if test="//edp:Signatures/edp:PreparerServerSignature" xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><xsl:if test="string(//edp:Signatures/edp:PreparerServerSignature/ds:Signature/ds:SignatureValue)=''"><h1>Priprava vloge</h1><p class="instruct">S potrditvijo boste pripravili dokument za podpisnika. Dokument ne bo predložen finančni upravi.</p></xsl:if></xsl:if><div class="document"><div class="commonheader"><table cellspacing="0"><tbody><xsl:for-each select="edp:Header//edp:domain"><tr><td><b>Sistem:</b></td><td><xsl:value-of select="."></xsl:value-of></td></tr></xsl:for-each><xsl:for-each select="edp:Header//edp:responseTo"><tr><td><b>Odgovor na dokument:</b></td><td><xsl:value-of select="."></xsl:value-of></td></tr></xsl:for-each><xsl:for-each select="edp:Signatures//edp:receipt"><tr><td><b>Vloženo:</b></td><td><xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:timestamp"></xsl:value-of></xsl:with-param></xsl:call-template></td></tr><xsl:if test="string-length(edp:documentNumber)!=0"><tr><td><b>Št. dokumenta:</b></td><td><xsl:value-of select="edp:documentNumber"></xsl:value-of></td></tr></xsl:if><xsl:if test="string-length(edp:metaText1)!=0 and string-length(edp:metaDate1)!=0 and starts-with(edp:metaText1, 'SI')"><tr><td><b>Referenčna številka:</b></td><td><xsl:value-of select="edp:metaText1"></xsl:value-of></td></tr><tr><td><b>Verzija:
                  </b></td><td><xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:metaDate1"></xsl:value-of></xsl:with-param></xsl:call-template></td></tr></xsl:if></xsl:for-each><xsl:for-each select="edp:Signatures/edp:DepositorSignature/edp:Depositor"><tr><td><b>Vložil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td><td>                
                (<xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:timestamp"></xsl:value-of></xsl:with-param></xsl:call-template>)
              </td></tr></xsl:for-each><xsl:for-each select="edp:Signatures/edp:DepositorServerSignature/edp:Depositor"><tr><td><b>Vložil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td></tr></xsl:for-each><xsl:for-each select="edp:Signatures/edp:PreparerSignature/edp:Preparer"><tr><td><b>Pripravil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td><td>
                (<xsl:call-template name="dateAndTime"><xsl:with-param name="timestamp"><xsl:value-of select="edp:timestamp"></xsl:value-of></xsl:with-param></xsl:call-template>)
              </td></tr></xsl:for-each><xsl:for-each select="edp:Signatures/edp:PreparerServerSignature/edp:Preparer"><tr><td><b>Pripravil:</b></td><td><xsl:value-of select="edp:name"></xsl:value-of></td></tr></xsl:for-each></tbody></table><p> </p></div><div class="signareafile"><h1>Obrazec DDV-O za obračun davka na dodano vrednost</h1><table class="tablesignbullet full" cellspacing="0"><tr class="first"><td colspan="6"> </td></tr><xsl:for-each select="."><tr><td class="lblmenu">Za obdobje: </td><td><xsl:call-template name="dateOnly"><xsl:with-param name="timestamp" select="ddvo:body/ddvo:DDV-O/ddvo:taxPeriodStart"></xsl:with-param></xsl:call-template> do <xsl:call-template name="dateOnly"><xsl:with-param name="timestamp" select="ddvo:body/ddvo:DDV-O/ddvo:taxPeriodEnd"></xsl:with-param></xsl:call-template> </td><td colspan="2"><div style="display: inline-block;">Samoprijava <xsl:call-template name="YesNo"><xsl:with-param name="val" select="ddvo:body/ddvo:DDV-O/ddvo:selfReport"></xsl:with-param></xsl:call-template></div><div style="display: inline-block; float:right;">Vloga za predložitev po roku <xsl:call-template name="YesNo"><xsl:with-param name="val" select="ddvo:body/ddvo:DDV-O/ddvo:depositAfterDeadline"></xsl:with-param></xsl:call-template></div></td></tr><tr><td colspan="2"></td><td><div style="display: inline-block;">Ne bom uporabil instituta samoprijave, niti ne predlagam obračuna po roku v skladu z 52. členom ZDavP-2 <xsl:call-template name="YesNo"><xsl:with-param name="val" select="ddvo:body/ddvo:DDV-O/ddvo:selfReportDoNotUseInstitute='true'"></xsl:with-param></xsl:call-template></div></td><td></td></tr><tr><td class="lblmenu">Firma / Ime in priimek</td><td><xsl:value-of select="edp:Header/edp:taxpayer/edp:name"></xsl:value-of></td><xsl:call-template name="taggedField"><xsl:with-param name="name">Identifikacijska številka za DDV</xsl:with-param><xsl:with-param name="nr">01</xsl:with-param><xsl:with-param name="value"><xsl:value-of select="edp:Header/edp:taxpayer/edp:taxNumber"></xsl:value-of></xsl:with-param><xsl:with-param name="borderstyle"></xsl:with-param></xsl:call-template></tr><tr><td class="lblmenu">Sedež / Stalno prebivališče</td><td><xsl:value-of select="edp:Header/edp:taxpayer/edp:address1"></xsl:value-of> <xsl:for-each select="edp:Header/edp:taxpayer/edp:address2"><xsl:value-of select="."></xsl:value-of> 
                  </xsl:for-each><br></br><xsl:value-of select="edp:Header/edp:taxpayer/edp:city"></xsl:value-of><div><xsl:value-of select="//edp:Header/edp:taxpayer/edp:postNumber"></xsl:value-of> 
                    <xsl:value-of select="//edp:Header/edp:taxpayer/edp:postName"></xsl:value-of></div></td><xsl:call-template name="taggedField"><xsl:with-param name="name">Identifikacijska številka za DDV zastopnika</xsl:with-param><xsl:with-param name="nr">02</xsl:with-param><xsl:with-param name="value"><xsl:value-of select="ddvo:body/ddvo:DDV-O/ddvo:f02"></xsl:value-of></xsl:with-param><xsl:with-param name="borderstyle"></xsl:with-param></xsl:call-template></tr><xsl:if test="ddvo:body/ddvo:DDV-O/ddvo:representedForeigner"><tr><td class="lblmenu">Naziv tujca</td><td><xsl:if test="ddvo:body/ddvo:DDV-O/ddvo:representedForeigner/ddvo:name"><xsl:value-of select="ddvo:body/ddvo:DDV-O/ddvo:representedForeigner/ddvo:name"></xsl:value-of> 
                    </xsl:if></td><td class="lblmenu">Identifikacijska številka tujca</td><td><xsl:if test="ddvo:body/ddvo:DDV-O/ddvo:representedForeigner/ddvo:idNumber"><xsl:value-of select="ddvo:body/ddvo:DDV-O/ddvo:representedForeigner/ddvo:idNumber"></xsl:value-of> 
                    </xsl:if></td></tr><tr><td class="lblmenu">Naslov tujca</td><td><xsl:if test="ddvo:body/ddvo:DDV-O/ddvo:representedForeigner/ddvo:address"><xsl:value-of select="ddvo:body/ddvo:DDV-O/ddvo:representedForeigner/ddvo:address"></xsl:value-of> 
                    </xsl:if></td><td colspan="3"> </td></tr></xsl:if></xsl:for-each></table><xsl:for-each select="ddvo:body/ddvo:DDV-O"><table class="tablesignbullet full" cellspacing="0"><tr class="first"><td colspan="4">I. Dobave blaga in storitev (vrednosti so brez DDV)</td><td align="right">V EUR</td></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Dobava blaga in storitev</xsl:with-param><xsl:with-param name="nr">11</xsl:with-param><xsl:with-param name="field">f11</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Dobava blaga in storitev v Sloveniji od katerih obračuna DDV prejemnik</xsl:with-param><xsl:with-param name="nr">11a</xsl:with-param><xsl:with-param name="field">f11a</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Dobave blaga in storitev v druge države članice EU</xsl:with-param><xsl:with-param name="nr">12</xsl:with-param><xsl:with-param name="field">f12</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Prodaja blaga na daljavo</xsl:with-param><xsl:with-param name="nr">13</xsl:with-param><xsl:with-param name="field">f13</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Montaža in instaliranje blaga v drugi državi članici</xsl:with-param><xsl:with-param name="nr">14</xsl:with-param><xsl:with-param name="field">f14</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Oproščene dobave brez pravice do odbitka DDV</xsl:with-param><xsl:with-param name="nr">15</xsl:with-param><xsl:with-param name="field">f15</xsl:with-param></xsl:call-template></tr><tr><td colspan="9" style="padding: 0 !important;"><table class="tablesignbullet" cellspacing="0" width="100%" style="margin: 0 !important; border: none !important;"><tr class="first"><td>II. Obračunani DDV</td><td> </td><td align="right"><xsl:call-template name="Amount2"><xsl:with-param name="amount" select="ddvo:v_ddv"></xsl:with-param></xsl:call-template>%
                      </td><td> </td><td align="right"><xsl:call-template name="Amount2"><xsl:with-param name="amount" select="ddvo:n_ddv"></xsl:with-param></xsl:call-template>%
                      </td><td> </td><td align="right"><xsl:call-template name="Amount2"><xsl:with-param name="amount" select="ddvo:z_ddv"></xsl:with-param></xsl:call-template>%
                      </td><td> </td><td align="right">Drugo</td></tr><tr><td class="lblmenu">po stopnji</td><td class="lblmenu" align="right">21</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f21"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">22</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f22"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">22a</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f22a"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td colspan="2"> </td></tr><tr><td class="lblmenu">od pridobitev blaga iz drugih držav članic EU po stopnji </td><td class="lblmenu" align="right">23</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f23"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">24</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f24"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">24b</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f24b"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td colspan="2"> </td></tr><tr><td class="lblmenu">od prejetih storitev iz drugih držav članic EU po stopnji </td><td class="lblmenu" align="right">23a</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f23a"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">24a</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f24a"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">24c</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f24c"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td colspan="2"> </td></tr><tr><td class="lblmenu">na podlagi samoobdavčitve kot prejemnik blaga in storitev po stopnji </td><td class="lblmenu" align="right">25</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f25"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">25a</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f25a"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">25b</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f25b"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td><td colspan="2"> </td></tr><tr><td class="lblmenu">na podlagi samoobdavčitve od uvoza</td><td colspan="6"> </td><td class="lblmenu" align="right">26</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f26"></xsl:with-param><xsl:with-param name="nullValue">0</xsl:with-param></xsl:call-template></td></tr></table></td></tr><tr class="first"><td colspan="4">III. Nabave blaga in storitev (vrednosti so brez DDV)</td><td> </td></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Nabave blaga in storitev</xsl:with-param><xsl:with-param name="nr">31</xsl:with-param><xsl:with-param name="field">f31</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Nabave blaga in storitev v Sloveniji od katerih obračuna DDV prejemnik</xsl:with-param><xsl:with-param name="nr">31a</xsl:with-param><xsl:with-param name="field">f31a</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Pridobitve blaga iz drugih držav članic EU</xsl:with-param><xsl:with-param name="nr">32</xsl:with-param><xsl:with-param name="field">f32</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Prejete storitve iz drugih držav članic EU</xsl:with-param><xsl:with-param name="nr">32a</xsl:with-param><xsl:with-param name="field">f32a</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Oproščene nabave blaga in storitve in oproščene pridobitve blaga</xsl:with-param><xsl:with-param name="nr">33</xsl:with-param><xsl:with-param name="field">f33</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Nabavna vrednost nepremičnin</xsl:with-param><xsl:with-param name="nr">34</xsl:with-param><xsl:with-param name="field">f34</xsl:with-param></xsl:call-template></tr><tr><xsl:call-template name="currencyField"><xsl:with-param name="name">Nabavna vrednost drugih osnovnih sredstev</xsl:with-param><xsl:with-param name="nr">35</xsl:with-param><xsl:with-param name="field">f35</xsl:with-param></xsl:call-template></tr></table><table class="tablesignbullet full" cellspacing="0"><tr class="first"><td class="lblmenu">IV. Odbitek DDV</td><td colspan="2" align="right"><xsl:call-template name="Amount2"><xsl:with-param name="amount" select="ddvo:v_ddv"></xsl:with-param></xsl:call-template> %</td><td colspan="2" align="right"><xsl:call-template name="Amount2"><xsl:with-param name="amount" select="ddvo:n_ddv"></xsl:with-param></xsl:call-template> %</td><td colspan="2" align="right"><xsl:call-template name="Amount2"><xsl:with-param name="amount" select="ddvo:z_ddv"></xsl:with-param></xsl:call-template> %</td><td colspan="2" align="right">Drugo</td></tr><tr><td class="lblmenu">od nabav blaga in storitev, pridobitev blaga in prejetih storitev iz drugih držav članic EU in od uvoza po stopnji</td><td class="lblmenu" align="right">41</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f41"></xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">42</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f42"></xsl:with-param></xsl:call-template></td><td class="lblmenu" align="right">42a</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f42a"></xsl:with-param></xsl:call-template></td><td colspan="2"> </td></tr><tr><td class="lblmenu">od pavšalnega nadomestila po stopnji 8%</td><td colspan="6"> </td><td class="lblmenu" align="right">43</td><td class="input" align="right"><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:f43"></xsl:with-param></xsl:call-template></td></tr></table><table class="tablesignbullet full" cellspacing="0"><tr><td colspan="9" style="padding: 0 !important;"></td></tr><tr><td colspan="2"><table class="tablesignbullet" cellspacing="0"><tr class="lblheader3"><td class="dark">Obveznost DDV</td><td> </td><td class="lbl">51</td><td class="lbl"><xsl:call-template name="Amount2"><xsl:with-param name="amount" select="ddvo:f51"></xsl:with-param></xsl:call-template></td></tr></table></td><td> </td><td colspan="3"><table class="tablesignbullet" cellspacing="0"><tr class="lblheader3"><td class="lblmenu">Presežek DDV</td><td> </td><td>52</td><td><xsl:call-template name="Amount2"><xsl:with-param name="amount" select="ddvo:f52"></xsl:with-param></xsl:call-template></td></tr></table></td></tr><tr><td class="lblmenu">Izračunavam odbitni delež 03</td><td><xsl:call-template name="YesNo"><xsl:with-param name="val" select="ddvo:f03"></xsl:with-param></xsl:call-template></td><td> </td><td class="lblmenu">Zahtevam vračilo presežkov 04</td><td><xsl:call-template name="YesNo"><xsl:with-param name="val" select="ddvo:f04"></xsl:with-param></xsl:call-template></td></tr></table><xsl:if test="//ddvo:body/ddvo:DDV-O/ddvo:selfReportOrCorrection"><table class="tablesignbullet" cellspacing="0"><tr class="first"><td colspan="4">Samoprijava/popravek</td></tr><tr><td>Davčno obdobje</td><td>Vrednost DDV</td><td>Obresti</td></tr><xsl:for-each select="ddvo:selfReportOrCorrection"><tr><td><xsl:call-template name="dateOnly"><xsl:with-param name="timestamp"><xsl:value-of select="ddvo:periodStart"></xsl:value-of></xsl:with-param></xsl:call-template>
                       - 
                      <xsl:call-template name="dateOnly"><xsl:with-param name="timestamp"><xsl:value-of select="ddvo:periodEnd"></xsl:value-of></xsl:with-param></xsl:call-template></td><td><xsl:call-template name="Amount"><xsl:with-param name="amount" select="ddvo:amount"></xsl:with-param></xsl:call-template></td><td><xsl:call-template name="Amount2"><xsl:with-param name="amount" select="ddvo:interest"></xsl:with-param></xsl:call-template></td></tr></xsl:for-each></table></xsl:if></xsl:for-each><div style="display:inline-block; width:100%;"><table class="tablesignform" cellspacing="0"><tr><td>Obrazec DDV-O</td><td class="right">e-DDV_O_11.5</td></tr></table></div><xsl:call-template name="InternalAttachments"></xsl:call-template></div></div></xsl:for-each></xsl:template><xsl:template name="taggedField"><xsl:param name="name"></xsl:param><xsl:param name="nr"></xsl:param><xsl:param name="value"></xsl:param><xsl:param name="borderstyle"></xsl:param><td class="lblmenu"><xsl:attribute name="style"><xsl:value-of select="$borderstyle"></xsl:value-of></xsl:attribute><xsl:value-of select="$name"></xsl:value-of> [<xsl:value-of select="$nr"></xsl:value-of>]:
    </td><td nowrap="nowrap"><xsl:attribute name="style"><xsl:value-of select="$borderstyle"></xsl:value-of></xsl:attribute><xsl:if test="not($value='')">
        SI<xsl:value-of select="$value"></xsl:value-of> 
      </xsl:if></td></xsl:template><xsl:template name="currencyField"><xsl:param name="name"></xsl:param><xsl:param name="nr"></xsl:param><xsl:param name="field"></xsl:param><td class="lblmenu"><xsl:value-of select="$name"></xsl:value-of></td><td></td><td></td><td class="lblmenu" align="right"><xsl:value-of select="$nr"></xsl:value-of></td><td class="input" align="right" nowrap="nowrap"><xsl:variable name="iter" select="*[local-name() = $field]"></xsl:variable><xsl:choose><xsl:when test="not(string($iter))"><xsl:value-of select="translate(format-number(0.003424, '#,##0'), '.,', ',.')"></xsl:value-of></xsl:when><xsl:otherwise><xsl:for-each select="*[local-name() = $field]"><xsl:value-of select="translate(format-number(., '#,##0'), '.,', ',.')"></xsl:value-of></xsl:for-each></xsl:otherwise></xsl:choose></td></xsl:template><xsl:template name="getDay"><xsl:param name="timestamp"></xsl:param><xsl:variable name="tday"><xsl:value-of select="substring($timestamp, 9, 2)"></xsl:value-of></xsl:variable><xsl:if test="not($timestamp='')"><xsl:value-of select="$tday"></xsl:value-of></xsl:if></xsl:template><xsl:template name="getYear"><xsl:param name="timestamp"></xsl:param><xsl:variable name="tyear"><xsl:value-of select="substring($timestamp, 1, 4)"></xsl:value-of></xsl:variable><xsl:if test="not($timestamp='')"><xsl:value-of select="$tyear"></xsl:value-of></xsl:if></xsl:template><xsl:template name="Amount"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="not($amount) or $amount=''"> </xsl:when><xsl:otherwise><xsl:value-of select="translate(format-number($amount, '#,##0'), '.,', ',.')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="Amount1"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="not($amount) or $amount=''"> </xsl:when><xsl:otherwise><xsl:value-of select="translate(format-number($amount, '#,##0.0'), '.,', ',.')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="Amount2"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="not($amount) or $amount=''"> </xsl:when><xsl:otherwise><xsl:value-of select="translate(format-number($amount, '#,##0.00'), '.,', ',.')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="Amount3"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="not($amount) or $amount=''"> </xsl:when><xsl:otherwise><xsl:value-of select="translate(format-number($amount, '#,##0.000'), '.,', ',.')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="Amount4"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="not($amount) or $amount=''"> </xsl:when><xsl:otherwise><xsl:value-of select="translate(format-number($amount, '#,##0.0000'), '.,', ',.')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="Amount5"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="not($amount) or $amount=''"> </xsl:when><xsl:otherwise><xsl:value-of select="translate(format-number($amount, '#,##0.00000'), '.,', ',.')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="Amount8"><xsl:param name="amount"></xsl:param><xsl:choose><xsl:when test="not($amount) or $amount=''"> </xsl:when><xsl:otherwise><xsl:value-of select="translate(format-number($amount, '#,##0.00000000'), '.,', ',.')"></xsl:value-of></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="YesNo"><xsl:param name="val"></xsl:param><xsl:choose><xsl:when test="translate($val,'TRUEFALS','truefals') = 'true'">Da</xsl:when><xsl:when test="translate($val,'TRUEFALS','truefals') = 'false'">Ne</xsl:when><xsl:otherwise></xsl:otherwise></xsl:choose></xsl:template><xsl:template name="dateAndTime"><xsl:param name="timestamp"></xsl:param><xsl:if test="not($timestamp='')"><xsl:call-template name="dateOnly"><xsl:with-param name="timestamp" select="$timestamp"></xsl:with-param></xsl:call-template> <xsl:value-of select="substring($timestamp, 12, 8)"></xsl:value-of></xsl:if></xsl:template><xsl:template name="dateOnly"><xsl:param name="timestamp"></xsl:param><xsl:variable name="tmonth"><xsl:value-of select="substring($timestamp, 6, 2)"></xsl:value-of></xsl:variable><xsl:variable name="tday"><xsl:value-of select="substring($timestamp, 9, 2)"></xsl:value-of></xsl:variable><xsl:variable name="tyear"><xsl:value-of select="substring($timestamp, 1, 4)"></xsl:value-of></xsl:variable><xsl:if test="($timestamp) and ($timestamp != '')"><xsl:value-of select="$tday"></xsl:value-of>.<xsl:value-of select="$tmonth"></xsl:value-of>.<xsl:value-of select="$tyear"></xsl:value-of></xsl:if></xsl:template><xsl:template name="InternalAttachments"><xsl:if test="//edp:AttachmentList/edp:ExternalAttachment"><p> </p><table class="tablesignbullet" cellspacing="0" cellpadding="2" width="100%"><tr class="first"><td colspan="6">Vsebovane priloge</td></tr><tr class="lblheader"><td>#</td><td class="nomobile">Id</td><td>Ime datoteke</td><td>Tip priloge</td><td>Opis</td><td class="nomobile">Zgoščena vrednost (SHA-1 hash)</td></tr><xsl:for-each select="//edp:AttachmentList/edp:ExternalAttachment"><tr><td><xsl:value-of select="position()"></xsl:value-of>.</td><td class="nomobile"><xsl:value-of select="edp:attachmentId"></xsl:value-of></td><td class="m_ellips7"><a><xsl:attribute name="href">../../CommonPages/Documents/AttachmentDownload.aspx?intAttId=<xsl:value-of select="edp:attachmentId"></xsl:value-of></xsl:attribute><xsl:value-of select="edp:filename"></xsl:value-of></a></td><td class="m_ellips7"><xsl:value-of select="edp:type"></xsl:value-of></td><td class=""><xsl:value-of select="edp:description"></xsl:value-of></td><td class="nomobile"><xsl:value-of select="edp:hash"></xsl:value-of></td></tr></xsl:for-each></table></xsl:if></xsl:template></xsl:stylesheet>