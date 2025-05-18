namespace GreenUniversityStudentRegistration.GreenUniversityStudentRegistration;

enum 50139 "Enrollment Status Enum"
{
    Extensible = true;
    
    value(0; Open)
    {
        Caption = 'Open';
    }
    value(1; Pending)
    {
        Caption = 'Pending';
    }
    value(2; Cancelled)
    {
        Caption = 'Cancelled';
    }
    value(3; Approved)
    {
        Caption = 'Approved';
    }
    value(4; Rejected)
    {
        Caption = 'Rejected';
    }
}
