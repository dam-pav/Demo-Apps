codeunit 50130 "Notepad Helper"
{
    procedure SetLabels(var jsonLabels: JsonObject)
    var
        lblSearch: Label 'Search...';
        lblReplaceWith: Label 'Replace with...';
        lblIgnoreCase: Label 'Ignore case';
        lblFindNext: Label 'Find Next';
        lblReplaceNext: Label 'Replace Next';
    begin
        jsonLabels.Add('lblSearchFor', lblSearch);
        jsonLabels.Add('lblReplaceWith', lblReplaceWith);
        jsonLabels.Add('lblIgnoreCase', lblIgnoreCase);
        jsonLabels.Add('lblFindNext', lblFindNext);
        jsonLabels.Add('lblReplaceNext', lblReplaceNext);
    end;

    procedure SetCollapsible(var jsonLabels: JsonObject; isSearchAreaCollapsible: Boolean)
    begin
        jsonLabels.Add('isSearchAreaCollapsible', isSearchAreaCollapsible);
    end;
}
