report 50102 "NewPurchaseOrder"
{
    RDLCLayout = 'src/Objects/4.Report/PODefault1.rdlc';
    Caption = 'Purchase - Order';
    DefaultLayout = RDLC;
    EnableHyperlinks = true;
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem(DataItemName; "Purchase Header")
        {
            column(No_; "No.")
            {

            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {

            }
            column(Vendor_Order_No_; "Vendor Order No.")
            {

            }
        }

    }
}