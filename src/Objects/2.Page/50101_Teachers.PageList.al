page 50101 "Teacher Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Teachers;
    CardPageId = TeacherCard;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Work Phone No."; Rec."Work Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Personal Phone No."; Rec."Personal Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Website-URL"; Rec."Website-URL")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Caption = 'Copy Schedule';
                // RunObject = codeunit CodeunitGetRecords;
                trigger OnAction()
                var
                    cd: Codeunit CodeunitGetRecords;
                begin
                    cd.copyRecords(Rec);
                end;
            }
            action(ActionName1)
            {
                ApplicationArea = All;
                Caption = 'Get Report';
                trigger OnAction()

                var
                    rp: Report TeacherReport;

                begin
                    rp.Run();
                end;
            }

        }
    }

}
