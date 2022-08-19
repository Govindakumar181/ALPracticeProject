page 50104 "Teacher Class Schedule SubForm"
{
    PageType = ListPart;
    SourceTable = "Class Schedule";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(ClassSchedules)
            {
                Caption = 'Class Schedules';
                field("Teacher ID"; Rec."Teacher ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Teacher ID field.';
                    Editable = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.';
                    Editable = false;
                }
                field("Class ID"; Rec."Class ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class ID field.';
                }
                field("Class Name"; Rec."Class Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class Name field.';
                    Editable = false;
                }
                field(ScheduleDay; Rec.ScheduleDay)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Schedule Day field.';



                }
                field("Schedule Date"; Rec."Schedule Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Schedule Date field.';
                }
                field("Schedule Start Time"; Rec."Schedule Start Time")
                {
                    ApplicationArea = All;



                }
                field("Duration"; Rec."Duration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Duration field.';


                }
                field("Schedule End Time"; Rec."Schedule End Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Schedule End Time field.';
                    Editable = false;

                }
                field("Teacher Name"; Rec."Teacher Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Teacher Name field.';
                    Editable = false;
                }
            }
        }
    }
}
