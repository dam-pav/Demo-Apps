<?xml version='1.0' ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:p1="http://edavki.durs.si/Documents/Schemas/DDV_PD_1.xsd" xmlns:p2="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
<p1:Envelope xmlns:p1="http://edavki.durs.si/Documents/Schemas/DDV_PD_1.xsd" xmlns:p2="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <p2:Header>
        <p2:taxpayer>
            <!--Element p2:taxNumber is optional-->
            <xsl:if test="DDVPD/taxpayer/@taxNumber">
            <p2:taxNumber><xsl:value-of select="DDVPD/taxpayer/@taxNumber"/></p2:taxNumber>
            </xsl:if>
            <!--Element p2:vatNumber is optional&#x2D;-->
            <xsl:if test="DDVPD/taxpayer/@vatNumber">
            <p2:vatNumber><xsl:value-of select="DDVPD/taxpayer/@vatNumber"/></p2:vatNumber>
            </xsl:if>
            <!--Element p2:taxpayerType is optional-->
            <p2:taxpayerType>SP</p2:taxpayerType>
            <!--Element p2:name is optional-->
            <p2:name><xsl:value-of select="DDVPD/taxpayer/@name"/></p2:name>
            <!--Element p2:address1 is optional-->
            <p2:address1><xsl:value-of select="DDVPD/taxpayer/@address1"/></p2:address1>
            <!--Element p2:address2 is optional-->
            <p2:address2><xsl:value-of select="DDVPD/taxpayer/@address2"/></p2:address2>
            <!--Element p2:city is optional-->
            <p2:city><xsl:value-of select="DDVPD/taxpayer/@city"/></p2:city>
            <!--Element p2:postNumber is optional-->
            <p2:postNumber><xsl:value-of select="DDVPD/taxpayer/@postNumber"/></p2:postNumber>
            <!--Element p2:postName is optional-->
            <p2:postName><xsl:value-of select="DDVPD/taxpayer/@postName"/></p2:postName>
            <!--Element p2:municipalityName is optional-->
            <p2:municipalityName><xsl:value-of select="DDVPD/taxpayer/@municipalityName"/></p2:municipalityName>
            <!--Element p2:birthDate is optional-->
            <xsl:if test="DDVPD/taxpayer/@birthDate">
            <p2:birthDate><xsl:value-of select="DDVPD/taxpayer/@birthDate"/></p2:birthDate>
            </xsl:if>
            <!--Element p2:maticnaStevilka is optional-->
            <p2:maticnaStevilka><xsl:value-of select="DDVPD/taxpayer/@maticnaStevilka"/></p2:maticnaStevilka>
            <!--Element p2:invalidskoPodjetje is optional-->
            <p2:invalidskoPodjetje><xsl:value-of select="DDVPD/taxpayer/@invalidskoPodjetje"/></p2:invalidskoPodjetje>
            <!--Element p2:resident is optional-->
            <p2:resident><xsl:value-of select="DDVPD/taxpayer/@resident"/></p2:resident>
            <!--Element p2:activityCode is optional-->
            <p2:activityCode><xsl:value-of select="DDVPD/taxpayer/@activityCode"/></p2:activityCode>
            <!--Element p2:activityName is optional-->
            <p2:activityName><xsl:value-of select="DDVPD/taxpayer/@activityName"/></p2:activityName>
            <!--Element p2:countryID is optional-->
            <p2:countryID><xsl:value-of select="DDVPD/taxpayer/@countryID"/></p2:countryID>
            <!--Element p2:countryName is optional-->
            <p2:countryName><xsl:value-of select="DDVPD/taxpayer/@countryName"/></p2:countryName>
        </p2:taxpayer>
        <!--Element p2:responseTo is optional-->
        <p2:responseTo><xsl:value-of select="DDVPD/@responseTo"/></p2:responseTo>
        <!--Element p2:Workflow is optional-->
        <p2:Workflow>
            <!--Element p2:DocumentWorkflowID is optional-->
            <p2:DocumentWorkflowID>s</p2:DocumentWorkflowID>
            <!--Element p2:DocumentWorkflowName is optional-->
            <p2:DocumentWorkflowName><xsl:value-of select="DDVPD/Workflow/@DocumentWorkflowName"/></p2:DocumentWorkflowName>
        </p2:Workflow>
        <!--Element p2:CustodianInfo is optional-->
        <xsl:if test="DDVPD/CustodianInfo">
        <p2:CustodianInfo>
            <!--Element p2:name is optional-->
            <p2:name><xsl:value-of select="DDVPD/CustodianInfo/@name"/></p2:name>
            <!--Element p2:address1 is optional-->
            <p2:address1><xsl:value-of select="DDVPD/CustodianInfo/@address1"/></p2:address1>
            <!--Element p2:address2 is optional-->
            <p2:address2><xsl:value-of select="DDVPD/CustodianInfo/@address2"/></p2:address2>
            <!--Element p2:city is optional-->
            <p2:city><xsl:value-of select="DDVPD/CustodianInfo/@city"/></p2:city>
            <!--Element p2:CustodianNotes is optional-->
            <p2:CustodianNotes><xsl:value-of select="DDVPD/CustodianInfo/@CustodianNotes"/></p2:CustodianNotes>
            <!--Element p2:CustodianSubmitDate is optional-->
            <p2:CustodianSubmitDate><xsl:value-of select="DDVPD/CustodianInfo/@CustodianSubmitDate"/></p2:CustodianSubmitDate>
        </p2:CustodianInfo>
        </xsl:if>
        <!--Element p2:domain is optional-->
        <p2:domain><xsl:value-of select="DDVPD/@domain"/></p2:domain>
    </p2:Header>
    <p2:Signatures>
        <xsl:apply-templates select="DDVPD/Signatures"/>
    </p2:Signatures>
    <p1:body>
        <p2:bodyContent>string by default</p2:bodyContent>
        <p1:DDV_PD>
            <!--Element p1:CorrectionForDocument is optional-->
	    <xsl:if test="DDVPD/@correctionForDocument">
            <p1:CorrectionForDocument><xsl:value-of select="DDVPD/@correctionForDocument"/></p1:CorrectionForDocument>
            </xsl:if>
            <!--Element p1:Year is optional-->
	    <xsl:if test="DDVPD/@periodYear">
            <p1:Year><xsl:value-of select="DDVPD/@periodYear"/></p1:Year>
            </xsl:if>
            <!--Element p1:Sell is optional, maxOccurs=unbounded-->
            <xsl:apply-templates select="DDVPD/Sell"/>
            <!--Element p1:Sum is optional-->
	    <xsl:if test="DDVPD/@TotalAmount">
            <p1:Sum><xsl:value-of select="DDVPD/@TotalAmount"/></p1:Sum>
            </xsl:if>
        </p1:DDV_PD>
    </p1:body>
</p1:Envelope>
    </xsl:template>

    <xsl:template match="Sell">
            <p1:Sell>
                <!--Element p1:EuCountry is optional-->
                <p1:EuCountry><xsl:value-of select="@countryCode"/></p1:EuCountry>
                <!--Element p1:DdvId is optional-->
                <p1:DdvId><xsl:value-of select="@customerVATRegNo"/></p1:DdvId>
                <!--Element p1:IdentificationStart is optional-->
        	    <xsl:if test="@IdentificationStart">
                <p1:IdentificationStart><xsl:value-of select="@IdentificationStart"/></p1:IdentificationStart>
                </xsl:if>
                <!--Element p1:IdentificationEnd is optional-->
        	    <xsl:if test="@IdentificationEnd">
                <p1:IdentificationEnd><xsl:value-of select="@IdentificationEnd"/></p1:IdentificationEnd>
                </xsl:if>
                <!--Element p1:YearlyIncome is optional-->
                <p1:YearlyIncome><xsl:value-of select="@totalValueOfSupplies"/></p1:YearlyIncome>
            </p1:Sell>
    </xsl:template>
</xsl:stylesheet>
