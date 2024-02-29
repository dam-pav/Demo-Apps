page 50101 "PTE Demo Scenario Card"
{
    Caption = 'Demo Scenario Card';
    DelayedInsert = true;
    LinksAllowed = false;
    PageType = Card;
    SourceTable = "PTE Demo Scenario";
    UsageCategory = None;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Integration Scenario"; Rec."Demo Scenario")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
