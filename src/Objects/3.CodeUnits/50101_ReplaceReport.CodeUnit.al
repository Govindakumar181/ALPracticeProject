codeunit 50101 "ZY Substitute Report"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure OnSubstituteReport(ReportId: Integer; var NewReportId: Integer)
    begin
        if ReportId = Report::"Standard Purchase - Order" then
            NewReportId := Report::NewPurchaseOrder;
    end;
}
