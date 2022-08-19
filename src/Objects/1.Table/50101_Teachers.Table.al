table 50101 Teachers
{
    DataClassification = ToBeClassified;
    Caption = 'Teachers';
    Description = 'The teacher table contains all the information about teachers';

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Work Phone No."; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(4; "Personal Phone No."; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }

        field(5; "Website-URL"; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(6; Email; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
        field(7; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; ID)
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