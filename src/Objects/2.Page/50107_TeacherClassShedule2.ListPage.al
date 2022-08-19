page 50107 "Teacher Schedule SubForm 2"
{
    PageType = List;
    SourceTable = "Class Schedule";
    Caption = 'Teacher Shedule Form';
    //AutoSplitKey = true;
    ApplicationArea = All;
    Editable = false;
    RefreshOnActivate = true;
    UsageCategory = Lists;

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
                field("Teacher Name"; Rec."Teacher Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Teacher Name field.';
                    Editable = false;
                }
                field("Class ID"; Rec."Class ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Class ID field.';
                    Editable = false;
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
                    Editable = false;
                }
                field("Schedule Start Time"; Rec."Schedule Start Time")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Duration"; Rec."Duration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Duration field.';
                    Editable = false;
                }
                field("Schedule End Time"; Rec."Schedule End Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Schedule End Time field.';
                    Editable = false;
                }
            }
        }
    }

    actions
    {

    }

    // trigger OnOpenPage()
    // var
    //     Item: Record "Class Schedule";
    // begin
    // end;



    // procedure GetSelectionFilterForItem(var course: Record "Class Schedule"): Text
    // var
    //     RecRef: RecordRef;
    // begin
    //     RecRef.GetTable(course);
    //     exit(GetSelectionFilter(RecRef, course.FieldNo("Teacher ID"));
    // end;

    // procedure SelectInItemList(var course: Record "Class Schedule"): Text
    // var
    //     ItemListPage: Page "Teacher Schedule SubForm 2";
    // begin
    //     ItemListPage.SetTableView(course);
    //     ItemListPage.LookupMode(true);
    //     if ItemListPage.RunModal = ACTION::LookupOK then
    //         //exit(ItemListPage.GetSelectionFilter);
    // end;

    // procedure GetSelectionFilter(): Text
    // var
    //     course: Record "Class Schedule";
    //     SelectionFilterManagement: Codeunit SelectionFilterManagement;
    // begin
    //     CurrPage.SetSelectionFilter(course);
    //     //exit(SelectionFilterManagement.GetSelectionFilterForItem(course));
    // end;

}
