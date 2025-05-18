namespace GreenUniversityStudentRegistration.GreenUniversityStudentRegistration;

using Microsoft.Sales.Setup;

pageextension 50138 SalesSetupExt extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("Entry No."; Rec."Entry No.")
            {
                ApplicationArea = All;
                ToolTip = 'Entry Nos.';
                Caption = 'Entry Nos.';
            }

        }
    }
}
