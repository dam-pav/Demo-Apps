page 50131 "Markdown"
{
    ApplicationArea = All;
    Caption = 'Markdown';
    PageType = Card;
    UsageCategory = None;
    Editable = false;


    layout
    {
        area(Content)
        {
            usercontrol(Markdown; "Markdown")
            {
                ApplicationArea = all;


                trigger ControlReady()
                begin
                    CurrPage.Markdown.Init(jsonLabels);
                end;

                trigger OnAfterInit()
                begin
                    if MarkdownText <> '' then
                        CurrPage.Markdown.Load(MarkdownText);
                end;

                trigger SaveRequested(data: Text)
                var
                    TempBlob: Codeunit "Temp Blob";
                    OutStream: OutStream;
                    InStream: InStream;
                    isHandled: Boolean;
                    savedFileName: Text;
                    ExportTxt: label 'Export to Text';
                begin
                    MarkdownText := data;

                    IsHandled := false;
                    OnBeforeSaveFile(data, IsHandled);
                    if IsHandled then
                        exit;

                    TempBlob.CreateOutStream(OutStream, TextEncoding::UTF8);
                    TempBlob.CreateInStream(InStream, TextEncoding::UTF8);

                    OutStream.Write(data);
                    savedFileName := fileName + '.md';
                    DownloadFromStream(InStream, ExportTxt, '', '*.md', savedFileName);
                end;

                trigger ContentChanged(data: Text)
                begin
                    MarkdownText := data;
                end;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            fileuploadaction(Upload)
            {
                Caption = 'Open file';
                ToolTip = 'Open a markdown file.';
                ApplicationArea = All;
                Image = Import;
                AllowedFileExtensions = '.md', '.txt';
                trigger OnAction(files: List of [FileUpload])
                var
                    file: FileUpload;
                    InStream: InStream;
                    data: Text;
                begin
                    file := files.Get(1);
                    file.CreateInStream(InStream, TextEncoding::UTF8);
                    InStream.Read(data);
                    OnBeforeLoadFile(data);
                    CurrPage.Markdown.Load(data);
                end;
            }
            action(Save)
            {
                Caption = 'Save';
                ToolTip = 'Save the markdown content to a file.';
                ApplicationArea = All;
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.Markdown.RequestSave();
                end;
            }
        }
        area(Promoted)
        {
            actionref(UploadPromoted; Upload) { }
            actionref(SavePromoted; Save) { }
        }
    }

    var
        MarkdownText: Text;
        fileName: Text;
        jsonLabels: JsonObject;
        lblSearch: Label 'Search...';
        lblReplaceWith: Label 'Replace with...';
        lblIgnoreCase: Label 'Ignore case';
        lblFindNext: Label 'Find Next';
        lblReplaceNext: Label 'Replace Next';

    trigger OnInit()
    begin
        jsonLabels.Add('lblSearchFor', lblSearch);
        jsonLabels.Add('lblReplaceWith', lblReplaceWith);
        jsonLabels.Add('lblIgnoreCase', lblIgnoreCase);
        jsonLabels.Add('lblFindNext', lblFindNext);
        jsonLabels.Add('lblReplaceNext', lblReplaceNext);
    end;

    procedure SetContent(newMarkdownText: Text; newFileName: Text)
    begin
        MarkdownText := newMarkdownText;
        fileName := newFileName;
    end;

    procedure GetContent(): Text
    begin
        exit(MarkdownText);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeLoadFile(data: Text)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeSaveFile(data: Text; var IsHandled: Boolean)
    begin
    end;
}
