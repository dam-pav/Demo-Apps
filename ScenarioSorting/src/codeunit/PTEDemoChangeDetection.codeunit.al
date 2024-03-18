codeunit 50100 "PTE Demo Change Detection"
{
    SingleInstance = true;
    var
        ChangeDetected: Boolean;
        DemoScenarioDetected: Enum "PTE Demo Scenario";
        ChangeTypeDetected: Option None,Insert,Modify,Rename,Delete;

    procedure IsChanged(var DemoScenario: Enum "PTE Demo Scenario"; var ChangeType: Option None,Insert,Modify,Rename,Delete): Boolean;
    begin
        if ChangeDetected then begin
            ChangeDetected := false;
            DemoScenario := DemoScenarioDetected;
            ChangeType := ChangeTypeDetected;
            exit(true);
        end;
    end;

    procedure SetInstance()
    begin
        ClearAll();
    end;

    [EventSubscriber(ObjectType::Table, Database::"PTE Demo Scenario", 'OnAfterInsertEvent', '', false, false)]
    local procedure OnAfterInsertEvent(var Rec: Record "PTE Demo Scenario"; RunTrigger: Boolean)
    begin
        if Rec.IsTemporary then
            exit;
        ChangeDetected := true;
        DemoScenarioDetected := Rec."Demo Scenario";
        ChangeTypeDetected := ChangeTypeDetected::Insert;
    end;

    [EventSubscriber(ObjectType::Table, Database::"PTE Demo Scenario", 'OnAfterDeleteEvent', '', false, false)]
    local procedure OnAfterDeleteEvent(var Rec: Record "PTE Demo Scenario"; RunTrigger: Boolean)
    begin
        if Rec.IsTemporary then
            exit;
        ChangeDetected := true;
        DemoScenarioDetected := Rec."Demo Scenario";
        ChangeTypeDetected := ChangeTypeDetected::Delete;
    end;


    [EventSubscriber(ObjectType::Table, Database::"PTE Demo Scenario", 'OnAfterRenameEvent', '', false, false)]
    local procedure OnAfterRenameEvent(var Rec: Record "PTE Demo Scenario"; var xRec: Record "PTE Demo Scenario"; RunTrigger: Boolean)
    begin
        if Rec.IsTemporary then
            exit;
        ChangeDetected := true;
        DemoScenarioDetected := Rec."Demo Scenario";
        ChangeTypeDetected := ChangeTypeDetected::Rename;
    end;

    [EventSubscriber(ObjectType::Table, Database::"PTE Demo Scenario", 'OnAfterModifyEvent', '', false, false)]
    local procedure OnAfterModifyEvent(var Rec: Record "PTE Demo Scenario"; var xRec: Record "PTE Demo Scenario"; RunTrigger: Boolean)
    begin
        if Rec.IsTemporary then
            exit;
        ChangeDetected := true;
        DemoScenarioDetected := Rec."Demo Scenario";
        ChangeTypeDetected := ChangeTypeDetected::Modify;
    end;
}
