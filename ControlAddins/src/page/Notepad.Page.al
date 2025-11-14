page 50130 "Notepad"
{
    ApplicationArea = All;
    Caption = 'Notepad';
    PageType = Card;
    UsageCategory = None;
    Editable = false;


    layout
    {
        area(Content)
        {
            usercontrol(Notepad; "Notepad")
            {
                ApplicationArea = all;


                trigger OnReady()
                begin
                    CurrPage.Notepad.Init(jsonLabels);
                end;

                trigger OnAfterInit()
                begin
                    if notepadText <> '' then
                        CurrPage.Notepad.SetContent(notepadText);
                end;

                trigger OnSaveRequested(data: Text)
                var
                    TempBlob: Codeunit "Temp Blob";
                    OutStream: OutStream;
                    InStream: InStream;
                    isHandled: Boolean;
                    savedFileName: Text;
                    ExportTxt: label 'Export to Text';
                begin
                    notepadText := data;

                    IsHandled := false;
                    OnBeforeSaveFile(data, IsHandled);
                    if IsHandled then
                        exit;

                    TempBlob.CreateOutStream(OutStream, TextEncoding::UTF8);
                    TempBlob.CreateInStream(InStream, TextEncoding::UTF8);

                    OutStream.Write(data);
                    savedFileName := fileName + '.txt';
                    DownloadFromStream(InStream, ExportTxt, '', '*.txt', savedFileName);
                end;

                trigger OnChange(data: Text)
                begin
                    notepadText := data;
                end;

                trigger OnFocusOut(data: Text)
                begin
                    notepadText := data;
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
                ToolTip = 'Open a file in the Notepad.';
                ApplicationArea = All;
                Image = Import;
                AllowedFileExtensions = '.txt';
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
                    CurrPage.Notepad.SetContent(data);
                end;
            }
            action(Save)
            {
                Caption = 'Save';
                ToolTip = 'Save the content of the Notepad to a file.';
                ApplicationArea = All;
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.Notepad.RequestSave();
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
        Helper: Codeunit "Notepad Helper";
        notepadText: Text;
        fileName: Text;
        jsonLabels: JsonObject;

    trigger OnInit()
    begin
        Helper.SetLabels(jsonLabels);
        Helper.SetCollapsible(jsonLabels, false);
    end;

    procedure SetContent(newNotepadText: Text; newFileName: Text)
    begin
        notepadText := newNotepadText;
        fileName := newFileName;
    end;

    procedure GetContent(): Text
    begin
        exit(notepadText);
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
