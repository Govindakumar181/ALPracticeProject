table 50102 Students
{
    DataClassification = ToBeClassified;
    Caption = 'Students';
    Description = 'The student table contains all the information about students';

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

        field(3; "Phone No."; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }

        field(4; Email; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
        field(5; Website; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }

        field(6; Latitude; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(7; Longitude; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; City; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(9; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(10; WebID; Integer)
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