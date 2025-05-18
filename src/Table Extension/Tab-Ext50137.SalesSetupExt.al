namespace GreenUniversityStudentRegistration.GreenUniversityStudentRegistration;

using Microsoft.Sales.Setup;
using Microsoft.Foundation.NoSeries;

tableextension 50137 SalesSetupExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Entry No."; Code[10])
        {
            TableRelation = "No. Series";
        }
    }
}
