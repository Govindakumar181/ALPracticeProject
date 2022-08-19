page 50110 CarList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CarTable;
    CardPageId = CarPage;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Car; Rec.Car)
                {
                    ApplicationArea = All;
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }
                field(Year; Rec.Year)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}