report 50101 TeacherReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    WordLayout = 'src/Objects/4.Report/TeacherReport.docx';

    dataset
    {
        dataitem(DataItemName; Teachers)
        {
            column(ID; ID)
            {

            }
            column(Name; Name)
            {

            }
            column(WorkPhoneNo; "Work Phone No.")
            {

            }
            column(PersonalPhoneNo; "Personal Phone No.")
            {

            }
            column(WebsiteURL; "Website-URL")
            {

            }
            column(Email; Email)
            {

            }
            column(Active; Active)
            {

            }
        }
    }
    requestpage
    {
        SaveValues = true;

    }
}
