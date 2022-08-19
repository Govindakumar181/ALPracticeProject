pageextension 50101 CustomerPageExtension extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Favorite Car"; Rec."Favorite Car")
            {
                ApplicationArea = All;
                ToolTip = 'Customers Favorite Car';
            }
        }
    }
}