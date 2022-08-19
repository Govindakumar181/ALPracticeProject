table 50103 "Class Schedule"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Teacher ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Teachers;
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(3; "Class ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Classes;

            trigger OnValidate()
            var
                recClasses: Record Classes;
                recTeacher: Record Teachers;
            begin
                if xRec."Class ID" <> Rec."Class ID" then begin
                    if recClasses.Get("Class ID") then begin
                        "Class Name" := recClasses.Name;
                    end;
                    recTeacher.Reset();
                    if recTeacher.Get("Teacher ID") then begin
                        "Teacher Name" := recTeacher.Name;
                    end;
                end;
            end;
        }
        field(4; ScheduleDay; Option)
        {
            Caption = 'Schedule Day';
            DataClassification = ToBeClassified;
            OptionMembers = "",Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday;
            OptionCaption = '"",Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday';

            trigger OnValidate()
            var
                Text001: Label 'There are no Classes on Weekends, Saturday and Sunday';
                Text002: Label 'The class on this day already exist';
                recSheduleDay: Record "Class Schedule";
            begin
                // recSheduleDay.Reset();
                // recSheduleDay.SetRange(ScheduleDay, Rec.ScheduleDay);
                // if recSheduleDay.Count > 1 then begin
                //     Message(Text002);
                //     Error(Text002);
                // end;
                if (Rec.ScheduleDay = 6) OR (Rec.ScheduleDay = 7) then begin
                    Message(Text001);
                    Error(Text001);
                end;
            end;


            // trigger OnValidate()
            // var
            //     Text002: Label 'The class on this day already exist';
            //     recSheduleDay: Record "Class Schedule";
            // begin
            //     recSheduleDay.Reset();
            //     recSheduleDay.SetRange(ScheduleDay, Rec.ScheduleDay);
            //     if recSheduleDay.Count > 1 then begin
            //         Message(Text002);
            //         Error(Text002);
            //     end;
            // end;

        }
        field(5; "Schedule Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Schedule Start Time"; Time)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;

            trigger OnValidate()
            var
                Text001: Label 'The Schedule Start Time cannot be less than 9:00 A.M and greater than 5:00 P.M';
            begin
                IF (Rec."Schedule Start Time" < 090000T) OR (Rec."Schedule Start Time" > 170000T) then begin
                    Message(Text001);
                    Error(Text001);
                end;
            end;
        }
        field(7; Duration; Decimal)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;

            trigger OnValidate()
            var
                Text001: Label 'The Class Duration Time cannot be more than 2 hours';
            begin
                if (Rec.Duration > 2) then begin
                    Message(Text001);
                    Error(Text001);
                end;
                Rec."Schedule End Time" := Rec."Schedule Start Time" + Rec.Duration * 3600000;
            end;

        }
        field(8; "Schedule End Time"; Time)
        {
            DataClassification = ToBeClassified;

            // trigger OnValidate()
            // var
            //     Text001: Label 'The Class Duration Time cannot be more than 2 hours';
            // begin
            //     if (Rec."Schedule End Time" > 170000T) then begin
            //         Message(Text001);
            //         Error(Text001);
            //     end;
            // end;
        }
        field(9; "Teacher Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Class Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Teacher ID", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}