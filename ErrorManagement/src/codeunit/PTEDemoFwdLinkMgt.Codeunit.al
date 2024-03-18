/// <summary>
/// This codeunit will add your links into the link enumeration
/// Based on pattern shown in codeunit 1431 "Forward Link Mgt."
/// </summary>
codeunit 50111 "PTE Demo Fwd Link Mgt."
{
    trigger OnRun()
    begin
    end;

    var
        ForwardLinkMgt: Codeunit "Forward Link Mgt.";
        DemoMessageLbl: Label 'Error Management Demo';
        DemoTokenLbl: Label 'DAM-PAV.DEMO', Locked = true;

    procedure GetHelpCodeForDamPavDemo(): Code[30]
    begin
        exit(DemoTokenLbl);
    end;

    /// <summary>
    /// This loads ALL links that have subscribers to the OnLoad event. It is not limited to a single extension. Maybe find a different solution.
    /// But if you are ok with this, you can use this in your Install codeunit.
    /// </summary>
    procedure Load()
    var
        NamedForwardLink: Record "Named Forward Link";
    begin
        NamedForwardLink.Load();
    end;

    /// <summary>
    /// This will be executed if you open page "Forward Links" and run "Load"
    /// You can use these links to provide additional reference to Error Message entries
    /// </summary>
    [EventSubscriber(ObjectType::Table, Database::"Named Forward Link", 'OnLoad', '', false, false)]
    local procedure OnLoadHelpArticleCodes()
    begin
        ForwardLinkMgt.AddLink(
          GetHelpCodeForDamPavDemo(), DemoMessageLbl, 'https://en.wikipedia.org/wiki/%22Hello,_World!%22_program');

        //ForwardLinkMgt.Addlink(
        //  GetSomethingElseEntirely, SomethingElseMsg, 'link to something else');

        // and so on...
    end;
}
