pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2020-08-12 - D. E. Veloper
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter("Type")
        {
            field("CSD Resource Type";"CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = All;
            }

        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    trigger OnOpenPage();
    begin
        ShowType:= (GetFilter(Type)='');
        ShowMaxField:= (GetFilter(Type) = format(type::Machine));

    end;
    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        ShowType: Boolean;

}