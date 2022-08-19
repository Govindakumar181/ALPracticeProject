page 50105 "Student Card"
{
    Caption = 'Student Card';
    PageType = Card;
    SourceTable = Students;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Website; Rec.Website)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Website field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field(Latitude; Rec.Latitude)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Latitude field.';
                }
                field(Longitude; Rec.Longitude)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Longitude field.';
                }
            }
            group("Course Registered")
            {
                part(StudentRegLines; "Student Registration")
                {
                    SubPageLink = "Student ID" = field(ID);
                    ApplicationArea = All;
                }
            }
        }
    }
}
