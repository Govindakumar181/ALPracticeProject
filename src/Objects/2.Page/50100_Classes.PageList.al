page 50100 "Class Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Classes;

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
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }
                field(Mode; Rec.Mode)
                {
                    ApplicationArea = All;
                }
                field(Fee; Rec.Fee)
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

                Caption = 'Courses Report';
                RunObject = report "Course Report";
                // trigger OnAction();
                // begin

                // end;
            }
        }
    }
}