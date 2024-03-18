report 50110 "PTE Demo Error Msg Mgt"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Demo Error Message Management';
    ProcessingOnly = true;

    dataset
    {
        dataitem(Integer; Integer)
        {
            DataItemTableView = where(Number = filter(0 .. 5));

            trigger OnAfterGetRecord()
            begin
                if TryMode then
                    ExceptionFound := not Codeunit.Run(Codeunit::"PTE Demo Error Msg Mgt", Integer)
                else
                    ExceptionFound := not TryTest(Integer);
                if ExceptionFound then
                    if ErrorMessageMgt.IsActive() then       //is ErrorMessageMgt implemented?
                        if StopAtFirstError then
                            CurrReport.Break()               //don't raise exceptions in regular code, this breaks transactions, including writing error logs
                        else
                            ErrorMessageMgt.LogLastError()
                    else
                        error(GetLastErrorText());           //classic, legacy exception handling
            end;
        }
    }
    requestpage
    {
        SaveValues = true;
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field(StopAtFirstErrorFld; StopAtFirstError)
                    {
                        Caption = 'Stop At First Error';
                        ToolTip = 'Select when you want to test stopping execution at first exception.';
                        ApplicationArea = All;
                    }
                    field(TryModeFld; TryMode)
                    {
                        Caption = 'Stop Transactions';
                        ToolTip = 'Select to test catching exceptions that stop transactions.';
                        ApplicationArea = All;
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    trigger OnPreReport()
    begin
        ErrorMessageMgt.Activate(ErrorMessageHandler);
        ErrorMessageMgt.PushContext(ErrorContextElementTest, 0, 0, TestMsg);
    end;

    trigger OnPostReport()
    begin
        ErrorMessageHandler.ShowErrors();
        ErrorMessageMgt.PopContext(ErrorContextElementTest);
        if TryMode then
            Page.Run(Page::"Post Codes");
    end;

    [TryFunction]
    procedure TryTest(PertinentInteger: Record Integer)
    begin
        TestErrorMsgMgt.TestAdvanced(Integer, StopAtFirstError);
    end;

    var
        TestErrorMsgMgt: Codeunit "PTE Demo Error Msg Mgt";
        ErrorMessageMgt: Codeunit "Error Message Management";
        ErrorMessageHandler: Codeunit "Error Message Handler";
        ErrorContextElementTest: Codeunit "Error Context Element";
        TestMsg: Label 'Error Management Tests';
        TryMode: Boolean;
        ExceptionFound: Boolean;
        StopAtFirstError: Boolean;
}
