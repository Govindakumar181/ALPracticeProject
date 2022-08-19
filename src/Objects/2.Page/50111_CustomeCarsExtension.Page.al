page 50111 CarPage
{
    PageType = Card;
    SourceTable = CarTable;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(Car; Rec.Car)
                {
                    ApplicationArea = All;
                }

                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }
            }

            group(Details)
            {
                Caption = 'Details';
                field(Color; Rec.Color)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
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