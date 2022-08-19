pageextension 50102 MyExtension extends "Customer List"

{
    actions
    {
        addfirst(reporting)
        {
            action(ShowCustomerVehicle)
            {
                ApplicationArea = All;
                Caption = 'My New Customer List';
                ToolTip = 'Shows Customer with Favorite Vehicle';
                RunObject = report CustomerList;
            }
        }

        modify("C&ontact")
        {
            //Visible = false;

            // Runs Before the Main Event in Customer Page
            trigger OnBeforeAction()
            var
                rp: Report CustomerList;
            begin
                Message('New Report Running');
                rp.Run();
            end;




            // Runs After the Main Event in Customer Page
            // trigger OnAfterAction()
            // var
            //     rp: Report CustomerList;
            // begin
            //     Message('New Report Running');
            //     rp.Run();
            // end;

            // trigger OnAction()
            // begin
            //     Message('Do Something here');
            // end;




        }


        addbefore(NewSalesBlanketOrder)
        {
            action(AddCarField)
            {
                ApplicationArea = All;
                Caption = 'List of Cars';
                RunObject = page CarList;
                Image = Camera;
            }
        }

    }

}