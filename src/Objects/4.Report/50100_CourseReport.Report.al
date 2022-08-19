report 50100 "Course Report"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'src/Objects/4.Report/CourseReport.rdlc';
    //WordMergeDataItem = DataItemName;

    dataset
    {
        dataitem(DataItemName; Classes)
        {
            column(ID; ID)
            {

            }
            column(Name; Name)
            {

            }
            column(Active; Active)
            {

            }
            column(Mode; Mode)
            {

            }
            column(Fee; Fee)
            {

            }
        }
    }
    requestpage
    {
        SaveValues = true;
    }

}

