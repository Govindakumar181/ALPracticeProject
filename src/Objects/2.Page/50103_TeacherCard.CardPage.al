page 50103 TeacherCard
{
    Caption = 'Teacher';
    PageType = Card;
    SourceTable = Teachers;

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
                field("Work Phone No."; Rec."Work Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Phone No. field.';
                }
                field("Personal Phone No."; Rec."Personal Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Personal Phone No. field.';
                }
                field("Website-URL"; Rec."Website-URL")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Website-URL field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Active field.';
                }
            }
            part(ClassSchedules; "Teacher Class Schedule SubForm")
            {
                SubPageLink = "Teacher ID" = field(ID);
                ApplicationArea = All;
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                end;
            }
        }
    }
}
