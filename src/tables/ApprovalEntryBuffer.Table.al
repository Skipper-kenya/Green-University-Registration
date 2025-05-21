table 50141 "My Approval Entry Buffer"
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(2; "Requests Sent"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Requests Sent for Approval';
        }
        field(3; "Requests to Approve"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Requests to Approve';
        }
    }
    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}