codeunit 50110 "PTE Demo Error Msg Mgt"
{
    TableNo = Integer;

    trigger OnRun()
    begin
        RemovePostCode(rec.Number);
        TestEasy(Rec);
    end;

    procedure TestEasy(PertinentInteger: Record Integer)
    var
        i: Integer;
        Yikes1Lbl: Label 'Oh no, same number %1!', Comment = '%1 = Number';
    begin
        InsertPostCode(PertinentInteger.Number);
        for i := 1 to 3 do
            if i = PertinentInteger.Number then
                Error(Yikes1Lbl, PertinentInteger.Number);
    end;

    procedure TestAdvanced(PertinentInteger: Record Integer; BreakOnFirstError: Boolean)
    var
        UserSetup: Record "User Setup";
        ErrorMessageMgt: Codeunit "Error Message Management";
        ForwardLinkMgt: Codeunit "PTE Demo Fwd Link Mgt.";
        ErrorContextElementTest1: Codeunit "Error Context Element";
        ErrorContextElementTest2: Codeunit "Error Context Element";
        TestMsg1Lbl: Label 'Testing Number %1', Comment = '%1 = Number';
        TestMsg2Lbl: Label 'Comparing Number %1', Comment = '%1 = Number';
        Yikes0Lbl: Label 'User id %1 need setting up!', Comment = '%1 = UserId';
        Yikes1Lbl: Label 'Oh no, same number %1!', Comment = '%1 = Number';
        Yikes2Lbl: Label 'And also, same number %1!', Comment = '%1 = Number';
        Yikes3Lbl: Label 'Big big trouble with number %1!', Comment = '%1 = Number';
        i: Integer;
    begin
        ErrorMessageMgt.PushContext(ErrorContextElementTest1, PertinentInteger, 0, StrSubstNo(TestMsg1Lbl, PertinentInteger.Number));
        //RemovePostCode(PertinentInteger.Number); // by BC23 this has become prevented and causes a rather ugly crash
        for i := 1 to 3 do begin
            // the context can be the Record
            // the context can be the RecordId, with same result
            // the context can be the an Integer, the table id, but in this case the refernce will be to a blank record
            ErrorMessageMgt.PushContext(ErrorContextElementTest2, PertinentInteger.RecordId, PertinentInteger.Number, StrSubstNo(TestMsg2Lbl, PertinentInteger.Number));
            if i = PertinentInteger.Number then begin
                // Check and list all of the issues found
                if not UserSetup.Get(UserId) then begin
                    ErrorMessageMgt.LogError(UserSetup,
                    StrSubstNo(Yikes0Lbl, UserId),
                    ForwardLinkMgt.GetHelpCodeForDamPavDemo());
                    if BreakOnFirstError then
                        Error('');
                end;
                if (i in [1, 2]) then
                    ErrorMessageMgt.LogContextFieldError(
                    PertinentInteger.FieldNo(Number),
                    StrSubstNo(Yikes1Lbl, PertinentInteger.Number),
                    UserSetup.RecordId,
                    ErrorMessageMgt.GetFieldNo(UserSetup.RecordId.TableNo, UserSetup.FieldName("Register Time")),
                    ForwardLinkMgt.GetHelpCodeForDamPavDemo());
                if (i in [1, 3]) then
                    ErrorMessageMgt.LogContextFieldError(
                    PertinentInteger.FieldNo(Number),
                    StrSubstNo(Yikes2Lbl, i),
                    UserSetup.RecordId,
                    ErrorMessageMgt.GetFieldNo(UserSetup.RecordId.TableNo, UserSetup.FieldName("Register Time")),
                    ForwardLinkMgt.GetHelpCodeForDamPavDemo());
                // if anything went wrong, which is checked by the function itself, an error('') is triggered;
                ErrorMessageMgt.Finish(PertinentInteger); //the current context
            end;
            ErrorMessageMgt.PopContext(ErrorContextElementTest2);
        end;
        //InsertPostCode(PertinentInteger.Number); // by BC23 this has become prevented and causes a rather ugly crash
        if PertinentInteger.Number = 5 then
            Error(Yikes3Lbl, PertinentInteger.Number); // you will still get the context
        ErrorMessageMgt.PopContext(ErrorContextElementTest1);
    end;

    local procedure InsertPostCode(number: Integer)
    var
        PostCode: Record "Post Code";
    begin
        PostCode.Code := '1234' + Format(number);
        PostCode.City := 'Test City ' + Format(number);
        PostCode.Insert();
    end;

    local procedure RemovePostCode(number: Integer)
    var
        PostCode: Record "Post Code";
    begin
        if PostCode.get('1234' + Format(number), 'Test City ' + Format(number)) then
            PostCode.Delete();
    end;
}
