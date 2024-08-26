<?xml version='1.0' ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<!-- MS doesn't have an implementation for xslt 2.0, that is why we need to implement muenchian grouping instead of the for-each-group statement -->
<xsl:key name="sfrTypeId" match="line" use="substring(@rowNo,1,1)"/>
<xsl:key name="row" match="line" use="@rowNo"/>
    <xsl:template match="/">
<AjpesDokument xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Ident vrsta="sfr_2023">
        <xsl:attribute name="krog"><xsl:value-of select="/SFR/@periodNo"/></xsl:attribute>
        <Datum><xsl:value-of select="/SFR/@dateCreated"/></Datum>
        <Ura><xsl:value-of select="/SFR/@timeCreated"/></Ura>
        <NacinPredlozitve>EPOSTA</NacinPredlozitve>
    </Ident>
    <OsnovniPodatki>
        <SifUpor><xsl:value-of select="/SFR/@stateBudgetUser"/></SifUpor>
        <MaticnaStevilka10><xsl:value-of select="/SFR/@registrationNo"/></MaticnaStevilka10>
        <DavcnaStevilka><xsl:value-of select="/SFR/@taxNo"/></DavcnaStevilka>
        <Sektor><xsl:value-of select="/SFR/@sectorNo"/></Sektor>
        <Ime><xsl:value-of select="/SFR/@taxpayerName"/></Ime>
        <Sedez><xsl:value-of select="/SFR/@taxpayerAddress"/></Sedez>
        <OdgovornaOseba><xsl:value-of select="/SFR/@responsiblePerson"/></OdgovornaOseba>
        <TelefonskaStevilka><xsl:value-of select="/SFR/@phoneNo"/></TelefonskaStevilka>
        <Email><xsl:value-of select="/SFR/@eMail"/></Email>
        <VodjaPodjetja><xsl:value-of select="/SFR/@chiefExecutiveOfficer"/></VodjaPodjetja>
        <Datum><xsl:value-of select="/SFR/@documentDate"/></Datum>
        <Kraj><xsl:value-of select="/SFR/@documentCity"/></Kraj>
    </OsnovniPodatki>
    <Obrazci>
        <xsl:for-each select="/SFR/line[count(. | key('sfrTypeId',substring(@rowNo,1,1))[1]) = 1]">
        <xsl:variable name="sfrId" select="substring(@rowNo,1,1)" />
        <xsl:variable name="sfrType">
            <xsl:choose>
                <xsl:when test="$sfrId='1'">sfr</xsl:when>
                <xsl:when test="$sfrId='2'">sob</xsl:when>
                <xsl:when test="$sfrId='3'">trs</xsl:when>
                <xsl:when test="$sfrId='4'">tob</xsl:when>
                <xsl:when test="$sfrId='5'">vsfr</xsl:when>
                <xsl:when test="$sfrId='6'">vsob</xsl:when>
            </xsl:choose>
        </xsl:variable>
        <Obrazec>
            <xsl:attribute name="id"><xsl:value-of select="$sfrType"/></xsl:attribute>            
            <xsl:attribute name="krog"><xsl:value-of select="/SFR/@periodNo"/></xsl:attribute>            
            <!--Element Aop, maxOccurs=unbounded-->
            <xsl:for-each select="/SFR/line[count(. | key('row',@rowNo)[1]) = 1 and substring(@rowNo,1,1) = $sfrId]">
            <Aop>
                <xsl:attribute name="id"><xsl:value-of select="@rowNo"/></xsl:attribute>
                <xsl:variable name="currentRowNo" select="@rowNo" />
                <!--Element P, maxOccurs=unbounded-->
                <xsl:for-each select="/SFR/line[@rowNo = $currentRowNo]">
                <P>
                    <xsl:attribute name="s"><xsl:value-of select="@columnNo"/></xsl:attribute>            
                    <xsl:value-of select="@amount"/>
                </P>
                </xsl:for-each>
            </Aop>
            </xsl:for-each>
        </Obrazec>
        </xsl:for-each>
    </Obrazci>
</AjpesDokument>
    </xsl:template>
</xsl:stylesheet>
