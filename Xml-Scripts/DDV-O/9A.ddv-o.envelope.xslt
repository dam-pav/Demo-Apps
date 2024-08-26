<?xml version='1.0' ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:p1="http://edavki.durs.si/Documents/Schemas/DDV_O_11.xsd" xmlns:p2="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
<p1:Envelope xmlns:p1="http://edavki.durs.si/Documents/Schemas/DDV_O_11.xsd" xmlns:p2="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <p2:Header>
        <p2:taxpayer>
            <!--Element p2:taxNumber is optional-->
            <xsl:if test="DDVO/taxpayer/@taxNumber">
            <p2:taxNumber><xsl:value-of select="DDVO/taxpayer/@taxNumber"/></p2:taxNumber>
            </xsl:if>
            <!--Element p2:vatNumber is optional&#x2D;-->
            <xsl:if test="DDVO/taxpayer/@vatNumber">
            <p2:vatNumber><xsl:value-of select="DDVO/taxpayer/@vatNumber"/></p2:vatNumber>
            </xsl:if>
            <!--Element p2:taxpayerType is optional-->
            <p2:taxpayerType>SP</p2:taxpayerType>
            <!--Element p2:name is optional-->
            <p2:name><xsl:value-of select="DDVO/taxpayer/@name"/></p2:name>
            <!--Element p2:address1 is optional-->
            <p2:address1><xsl:value-of select="DDVO/taxpayer/@address1"/></p2:address1>
            <!--Element p2:address2 is optional-->
            <p2:address2><xsl:value-of select="DDVO/taxpayer/@address2"/></p2:address2>
            <!--Element p2:city is optional-->
            <p2:city><xsl:value-of select="DDVO/taxpayer/@city"/></p2:city>
            <!--Element p2:postNumber is optional-->
            <p2:postNumber><xsl:value-of select="DDVO/taxpayer/@postNumber"/></p2:postNumber>
            <!--Element p2:postName is optional-->
            <p2:postName><xsl:value-of select="DDVO/taxpayer/@postName"/></p2:postName>
            <!--Element p2:municipalityName is optional-->
            <p2:municipalityName><xsl:value-of select="DDVO/taxpayer/@municipalityName"/></p2:municipalityName>
            <!--Element p2:birthDate is optional-->
            <xsl:if test="DDVO/taxpayer/@birthDate">
            <p2:birthDate><xsl:value-of select="DDVO/taxpayer/@birthDate"/></p2:birthDate>
            </xsl:if>
            <!--Element p2:maticnaStevilka is optional-->
            <p2:maticnaStevilka><xsl:value-of select="DDVO/taxpayer/@maticnaStevilka"/></p2:maticnaStevilka>
            <!--Element p2:invalidskoPodjetje is optional-->
            <p2:invalidskoPodjetje><xsl:value-of select="DDVO/taxpayer/@invalidskoPodjetje"/></p2:invalidskoPodjetje>
            <!--Element p2:resident is optional-->
            <p2:resident><xsl:value-of select="DDVO/taxpayer/@resident"/></p2:resident>
            <!--Element p2:activityCode is optional-->
            <p2:activityCode><xsl:value-of select="DDVO/taxpayer/@activityCode"/></p2:activityCode>
            <!--Element p2:activityName is optional-->
            <p2:activityName><xsl:value-of select="DDVO/taxpayer/@activityName"/></p2:activityName>
            <!--Element p2:countryID is optional-->
            <p2:countryID><xsl:value-of select="DDVO/taxpayer/@countryID"/></p2:countryID>
            <!--Element p2:countryName is optional-->
            <p2:countryName><xsl:value-of select="DDVO/taxpayer/@countryName"/></p2:countryName>
        </p2:taxpayer>
        <!--Element p2:responseTo is optional-->
        <p2:responseTo><xsl:value-of select="DDVO/@responseTo"/></p2:responseTo>
        <!--Element p2:Workflow is optional-->
        <p2:Workflow>
            <!--Element p2:DocumentWorkflowID is optional-->
            <p2:DocumentWorkflowID>s</p2:DocumentWorkflowID>
            <!--Element p2:DocumentWorkflowName is optional-->
            <p2:DocumentWorkflowName><xsl:value-of select="DDVO/Workflow/@DocumentWorkflowName"/></p2:DocumentWorkflowName>
        </p2:Workflow>
        <!--Element p2:CustodianInfo is optional-->
        <xsl:if test="DDVO/CustodianInfo">
        <p2:CustodianInfo>
            <!--Element p2:name is optional-->
            <p2:name><xsl:value-of select="DDVO/CustodianInfo/@name"/></p2:name>
            <!--Element p2:address1 is optional-->
            <p2:address1><xsl:value-of select="DDVO/CustodianInfo/@address1"/></p2:address1>
            <!--Element p2:address2 is optional-->
            <p2:address2><xsl:value-of select="DDVO/CustodianInfo/@address2"/></p2:address2>
            <!--Element p2:city is optional-->
            <p2:city><xsl:value-of select="DDVO/CustodianInfo/@city"/></p2:city>
            <!--Element p2:CustodianNotes is optional-->
            <p2:CustodianNotes><xsl:value-of select="DDVO/CustodianInfo/@CustodianNotes"/></p2:CustodianNotes>
            <!--Element p2:CustodianSubmitDate is optional-->
            <p2:CustodianSubmitDate><xsl:value-of select="DDVO/CustodianInfo/@CustodianSubmitDate"/></p2:CustodianSubmitDate>
        </p2:CustodianInfo>
        </xsl:if>
        <!--Element p2:domain is optional-->
        <p2:domain><xsl:value-of select="DDVO/@domain"/></p2:domain>
    </p2:Header>
    <p2:AttachmentList>
        <xsl:apply-templates select="DDVO/Attachment"/>
    </p2:AttachmentList>
    <p2:Signatures>
        <xsl:apply-templates select="DDVO/Signatures"/>
    </p2:Signatures>
    <p1:body>
        <p2:bodyContent>string by default</p2:bodyContent>
        <p1:DDV-O xmlns:p1="http://edavki.durs.si/Documents/Schemas/DDV_O_11.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://edavki.durs.si/Documents/Schemas/DDV_O_11.xsd http://edavki.durs.si/Documents/Schemas/DDV_O_11.xsd">
            <!--Element p1:n_ddv is optional-->
            <p1:n_ddv><xsl:value-of select="DDVO/@n_ddv"/></p1:n_ddv>
            <!--Element p1:v_ddv is optional-->
            <p1:v_ddv><xsl:value-of select="DDVO/@v_ddv"/></p1:v_ddv>
            <!--Element p1:z_ddv is optional-->
            <p1:z_ddv><xsl:value-of select="DDVO/@z_ddv"/></p1:z_ddv>
            <p1:taxPeriodStart><xsl:value-of select="DDVO/@taxPeriodStart"/></p1:taxPeriodStart>
            <p1:taxPeriodEnd><xsl:value-of select="DDVO/@taxPeriodEnd"/></p1:taxPeriodEnd>
            <!--Element p1:selfReport is optional-->
            <p1:selfReport><xsl:value-of select="DDVO/@selfReport"/></p1:selfReport>
            <!--Element p1:depositAfterDeadline is optional-->
            <p1:depositAfterDeadline><xsl:value-of select="DDVO/@depositAfterDeadline"/></p1:depositAfterDeadline>
            <!--Element p1:selfReportDoNotUseInstitute is optional-->
            <p1:selfReportDoNotUseInstitute><xsl:value-of select="DDVO/@selfReportDoNotUseInstitute"/></p1:selfReportDoNotUseInstitute>
            <!--Element p1:representedForeigner is optional-->
            <xsl:if test="DDVO/representedForeigner">
            <p1:representedForeigner>
                <p1:idNumber><xsl:value-of select="DDVO/representedForeigner/@idNumber"/></p1:idNumber>
                <!--Element p1:name is optional-->
                <p1:name><xsl:value-of select="DDVO/representedForeigner/@name"/></p1:name>
                <!--Element p1:address is optional-->
                <p1:address><xsl:value-of select="DDVO/representedForeigner/@address"/></p1:address>
            </p1:representedForeigner>
            </xsl:if>
            <!--Element p1:f02 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='02']">
            <p1:f02><xsl:value-of select="DDVO/VatStmtLine[@boxNo='02']/@amount"/></p1:f02>
            </xsl:if>
            <!--Element p1:f03 is optional-->
            <p1:f03><xsl:value-of select="DDVO/@calculateDeductible"/></p1:f03>
            <!--Element p1:f04 is optional-->
            <p1:f04><xsl:value-of select="DDVO/@requestRefund"/></p1:f04>
            <!--Element p1:f11 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='11']">
            </xsl:if>
            <p1:f11><xsl:value-of select="DDVO/VatStmtLine[@boxNo='11']/@amount"/></p1:f11>
            <!--Element p1:f11a is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='11A']">
            <p1:f11a><xsl:value-of select="DDVO/VatStmtLine[@boxNo='11A']/@amount"/></p1:f11a>
            </xsl:if>
            <!--Element p1:f12 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='12']">
            <p1:f12><xsl:value-of select="DDVO/VatStmtLine[@boxNo='12']/@amount"/></p1:f12>
            </xsl:if>
            <!--Element p1:f13 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='13']">
            <p1:f13><xsl:value-of select="DDVO/VatStmtLine[@boxNo='13']/@amount"/></p1:f13>
            </xsl:if>
            <!--Element p1:f14 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='14']">
            <p1:f14><xsl:value-of select="DDVO/VatStmtLine[@boxNo='14']/@amount"/></p1:f14>
            </xsl:if>
            <!--Element p1:f15 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='15']">
            <p1:f15><xsl:value-of select="DDVO/VatStmtLine[@boxNo='15']/@amount"/></p1:f15>
            </xsl:if>
            <!--Element p1:f21 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='21']">
            <p1:f21><xsl:value-of select="DDVO/VatStmtLine[@boxNo='21']/@amount"/></p1:f21>
            </xsl:if>
            <!--Element p1:f22 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='22']">
            <p1:f22><xsl:value-of select="DDVO/VatStmtLine[@boxNo='22']/@amount"/></p1:f22>
            </xsl:if>
            <!--Element p1:f22a is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='22A']">
            <p1:f22a><xsl:value-of select="DDVO/VatStmtLine[@boxNo='22A']/@amount"/></p1:f22a>
            </xsl:if>
            <!--Element p1:f23 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='23']">
            <p1:f23><xsl:value-of select="DDVO/VatStmtLine[@boxNo='23']/@amount"/></p1:f23>
            </xsl:if>
            <!--Element p1:f23a is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='23A']">
            <p1:f23a><xsl:value-of select="DDVO/VatStmtLine[@boxNo='23A']/@amount"/></p1:f23a>
            </xsl:if>
            <!--Element p1:f24 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='24']">
            <p1:f24><xsl:value-of select="DDVO/VatStmtLine[@boxNo='24']/@amount"/></p1:f24>
            </xsl:if>

            <!--Element p1:f24a is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='24A']">
            <p1:f24a><xsl:value-of select="DDVO/VatStmtLine[@boxNo='24A']/@amount"/></p1:f24a>
            </xsl:if>
            <!--Element p1:f24b is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='24B']">
            <p1:f24b><xsl:value-of select="DDVO/VatStmtLine[@boxNo='24B']/@amount"/></p1:f24b>
            </xsl:if>
            <!--Element p1:f24c is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='24C']">
            <p1:f24c><xsl:value-of select="DDVO/VatStmtLine[@boxNo='24C']/@amount"/></p1:f24c>
            </xsl:if>
            <!--Element p1:f25 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='25']">
            <p1:f25><xsl:value-of select="DDVO/VatStmtLine[@boxNo='25']/@amount"/></p1:f25>
            </xsl:if>
            <!--Element p1:f25a is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='25A']">
            <p1:f25a><xsl:value-of select="DDVO/VatStmtLine[@boxNo='25A']/@amount"/></p1:f25a>
            </xsl:if>
            <!--Element p1:f25b is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='25B']">
            <p1:f25b><xsl:value-of select="DDVO/VatStmtLine[@boxNo='25B']/@amount"/></p1:f25b>
            </xsl:if>
            <!--Element p1:f26 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='26']">
            <p1:f26><xsl:value-of select="DDVO/VatStmtLine[@boxNo='26']/@amount"/></p1:f26>
            </xsl:if>
            <!--Element p1:f31 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='31']">
            <p1:f31><xsl:value-of select="DDVO/VatStmtLine[@boxNo='31']/@amount"/></p1:f31>
            </xsl:if>
            <!--Element p1:f31a is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='31A']">
            <p1:f31a><xsl:value-of select="DDVO/VatStmtLine[@boxNo='31A']/@amount"/></p1:f31a>
            </xsl:if>
            <!--Element p1:f32 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='32']">
            <p1:f32><xsl:value-of select="DDVO/VatStmtLine[@boxNo='32']/@amount"/></p1:f32>
            </xsl:if>
            <!--Element p1:f32a is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='32A']">
            <p1:f32a><xsl:value-of select="DDVO/VatStmtLine[@boxNo='32A']/@amount"/></p1:f32a>
            </xsl:if>
            <!--Element p1:f33 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='33']">
            <p1:f33><xsl:value-of select="DDVO/VatStmtLine[@boxNo='33']/@amount"/></p1:f33>
            </xsl:if>
            <!--Element p1:f34 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='34']">
            <p1:f34><xsl:value-of select="DDVO/VatStmtLine[@boxNo='34']/@amount"/></p1:f34>
            </xsl:if>
            <!--Element p1:f35 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='35']">
            <p1:f35><xsl:value-of select="DDVO/VatStmtLine[@boxNo='35']/@amount"/></p1:f35>
            </xsl:if>
            <!--Element p1:f41 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='41']">
            <p1:f41><xsl:value-of select="DDVO/VatStmtLine[@boxNo='41']/@amount"/></p1:f41>
            </xsl:if>
            <!--Element p1:f42 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='42']">
            <p1:f42><xsl:value-of select="DDVO/VatStmtLine[@boxNo='42']/@amount"/></p1:f42>
            </xsl:if>
            <!--Element p1:f42a is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='42A']">
            <p1:f42a><xsl:value-of select="DDVO/VatStmtLine[@boxNo='42A']/@amount"/></p1:f42a>
            </xsl:if>
            <!--Element p1:f43 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='43']">
            <p1:f43><xsl:value-of select="DDVO/VatStmtLine[@boxNo='43']/@amount"/></p1:f43>
            </xsl:if>
            <!--Element p1:f51 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='51']">
            <p1:f51><xsl:value-of select="DDVO/VatStmtLine[@boxNo='51']/@amount"/></p1:f51>
            </xsl:if>
            <!--Element p1:f52 is optional-->
            <xsl:if test="DDVO/VatStmtLine[@boxNo='52']">
            <p1:f52><xsl:value-of select="DDVO/VatStmtLine[@boxNo='52']/@amount"/></p1:f52>
            </xsl:if>
            <!--Element p1:selfReportOrCorrection is optional, maxOccurs=unbounded-->
            <xsl:apply-templates select="DDVO/selfReportOrCorrection"/>
        </p1:DDV-O>
    </p1:body>
</p1:Envelope>
    </xsl:template>

    <xsl:template match="selfReportOrCorrection">
    <p1:selfReportOrCorrection>
        <!--Element p1:periodStart is optional-->
        <p1:periodStart><xsl:value-of select="@periodStart"/></p1:periodStart>
        <!--Element p1:periodEnd is optional-->
        <p1:periodEnd><xsl:value-of select="@periodEnd"/></p1:periodEnd>
        <!--Element p1:amount is optional-->
        <p1:amount><xsl:value-of select="@amount"/></p1:amount>
        <!--Element p1:interest is optional-->
        <p1:interest><xsl:value-of select="@interest"/></p1:interest>
    </p1:selfReportOrCorrection>
    </xsl:template>

    <xsl:template match="AttachmentList">
        <!--Element p2:ExternalAttachment is optional, maxOccurs=unbounded-->
        <p2:ExternalAttachment>
            <!--Element p2:attachmentId is optional-->
            <p2:attachmentId>-2147483648</p2:attachmentId>
            <!--Element p2:type is optional-->
            <p2:type>string</p2:type>
            <p2:filename>string</p2:filename>
            <p2:mimetype>string</p2:mimetype>
            <p2:hash type="string">string</p2:hash>
            <!--Element p2:description is optional-->
            <p2:description>string</p2:description>
        </p2:ExternalAttachment>
    </xsl:template>

    <xsl:template match="Signatures">
        <!--'Choice' block is optional-->
        <p2:PreparerSignature>
            <p2:Preparer>
                <!--Element p2:timestamp is optional-->
                <p2:timestamp>2002-10-10T12:00:00-05:00</p2:timestamp>
                <p2:name>string</p2:name>
            </p2:Preparer>
            <any_element/>
            <any_element/>
        </p2:PreparerSignature><!--
        <p2:DepositorSignature>
            <p2:Depositor>
                <!&#x2D;-Element p2:timestamp is optional&#x2D;->
                <p2:timestamp>2002-10-10T12:00:00-05:00</p2:timestamp>
                <p2:name>string</p2:name>
            </p2:Depositor>
            <any_element/>
            <any_element/>
        </p2:DepositorSignature>--><!--
        <p2:PreparerServerSignature>
            <p2:Preparer>
                <!&#x2D;-Element p2:timestamp is optional&#x2D;->
                <p2:timestamp>2002-10-10T12:00:00-05:00</p2:timestamp>
                <p2:name>string</p2:name>
                <p2:id>string</p2:id>
            </p2:Preparer>
            <any_element/>
            <any_element/>
        </p2:PreparerServerSignature>--><!--
        <p2:DepositorServerSignature>
            <p2:Depositor>
                <!&#x2D;-Element p2:timestamp is optional&#x2D;->
                <p2:timestamp>2002-10-10T12:00:00-05:00</p2:timestamp>
                <p2:name>string</p2:name>
                <p2:id>string</p2:id>
            </p2:Depositor>
            <p2:receipt>
                <p2:timestamp>2002-10-10T12:00:00-05:00</p2:timestamp>
                <p2:documentNumber>string</p2:documentNumber>
                <!&#x2D;-Element p2:name is optional&#x2D;->
                <p2:name>string</p2:name>
                <!&#x2D;-Element p2:metaText1 is optional&#x2D;->
                <p2:metaText1>string</p2:metaText1>
                <!&#x2D;-Element p2:metaDate1 is optional&#x2D;->
                <p2:metaDate1>2002-10-10T12:00:00-05:00</p2:metaDate1>
            </p2:receipt>
            <any_element/>
            <any_element/>
        </p2:DepositorServerSignature>--><!--
        <p2:ServerSignature>
            <p2:receipt>
                <p2:timestamp>2002-10-10T12:00:00-05:00</p2:timestamp>
                <p2:documentNumber>string</p2:documentNumber>
                <!&#x2D;-Element p2:name is optional&#x2D;->
                <p2:name>string</p2:name>
                <!&#x2D;-Element p2:metaText1 is optional&#x2D;->
                <p2:metaText1>string</p2:metaText1>
                <!&#x2D;-Element p2:metaDate1 is optional&#x2D;->
                <p2:metaDate1>2002-10-10T12:00:00-05:00</p2:metaDate1>
            </p2:receipt>
            <!&#x2D;-Any Element is optional&#x2D;->
            <any_element/>
            <any_element/>
        </p2:ServerSignature>--><!--
        <p2:NonEDP>
            <p2:receipt>
                <p2:timestamp>2002-10-10T12:00:00-05:00</p2:timestamp>
                <p2:documentNumber>string</p2:documentNumber>
                <!&#x2D;-Element p2:name is optional&#x2D;->
                <p2:name>string</p2:name>
                <!&#x2D;-Element p2:metaText1 is optional&#x2D;->
                <p2:metaText1>string</p2:metaText1>
                <!&#x2D;-Element p2:metaDate1 is optional&#x2D;->
                <p2:metaDate1>2002-10-10T12:00:00-05:00</p2:metaDate1>
            </p2:receipt>
        </p2:NonEDP>-->
    </xsl:template>
</xsl:stylesheet>
