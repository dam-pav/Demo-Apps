<?xml version='1.0' ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:p1="http://edavki.durs.si/Documents/Schemas/PD_O_2.xsd" xmlns:p2="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
<p1:Envelope xmlns:p1="http://edavki.durs.si/Documents/Schemas/PD_O_2.xsd" xmlns:p2="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <p2:Header>
        <p2:taxpayer>
            <!--Element p2:taxNumber is optional-->
            <xsl:if test="PDO/taxpayer/@taxNumber">
            <p2:taxNumber><xsl:value-of select="PDO/taxpayer/@taxNumber"/></p2:taxNumber>
            </xsl:if>
            <!--Element p2:vatNumber is optional&#x2D;-->
            <xsl:if test="PDO/taxpayer/@vatNumber">
            <p2:vatNumber><xsl:value-of select="PDO/taxpayer/@vatNumber"/></p2:vatNumber>
            </xsl:if>
            <!--Element p2:taxpayerType is optional-->
            <p2:taxpayerType>SP</p2:taxpayerType>
            <!--Element p2:name is optional-->
            <p2:name><xsl:value-of select="PDO/taxpayer/@name"/></p2:name>
            <!--Element p2:address1 is optional-->
            <p2:address1><xsl:value-of select="PDO/taxpayer/@address1"/></p2:address1>
            <!--Element p2:address2 is optional-->
            <p2:address2><xsl:value-of select="PDO/taxpayer/@address2"/></p2:address2>
            <!--Element p2:city is optional-->
            <p2:city><xsl:value-of select="PDO/taxpayer/@city"/></p2:city>
            <!--Element p2:postNumber is optional-->
            <p2:postNumber><xsl:value-of select="PDO/taxpayer/@postNumber"/></p2:postNumber>
            <!--Element p2:postName is optional-->
            <p2:postName><xsl:value-of select="PDO/taxpayer/@postName"/></p2:postName>
            <!--Element p2:municipalityName is optional-->
            <p2:municipalityName><xsl:value-of select="PDO/taxpayer/@municipalityName"/></p2:municipalityName>
            <!--Element p2:birthDate is optional-->
            <xsl:if test="PDO/taxpayer/@birthDate">
            <p2:birthDate><xsl:value-of select="PDO/taxpayer/@birthDate"/></p2:birthDate>
            </xsl:if>
            <!--Element p2:maticnaStevilka is optional-->
            <p2:maticnaStevilka><xsl:value-of select="PDO/taxpayer/@maticnaStevilka"/></p2:maticnaStevilka>
            <!--Element p2:invalidskoPodjetje is optional-->
            <p2:invalidskoPodjetje><xsl:value-of select="PDO/taxpayer/@invalidskoPodjetje"/></p2:invalidskoPodjetje>
            <!--Element p2:resident is optional-->
            <p2:resident><xsl:value-of select="PDO/taxpayer/@resident"/></p2:resident>
            <!--Element p2:activityCode is optional-->
            <p2:activityCode><xsl:value-of select="PDO/taxpayer/@activityCode"/></p2:activityCode>
            <!--Element p2:activityName is optional-->
            <p2:activityName><xsl:value-of select="PDO/taxpayer/@activityName"/></p2:activityName>
            <!--Element p2:countryID is optional-->
            <p2:countryID><xsl:value-of select="PDO/taxpayer/@countryID"/></p2:countryID>
            <!--Element p2:countryName is optional-->
            <p2:countryName><xsl:value-of select="PDO/taxpayer/@countryName"/></p2:countryName>
        </p2:taxpayer>
        <!--Element p2:responseTo is optional-->
        <p2:responseTo><xsl:value-of select="PDO/@responseTo"/></p2:responseTo>
        <!--Element p2:Workflow is optional-->
        <p2:Workflow>
            <!--Element p2:DocumentWorkflowID is optional-->
            <p2:DocumentWorkflowID>s</p2:DocumentWorkflowID>
            <!--Element p2:DocumentWorkflowName is optional-->
            <p2:DocumentWorkflowName><xsl:value-of select="PDO/Workflow/@DocumentWorkflowName"/></p2:DocumentWorkflowName>
        </p2:Workflow>
        <!--Element p2:CustodianInfo is optional-->
        <xsl:if test="PDO/CustodianInfo">
        <p2:CustodianInfo>
            <!--Element p2:name is optional-->
            <p2:name><xsl:value-of select="PDO/CustodianInfo/@name"/></p2:name>
            <!--Element p2:address1 is optional-->
            <p2:address1><xsl:value-of select="PDO/CustodianInfo/@address1"/></p2:address1>
            <!--Element p2:address2 is optional-->
            <p2:address2><xsl:value-of select="PDO/CustodianInfo/@address2"/></p2:address2>
            <!--Element p2:city is optional-->
            <p2:city><xsl:value-of select="PDO/CustodianInfo/@city"/></p2:city>
            <!--Element p2:CustodianNotes is optional-->
            <p2:CustodianNotes><xsl:value-of select="PDO/CustodianInfo/@CustodianNotes"/></p2:CustodianNotes>
            <!--Element p2:CustodianSubmitDate is optional-->
            <p2:CustodianSubmitDate><xsl:value-of select="PDO/CustodianInfo/@CustodianSubmitDate"/></p2:CustodianSubmitDate>
        </p2:CustodianInfo>
        </xsl:if>
        <!--Element p2:domain is optional-->
        <p2:domain><xsl:value-of select="PDO/@domain"/></p2:domain>
    </p2:Header>
    <p2:Signatures>
        <xsl:apply-templates select="PDO/Signatures"/>
    </p2:Signatures>
    <p1:body>
        <p2:bodyContent>string by default</p2:bodyContent>
        <p1:PD_O>
            <p1:PeriodYear><xsl:value-of select="PDO/@periodYear"/></p1:PeriodYear>
            <p1:PeriodMonth><xsl:value-of select="PDO/@periodNo"/></p1:PeriodMonth>
            <!--Element p1:A is optional, maxOccurs=unbounded-->
            <xsl:apply-templates select="PDO/lineRegular"/>
            <p1:A4><xsl:value-of select="PDO/@TotalAmountRegular"/></p1:A4>
            <!--Element p1:B is optional, maxOccurs=unbounded-->
            <xsl:apply-templates select="PDO/lineCorrection"/>
        </p1:PD_O>
    </p1:body>
</p1:Envelope>
    </xsl:template>

    <xsl:template match="lineRegular">
            <p1:A>
                <!--Element p1:A2 is optional-->
                <p1:A2><xsl:value-of select="@customerVATRegNo"/></p1:A2>
                <!--Element p1:A3 is optional-->
                <p1:A3><xsl:value-of select="@totalValueOfSupplies"/></p1:A3>
            </p1:A>
    </xsl:template>

    <xsl:template match="lineCorrection">
            <p1:B>
                <!--Element p1:B1_Year is optional-->
                <p1:B1_Year><xsl:value-of select="@year"/></p1:B1_Year>
                <!--Element p1:B1_Month is optional-->
                <p1:B1_Month><xsl:value-of select="@month"/></p1:B1_Month>
                <!--Element p1:B2 is optional-->
                <p1:B2><xsl:value-of select="@customerVATRegNo"/></p1:B2>
                <!--Element p1:B3 is optional-->
                <p1:B3><xsl:value-of select="@totalValueOfSupplies"/></p1:B3>
            </p1:B>
    </xsl:template>
</xsl:stylesheet>
