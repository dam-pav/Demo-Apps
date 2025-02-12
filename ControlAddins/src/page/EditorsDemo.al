page 50132 "Editors Demo"
{
    ApplicationArea = All;
    Caption = 'Editors Demo';
    PageType = Card;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(RichTextContent)
            {
                Caption = 'Rich Text Content';
                field(RichText; TextContent)
                {
                    ApplicationArea = All;
                    ShowCaption = false;
                    Editable = false;
                    Enabled = true;
                    ToolTip = 'Demo Rich Text Display';
                    MultiLine = true;
                    ExtendedDatatype = RichContent;
                }
            }
            group(PlainTextContent)
            {
                Caption = 'Plain Text Content';
                field(PlainText; TextContent)
                {
                    ApplicationArea = All;
                    ShowCaption = false;
                    Editable = false;
                    Enabled = true;
                    ToolTip = 'Demo Plain Text Display';
                    MultiLine = true;
                }
            }
            usercontrol(MarkdownView; "Markdown View")
            {
                ApplicationArea = All;


                trigger ControlReady()
                begin
                    CurrPage.MarkdownView.Init();
                end;

                trigger OnAfterInit()
                begin
                    CurrPage.MarkdownView.Load(TextContent);
                end;

            }
        }
    }
    actions
    {
        area(Creation)
        {
            action("Edit in Notepad")
            {
                ApplicationArea = All;
                Caption = 'Edit in Notepad';
                ToolTip = 'Edit in Notepad';
                Image = Edit;

                trigger OnAction()
                var
                    NotepadPage: Page "Notepad";
                begin
                    NotepadPage.SetContent(TextContent, 'Demo Plain Text');
                    NotepadPage.LookupMode := true;
                    if NotepadPage.RunModal() = Action::LookupOK then
                        TextContent := NotepadPage.GetContent();
                    ReloadPage();
                end;
            }
            action("Edit in Markdown")
            {
                ApplicationArea = All;
                Caption = 'Edit in Markdown';
                ToolTip = 'Edit in Markdown';
                Image = Edit;

                trigger OnAction()
                var
                    MarkdownPage: Page "Markdown";
                begin
                    MarkdownPage.SetContent(TextContent, 'Demo Markdown Text');
                    MarkdownPage.LookupMode := true;
                    if MarkdownPage.RunModal() = Action::LookupOK then
                        TextContent := MarkdownPage.GetContent();
                    ReloadPage();
                end;
            }
        }
        area(Promoted)
        {
            actionref("Edit in Notepad Promoted"; "Edit in Notepad") { }
            actionref("Edit in Markdown Promoted"; "Edit in Markdown") { }
        }
    }
    trigger OnInit()
    var
        TypeHelper: Codeunit "Type Helper";
    begin
        TextContent :=
            '# Demo' + TypeHelper.LFSeparator()
            + TypeHelper.LFSeparator()
            + 'This is demo text content.' + TypeHelper.LFSeparator()
            + TypeHelper.LFSeparator()
            + 'The plan is the following.' + TypeHelper.LFSeparator()
            + '- Steal knickers.' + TypeHelper.LFSeparator()
            + '- ...' + TypeHelper.LFSeparator()
            + '- Profit!';
    end;

    procedure ReloadPage()
    begin
        CurrPage.MarkdownView.Load(TextContent);
        CurrPage.Update();
    end;

    var
        TextContent: Text;
}
