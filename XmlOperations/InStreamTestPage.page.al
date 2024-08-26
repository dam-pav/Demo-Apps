
page 50121 "InStream Test Page"
{
    PageType = Card;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {

        }
    }

    actions
    {
        area(Promoted)
        {
            actionref(RequestInStreamAsParam_promoted; RequestInStreamAsParam)
            {

            }
            actionref(RequestInStreamDirect_promoted; RequestInStreamDirect)
            {

            }
        }
        area(processing)
        {
            action(RequestInStreamAsParam)
            {
                ApplicationArea = All;
                Image = ExportFile;
                trigger OnAction();
                var
                    InStream: InStream;
                    Output: Text;
                begin
                    if GetStream(InStream) then begin
                        Message('Length: %1', InStream.Length);
                        while not InStream.EOS do begin
                            InStream.ReadText(Output);
                            Message(Output);
                        end;
                    end;
                end;
            }

            action(RequestInStreamDirect)
            {
                ApplicationArea = All;
                Image = ExportFile;
                trigger OnAction();
                var
                    MyBlob: codeunit "Temp Blob";
                    OutStream: OutStream;
                    InStream: InStream;
                    Output: Text;
                begin
                    MyBlob.CreateOutStream(OutStream);
                    OutStream.Write('Some testing text.');
                    MyBlob.CreateInStream(InStream);
                    //Response.Content.ReadAs(InStream);
                    while not InStream.EOS do begin
                        InStream.Read(Output);
                        Message(Output);
                    end;
                end;
            }
        }
    }

    var
        URL: text;

    trigger OnOpenPage()
    begin
        URL := 'https://www.google.com';
        //URL := 'https://www.w3.org/People/mimasa/test/';
    end;

    procedure GetXStream(var Stream: InStream) Result: Boolean;
    var
        MyBlob: codeunit "Temp Blob";
        Client: HttpClient;
        Response: HttpResponseMessage;
    begin
        if Client.Get(URL, Response) then begin
            MyBlob.CreateInStream(Stream);
            Response.Content.ReadAs(Stream);
        end;
    end;

    procedure GetStream(var InStream: InStream) Result: Boolean;
    var
        MyBlob: codeunit "Temp Blob";
        OutStream: OutStream;
    begin
        MyBlob.CreateOutStream(OutStream);
        OutStream.Write('Some testing text.');
        MyBlob.CreateInStream(InStream);
        Result := (InStream.Length > 0);
    end;
}
