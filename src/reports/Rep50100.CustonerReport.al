namespace GreenUniversityStudentRegistration.GreenUniversityStudentRegistration;
using Microsoft.Sales.Customer;
using Microsoft.Sales.Receivables;
using Microsoft.Foundation.Company;

report 50100 "Customer Report"
{
    ApplicationArea = All;
    Caption = 'Custoner Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './src/reports/Rep50100.CustonerReport.rdlc';
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(logo; CompanyInfor.Picture)
            {
            }
            column(CompanyInfor; CompanyInfor.Name)
            {
            }
            column(CustomerName; Name)
            {
            }

            column(CustomerAddress; Address)
            {
            }
            column(E_Mail; "E-Mail")
            {
            }

            column(City; City)
            {
            }
            // dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            // {
            //     DataItemLink = "Customer No." = field("No.");
            // }

            column(CustomerBalance; CustomerBalance)
            {

            }
            trigger OnPreDataItem()
            begin
                // if CustomerNumber = '' then Error('Please select a customer number');

                if CustomerNumber <> '' then
                    Customer.SetRange("No.", CustomerNumber);  //emsures only one customer is selected
            end;

            trigger OnAfterGetRecord()
            begin
                customerledgerentry.Reset();
                customerledgerentry.SetRange("Customer No.", "No.");
                if customerledgerentry.FindSet() then
                    repeat
                        customerledgerentry.CalcFields("Remaining Amount");
                        customerBalance += customerledgerentry."Remaining Amount";
                    until customerledgerentry.Next() = 0;
            end;
        }
    }

    //requestfilter fields
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    Caption = 'Customer Filter';
                    field(CustomerNo; CustomerNumber)
                    {
                        Caption = 'Customer Number';
                        ShowMandatory = true; // Show mandatory fieldt
                        TableRelation = Customer; // Set table relation  otherwise it will ask user to type
                    }
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
    trigger OnInitReport()
    begin
        if CompanyInfor.Get() then
            CompanyInfor.CalcFields(Picture);
    end;

    // trigger o/n

    var
        customerBalance: Decimal;
        customerledgerentry: Record "Cust. Ledger Entry";
        CustomerNumber: Text;
        CompanyInfor: Record "Company Information";
}
