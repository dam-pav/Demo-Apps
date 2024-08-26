<?xml version='1.0' ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:p1="http://edavki.durs.si/Documents/Schemas/VIES_KP_6.xsd" xmlns:p2="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
<p1:Envelope xmlns:p1="http://edavki.durs.si/Documents/Schemas/VIES_KP_6.xsd" xmlns:p2="http://edavki.durs.si/Documents/Schemas/EDP-Common-1.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://edavki.durs.si/Documents/Schemas/VIES_KP_6.xsd http://edavki.durs.si/Documents/Schemas/VIES_KP_6.xsd">
    <p2:Header>
        <p2:taxpayer>
            <!--Element p2:taxNumber is optional-->
            <xsl:if test="VIESKP/taxpayer/@taxNumber">
            <p2:taxNumber><xsl:value-of select="VIESKP/taxpayer/@taxNumber"/></p2:taxNumber>
            </xsl:if>
            <!--Element p2:vatNumber is optional&#x2D;-->
            <xsl:if test="VIESKP/taxpayer/@vatNumber">
            <p2:vatNumber><xsl:value-of select="VIESKP/taxpayer/@vatNumber"/></p2:vatNumber>
            </xsl:if>
            <!--Element p2:taxpayerType is optional-->
            <p2:taxpayerType>SP</p2:taxpayerType>
            <!--Element p2:name is optional-->
            <p2:name><xsl:value-of select="VIESKP/taxpayer/@name"/></p2:name>
            <!--Element p2:address1 is optional-->
            <p2:address1><xsl:value-of select="VIESKP/taxpayer/@address1"/></p2:address1>
            <!--Element p2:address2 is optional-->
            <p2:address2><xsl:value-of select="VIESKP/taxpayer/@address2"/></p2:address2>
            <!--Element p2:city is optional-->
            <p2:city><xsl:value-of select="VIESKP/taxpayer/@city"/></p2:city>
            <!--Element p2:postNumber is optional-->
            <p2:postNumber><xsl:value-of select="VIESKP/taxpayer/@postNumber"/></p2:postNumber>
            <!--Element p2:postName is optional-->
            <p2:postName><xsl:value-of select="VIESKP/taxpayer/@postName"/></p2:postName>
            <!--Element p2:municipalityName is optional-->
            <p2:municipalityName><xsl:value-of select="VIESKP/taxpayer/@municipalityName"/></p2:municipalityName>
            <!--Element p2:birthDate is optional-->
            <xsl:if test="VIESKP/taxpayer/@birthDate">
            <p2:birthDate><xsl:value-of select="VIESKP/taxpayer/@birthDate"/></p2:birthDate>
            </xsl:if>
            <!--Element p2:maticnaStevilka is optional-->
            <p2:maticnaStevilka><xsl:value-of select="VIESKP/taxpayer/@maticnaStevilka"/></p2:maticnaStevilka>
            <!--Element p2:invalidskoPodjetje is optional-->
            <p2:invalidskoPodjetje><xsl:value-of select="VIESKP/taxpayer/@invalidskoPodjetje"/></p2:invalidskoPodjetje>
            <!--Element p2:resident is optional-->
            <p2:resident><xsl:value-of select="VIESKP/taxpayer/@resident"/></p2:resident>
            <!--Element p2:activityCode is optional-->
            <p2:activityCode><xsl:value-of select="VIESKP/taxpayer/@activityCode"/></p2:activityCode>
            <!--Element p2:activityName is optional-->
            <p2:activityName><xsl:value-of select="VIESKP/taxpayer/@activityName"/></p2:activityName>
            <!--Element p2:countryID is optional-->
            <p2:countryID><xsl:value-of select="VIESKP/taxpayer/@countryID"/></p2:countryID>
            <!--Element p2:countryName is optional-->
            <p2:countryName><xsl:value-of select="VIESKP/taxpayer/@countryName"/></p2:countryName>
        </p2:taxpayer>
        <!--Element p2:responseTo is optional-->
        <p2:responseTo><xsl:value-of select="VIESKP/@responseTo"/></p2:responseTo>
        <!--Element p2:Workflow is optional-->
        <p2:Workflow>
            <!--Element p2:DocumentWorkflowID is optional-->
            <p2:DocumentWorkflowID>s</p2:DocumentWorkflowID>
            <!--Element p2:DocumentWorkflowName is optional-->
            <p2:DocumentWorkflowName><xsl:value-of select="VIESKP/Workflow/@DocumentWorkflowName"/></p2:DocumentWorkflowName>
        </p2:Workflow>
        <!--Element p2:CustodianInfo is optional-->
        <xsl:if test="VIESKP/CustodianInfo">
        <p2:CustodianInfo>
            <!--Element p2:name is optional-->
            <p2:name><xsl:value-of select="VIESKP/CustodianInfo/@name"/></p2:name>
            <!--Element p2:address1 is optional-->
            <p2:address1><xsl:value-of select="VIESKP/CustodianInfo/@address1"/></p2:address1>
            <!--Element p2:address2 is optional-->
            <p2:address2><xsl:value-of select="VIESKP/CustodianInfo/@address2"/></p2:address2>
            <!--Element p2:city is optional-->
            <p2:city><xsl:value-of select="VIESKP/CustodianInfo/@city"/></p2:city>
            <!--Element p2:CustodianNotes is optional-->
            <p2:CustodianNotes><xsl:value-of select="VIESKP/CustodianInfo/@CustodianNotes"/></p2:CustodianNotes>
            <!--Element p2:CustodianSubmitDate is optional-->
            <p2:CustodianSubmitDate><xsl:value-of select="VIESKP/CustodianInfo/@CustodianSubmitDate"/></p2:CustodianSubmitDate>
        </p2:CustodianInfo>
        </xsl:if>
        <!--Element p2:domain is optional-->
        <p2:domain><xsl:value-of select="VIESKP/@domain"/></p2:domain>
    </p2:Header>
    <p2:AttachmentList>
        <xsl:apply-templates select="VIESKP/Attachment"/>
    </p2:AttachmentList>
    <p2:Signatures>
    <xsl:apply-templates select="VIESKP/Signatures"/>
    </p2:Signatures>
    <p1:body>
        <p2:bodyContent>string by default</p2:bodyContent>
        <p1:VIES_KP>
            <p1:General>
                <p1:Year>
                    <xsl:value-of select="VIESKP/@periodYear"/>
                </p1:Year>
                <p1:Month>
                    <xsl:value-of select="VIESKP/@periodNo"/>
                </p1:Month>
                <p1:RPO13>
                    <xsl:value-of select="VIESKP/@RPO13"/>
                </p1:RPO13>
                <p1:A13>
                    <xsl:value-of select="VIESKP/@totalAmountItems"/>
                </p1:A13>
                <p1:A14>
                    <xsl:value-of select="VIESKP/@totalAmountCustoms"/>
                </p1:A14>
                <p1:A15>
                    <xsl:value-of select="VIESKP/@totalAmountEU3Party"/>
                </p1:A15>
                <p1:A16>
                    <xsl:value-of select="VIESKP/@totalAmountServices"/>
                </p1:A16>
                <p1:A17>
                    <xsl:value-of select="VIESKP/@totalAmountConsignation"/>
                </p1:A17>
                <p1:RPO17_ResponsiblePerson>
                    <xsl:value-of select="VIESKP/@personResponsible"/>
                </p1:RPO17_ResponsiblePerson>
                <p1:RPO17_TaxNumber>
                    <xsl:value-of select="VIESKP/@representVATId"/>
                </p1:RPO17_TaxNumber>
                <p1:RPO18>
                    <xsl:value-of select="VIESKP/@RPO18"/>
                </p1:RPO18>
                <p1:RPO19>
                    <xsl:value-of select="VIESKP/@RPO19"/>
                </p1:RPO19>
            </p1:General>
            <p1:A_Current>
                <xsl:apply-templates select="VIESKP/A_Current"/>
            </p1:A_Current>
            <p1:B_PastCorrections>
                <xsl:apply-templates select="VIESKP/B_PastCorrections"/>
            </p1:B_PastCorrections>
            <p1:C_TransferOfGoods>
                <xsl:apply-templates select="VIESKP/C_TransferOfGoods"/>
            </p1:C_TransferOfGoods>
            <p1:D_ReturnOfGoods>
                <xsl:apply-templates select="VIESKP/D_ReturnOfGoods"/>
            </p1:D_ReturnOfGoods>
            <p1:E_Customer>
                <xsl:apply-templates select="VIESKP/E_Customer"/>
            </p1:E_Customer>
            <p1:F_GoodsCorrections>
                <xsl:apply-templates select="VIESKP/F_GoodsCorrections"/>
            </p1:F_GoodsCorrections>
            <p1:G_CustomerCorrections>
                <xsl:apply-templates select="VIESKP/G_CustomerCorrections"/>
            </p1:G_CustomerCorrections>
        </p1:VIES_KP>
    </p1:body>
</p1:Envelope>
    </xsl:template>

    <xsl:template match="G_CustomerCorrections">
    </xsl:template>

    <xsl:template match="F_GoodsCorrections">
    </xsl:template>

    <xsl:template match="E_Customer">
    </xsl:template>

    <xsl:template match="D_ReturnOfGoods">
    </xsl:template>

    <xsl:template match="C_TransferOfGoods">
    </xsl:template>

    <xsl:template match="B_PastCorrections">
    </xsl:template>

    <xsl:template match="A_Current">
        <p1:A>
            <p1:A1>
                <xsl:value-of select="@countryCode"/>
            </p1:A1>
            <p1:A2>
                <xsl:value-of select="@customerVATRegNo"/>
            </p1:A2>
            <p1:A3>
                <xsl:value-of select="@amountbyItems"/>
            </p1:A3>
            <p1:A4>
                <xsl:value-of select="@amountbyCustomsProcedure"/>
            </p1:A4>
            <p1:A5>
                <xsl:value-of select="@amountbyEU3Party"/>
            </p1:A5>
            <p1:A6>
                <xsl:value-of select="@amountbyServices"/>
            </p1:A6>
            <p1:A7>
                <xsl:value-of select="@amountbyConsignation"/>
            </p1:A7>
        </p1:A>
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
