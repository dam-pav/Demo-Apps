permissionset 50100 Demo
{
    Assignable = true;
    Caption = 'Demo', MaxLength = 30;
    Permissions =
        table "PTE Demo Scenario" = X,
        tabledata "PTE Demo Scenario" = RMID,
        codeunit "PTE Demo Change Detection" = X,
        page "PTE Demo Scenario List Sorted" = X,
        page "PTE Demo Scenario Card" = X;
}
