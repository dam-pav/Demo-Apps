page 50100 "PTE Demo Scenario List Sorted"
{
    ApplicationArea = All;
    Caption = 'Demo Scenarios';
    CardPageId = "PTE Demo Scenario Card";
    DelayedInsert = true;
    Editable = false;
    LinksAllowed = false;
    PageType = List;
    SourceTable = "PTE Demo Scenario";
    SourceTableTemporary = true;
    SourceTableView = sorting("Sort Order");
    UsageCategory = Administration;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Demo Scenario"; Rec."Demo Scenario")
                {
                    ApplicationArea = All;
                    Style = Strong;
                    StyleExpr = true;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
        }
    }

    var
        DemoChangeDetection: Codeunit "PTE Demo Change Detection";

    trigger OnOpenPage()
    var
        DemoScenarioEnum: Enum "PTE Demo Scenario";
        ChangeType: Option None,Insert,Modify,Rename,Delete;
    begin
        DemoChangeDetection.SetInstance();
        InitTempRec(DemoScenarioEnum, ChangeType::None);
    end;

    trigger OnAfterGetRecord()
    var
        DemoScenarioEnum: Enum "PTE Demo Scenario";
        ChangeType: Option None,Insert,Modify,Rename,Delete;
    begin
        if DemoChangeDetection.IsChanged(DemoScenarioEnum, ChangeType) then
            InitTempRec(DemoScenarioEnum, ChangeType);
    end;

    local procedure InitTempRec(DemoScenarioEnum: Enum "PTE Demo Scenario"; ChangeType: Option None,Insert,Modify,Rename,Delete)
    var
        DemoScenario: Record "PTE Demo Scenario";
    begin
        case ChangeType of
            ChangeType::Delete:
                begin
                    if Rec."Demo Scenario" = DemoScenarioEnum then
                        if Rec.Next() = 0 then
                            if Rec.FindLast() then;
                    DemoScenarioEnum := Rec."Demo Scenario";
                end;
        end;
        Rec.DeleteAll();
        if Rec.FindFirst() then;
        if DemoScenario.FindSet() then
            repeat
                Rec := DemoScenario;
                Rec.Insert(true);
            until DemoScenario.Next() = 0;
        if Rec.Get(DemoScenarioEnum) then;
        CurrPage.SetRecord(Rec);
        CurrPage.Update(false);
    end;

}
