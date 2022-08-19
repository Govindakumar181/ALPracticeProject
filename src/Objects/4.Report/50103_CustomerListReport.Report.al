report 50103 CustomerList
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'src/Objects/4.Report/CustomersList.rdlc';

    dataset
    {
        dataitem(DataItemName; Customer)
        {
            column(No; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(FavoriteCar; "Favorite Car")
            {

            }
        }


    }
}