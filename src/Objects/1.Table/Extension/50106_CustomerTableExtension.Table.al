tableextension 50101 CustomerTableExtension extends Customer
{
    fields
    {
        field(50101; "Favorite Car"; Code[25])
        {
            DataClassification = ToBeClassified;
            Caption = 'Favorite Car';
            TableRelation = CarTable.Car;
        }

    }
}