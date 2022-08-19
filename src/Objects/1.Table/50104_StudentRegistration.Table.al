table 50104 "Student Registration"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Students;
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
            begin
                if xRec."Class ID" <> Rec."Class ID" then begin
                    if recClasses.Get("Class ID") then begin
                        "Class Name" := recClasses.Name;
                        "Class Mode" := Format(recClasses.Mode);
                    end;
                end;
            end;

        }

        field(4; "Class Name"; Text[250])
        {
            DataClassification = ToBeClassified;
            TableRelation = Classes.Name;
            Editable = false;
        }

        field(5; "Class Mode"; Text[100])
        {
            TableRelation = Classes.Mode;
            DataClassification = ToBeClassified;
            // OptionMembers = " ",Live,"On-Demand";
            // OptionCaption = ' ,Live,On-Demand';
            Editable = false;
        }

    }

    keys
    {
        key(Key1; "Student ID", "Line No.")
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