table 50107 CarTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Car"; Code[25])
        {
            Caption = 'Car';
            DataClassification = ToBeClassified;
        }

        field(2; Model; Code[30])
        {
            Caption = 'Model';
            DataClassification = ToBeClassified;
        }

        field(3; Year; Text[30])
        {
            Caption = 'Year';
            DataClassification = ToBeClassified;
        }

        field(4; Color; Text[30])
        {
            Caption = 'Color';
            DataClassification = ToBeClassified;
        }
        field(5; Price; Integer)
        {
            Caption = 'Price';
            DataClassification = ToBeClassified;
        }

        field(6; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }


    keys
    {
        key(PK; "Car")
        {
            Clustered = true;
        }
    }
}