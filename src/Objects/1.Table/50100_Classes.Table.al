table 50100 Classes
{
    DataClassification = ToBeClassified;
    Caption = 'Classes';
    Description = 'The class table containing all the information about classes';

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

        field(3; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(4; Mode; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Live,"On-Demand";
            OptionCaption = ' ,Live,On-Demand';
        }

        field(5; Fee; Decimal)
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
        key(PK3; Name)
        {
            // Clustered = false;
        }
    }

    trigger OnDelete()
    begin

    end;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnRename()
    begin

    end;
}