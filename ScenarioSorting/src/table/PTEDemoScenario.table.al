table 50100 "PTE Demo Scenario"
{
    Caption = 'Demo Scenario';
    DataClassification = CustomerContent;
    Permissions =
        tabledata "PTE Demo Scenario" = R;

    fields
    {
        field(1; "Demo Scenario"; Enum "PTE Demo Scenario")
        {
            Caption = 'Demo Scenario';
        }
        field(2; "Sort Order"; Text[50])
        {
            Caption = 'Sort Order';
        }
        field(20; Description; Text[250])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(PK; "Demo Scenario") { }
        key(SortOrder; "Sort Order") { }
    }

    trigger OnInsert()
    var
        isHandled: Boolean;
    begin
        if Rec.IsTemporary then begin
            OnBeforeSetSortOrder(isHandled);
            if not isHandled then
                "Sort Order" := Format("Demo Scenario");
        end;
    end;

    [IntegrationEvent(true, false)]
    local procedure OnBeforeSetSortOrder(var isHandled: Boolean)
    begin
    end;

}
