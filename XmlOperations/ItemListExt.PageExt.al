// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace dampav.XmlOperations;
using Microsoft.Inventory.Item;
using Microsoft.Inventory.Reports;
using System.Xml;
using System.Utilities;

pageextension 50120 ItemListExt extends "Item List"
{

    actions
    {
        addbefore("Price List_Promoted")
        {
            actionref(ExportHtml_Promoted; ExportHtml)
            { }
            actionref(ExportXml_Promoted; ExportXml)
            { }
        }
        addbefore("Price List")
        {
            action(ExportHtml)
            {
                ApplicationArea = All;
                Image = ExportFile;
                trigger OnAction()
                begin
                    ExportFile(false);
                end;

            }
            action(ExportXml)
            {
                ApplicationArea = All;
                Image = ExportFile;
                trigger OnAction()
                begin
                    ExportFile(true);
                end;

            }
        }
    }

    local procedure PassThroughXsl(): Text
    begin
        //pass-through transformation
        exit(
        '<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">' +
        '    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>' +
        '    <xsl:template match="/">' +
        '        <xsl:copy-of select="*"/>' +
        '    </xsl:template>' +
        '</xsl:stylesheet>'
        );
    end;


    local procedure DemoXmlXsl(): Text
    begin
        //html transformation
        exit(
        '<?xml version="1.0" encoding="UTF-8"?>' +
        '<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">' +
        '    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>' +
        '    <xsl:template match="/">' +
        '    <pricelist>' +
        '		<xsl:apply-templates select="ReportDataSet/DataItems/DataItem/DataItems/DataItem" />' +
        '    </pricelist>' +
        '	</xsl:template>' +
        '' +
        '    <xsl:template match="DataItem[@name=''SalesPrices'']">' +
        '        <salesprice>' +
        '    		<ItemNo><xsl:value-of select="Columns/Column[@name=''ItemNo_SalesPrices'']"/></ItemNo>' +
        '			<ItemDesc><xsl:value-of select="Columns/Column[@name=''ItemDesc_SalesPrices'']"/></ItemDesc>' +
        '			<MinimumQty><xsl:value-of select="Columns/Column[@name=''MinimumQty_SalesPrices'']"/></MinimumQty>' +
        '    		<UOM><xsl:value-of select="Columns/Column[@name=''UOM_SalesPrices'']"/></UOM>' +
        '			<UnitPrice><xsl:value-of select="Columns/Column[@name=''SalesPriceUnitPrice'']"/></UnitPrice>' +
        '			<VAT><xsl:value-of select="Columns/Column[@name=''VATText_SalesPrices'']"/></VAT>' +
        '        </salesprice>' +
        '	</xsl:template>' +
        '</xsl:stylesheet>'
        );
    end;

    local procedure DemoHtmlXsl(): Text
    begin
        //html transformation
        exit(
        '<?xml version="1.0" encoding="UTF-8"?>' +
        '<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">' +
        '    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>' +
        '    <xsl:template match="/">' +
        '		<html>' +
        '			<head>' +
        '				<title>Price List Report</title>' +
        '				<style>' +
        '        table, th, td {' +
        '          border: 1px solid black;' +
        '          border-collapse: collapse;' +
        '        }' +
        '        th, td {' +
        '          padding: 8px;' +
        '          text-align: left;' +
        '        }' +
        '      </style>' +
        '			</head>' +
        '			<body>' +
        '				<h1><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''UnitPriceFieldCaption'']"/></h1>' +
        '    			<h1><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''ReqDateFormatted'']"/></h1>' +
        '				<table>' +
        '					<tr>' +
        '						<th>Company Address</th>' +
        '						<th><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyInfoPhoneNoCaption'']"/></th>' +
        '    					<th><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyInfoFaxNoCaption'']"/></th>' +
        '    					<th><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyInfoBankNameCaption'']"/></th>' +
        '    					<th><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyInfoBankAccNoCaption'']"/></th>' +
        '					</tr>' +
        '					<tr>' +
        '						<td>' +
        '							<xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyAddr1'']"/><br/>' +
        '							<xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyAddr2'']"/><br/>' +
        '							<xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyAddr3'']"/><br/>' +
        '							<xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyAddr4'']"/>' +
        '						</td>' +
        '						<td><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyInfoPhoneNo'']"/></td>' +
        '						<td><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyInfoFaxNo'']"/></td>' +
        '						<td><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyInfoBankName'']"/></td>' +
        '						<td><xsl:value-of select="ReportDataSet/DataItems/DataItem[1]/Columns/Column[@name=''CompanyInfoBankAccNo'']"/></td>' +
        '					</tr>' +
        '				</table>' +
        '				<table>' +
        '					<xsl:apply-templates select="ReportDataSet/DataItems/DataItem" />' +
        '				</table>' +
        '			</body>' +
        '		</html>' +
        '	</xsl:template>' +
        '	<!-- Template to a row header -->' +
        '	<xsl:template match="DataItem[@name=''Item'']">' +
        '		<tr>' +
        '			<th><xsl:value-of select="Columns/Column[@name=''ItemNoCaption'']"/></th>' +
        '    		<th><xsl:value-of select="Columns/Column[@name=''ItemDescCaption'']"/></th>' +
        '    		<th><xsl:value-of select="Columns/Column[@name=''UnitOfMeasureCaption'']"/></th>' +
        '    		<th><xsl:value-of select="Columns/Column[@name=''UnitPriceFieldCaption'']"/></th>' +
        '    		<th><xsl:value-of select="Columns/Column[@name=''VATTextCaption'']"/></th>' +
        '		</tr>' +
        '		<xsl:apply-templates select="DataItems/DataItem"/>' +
        '	</xsl:template>' +
        '	<!-- Template to transform each DataItem into a table row -->' +
        '	<xsl:template match="DataItem[@name=''SalesPrices'']">' +
        '		<tr>' +
        '			<td><xsl:value-of select="Columns/Column[@name=''ItemNo_SalesPrices'']"/></td>' +
        '			<td><xsl:value-of select="Columns/Column[@name=''ItemDesc_SalesPrices'']"/></td>' +
        '			<td><xsl:value-of select="Columns/Column[@name=''UOM_SalesPrices'']"/></td>' +
        '			<td><xsl:value-of select="Columns/Column[@name=''SalesPriceUnitPrice'']"/></td>' +
        '			<td><xsl:value-of select="Columns/Column[@name=''VATText_SalesPrices'']"/></td>' +
        '		</tr>' +
        '	</xsl:template>' +
        '</xsl:stylesheet>'
        );
    end;

    local procedure PrintXmlDoc(var XmlOutput: XmlDocument)
    var
        PriceList: Report "Price List"; //report is obsolete: good enough for demo purpose
        ReportParameters: Text;
        OutStream: OutStream;
        InStream: InStream;
        ReportFormat: ReportFormat;
        TempBlob: Codeunit "Temp Blob";
    begin
        ReportParameters := PriceList.RunRequestPage();
        Clear(PriceList);
        TempBlob.CreateOutStream(OutStream);
        PriceList.SaveAs(ReportParameters, ReportFormat::Xml, OutStream);
        TempBlob.CreateInStream(InStream);
        XmlDocument.ReadFrom(InStream, XmlOutput);
    end;

    local procedure LoadXmlDoc(var XmlDocWrapper: Codeunit DotNet_XmlDocument; var XmlInput: XmlDocument)
    var
        OutStream: OutStream;
        InStream: InStream;
        TempBlob: Codeunit "Temp Blob";
    begin
        TempBlob.CreateOutStream(OutStream);
        XmlInput.WriteTo(OutStream);
        TempBlob.CreateInStream(InStream);
        XmlDocWrapper.InitXmlDocument();
        XmlDocWrapper.Load(InStream);
    end;

    local procedure TransformXmlDoc(var XmlInput: Codeunit DotNet_XmlDocument; var XslScript: Codeunit DotNet_XmlDocument; var XmlOutput: XmlDocument)
    var
        TempBlob: Codeunit "Temp Blob";
        InStream: InStream;
    begin
        TransformBlob(XmlInput, XslScript, TempBlob);
        TempBlob.CreateInStream(InStream);
        XmlDocument.ReadFrom(InStream, XmlOutput);
    end;

    local procedure TransformBlob(var XmlInput: Codeunit DotNet_XmlDocument; var XslScript: Codeunit DotNet_XmlDocument; var TempBlob: Codeunit "Temp Blob")
    var
        OutStream: OutStream;
        XslTransform: Codeunit DotNet_XslCompiledTransform;
        XslArguments: Codeunit DotNet_XsltArgumentList;
    begin
        TempBlob.CreateOutStream(OutStream);
        XslTransform.XslCompiledTransform();
        XslTransform.Load(XslScript);
        XslTransform.Transform(XmlInput, XslArguments, OutStream);
    end;

    local procedure DownloadXmlDoc(var XmlDoc: XmlDocument)
    var
        OutStream: OutStream;
        InStream: InStream;
        TempBlob: Codeunit "Temp Blob";
        Filename: Text;
        FilterTxt: Label '*.xml', Locked = true;
        ExportTxt: Label 'Export document.';
    begin
        TempBlob.CreateOutStream(OutStream);
        XmlDoc.WriteTo(OutStream);
        TempBlob.CreateInStream(InStream);
        Filename := 'pricelist.xml';
        OnBeforeDownloadXmlDoc(Filename);
        DownloadFromStream(InStream, ExportTxt, '', FilterTxt, Filename);
    end;

    local procedure DownloadHtml(var TempBlob: Codeunit "Temp Blob")
    var
        InStream: InStream;
        Filename: Text;
        FilterTxt: Label '*.xml', Locked = true;
        ExportTxt: Label 'Export document.';
    begin
        TempBlob.CreateInStream(InStream);
        Filename := 'pricelist.html';
        OnBeforeDownloadHtml(Filename);
        DownloadFromStream(InStream, ExportTxt, '', FilterTxt, Filename);
    end;

    local procedure ExportFile(OutputIsXml: Boolean)
    var
        XmlSchema: Codeunit DotNet_XmlDocument;
        XmlValidation: Codeunit "Xml Validation";
        XmlInput: Codeunit DotNet_XmlDocument;
        XslScript: Codeunit DotNet_XmlDocument;
        TempBlob: Codeunit "Temp Blob";
        XsdValidationFailedLbl: Label 'Schema validation failed.';
        XmlDoc: XmlDocument;
        Instream: InStream;
    begin
        PrintXmlDoc(XmlDoc);
        LoadXmlDoc(XmlInput, XmlDoc);


        if OutputIsXml then begin
            XmlDocument.ReadFrom(DemoXmlXsl(), XmlDoc);
            LoadXmlDoc(XslScript, XmlDoc);
            TransformXmlDoc(XmlInput, XslScript, XmlDoc);

            XmlValidation.TrySetValidatedDocument(XmlDoc);
            if not XmlValidation.TryValidateAgainstSchema() then
                Message(XsdValidationFailedLbl);

            DownloadXmlDoc(XmlDoc);
        end else begin
            XmlDocument.ReadFrom(DemoHtmlXsl(), XmlDoc);
            LoadXmlDoc(XslScript, XmlDoc);
            TransformBlob(XmlInput, XslScript, TempBlob);
            DownloadHtml(TempBlob);
        end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeDownloadXmlDoc(Filename: Text)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeDownloadHtml(Filename: Text)
    begin
    end;
}