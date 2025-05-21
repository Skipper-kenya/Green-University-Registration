namespace GreenUniversityStudentRegistration.GreenUniversityStudentRegistration;

page 50132 StudentDashboard
{
    ApplicationArea = All;
    Caption = 'Student Dashboard';
    PageType = CardPart;
    SourceTable = "Student Registration Form"; // This should ideally be changed to a student-specific table

    layout
    {
        area(Content)
        {
            group(StudentInfo)
            {
                Caption = 'Student Information';

                field(StudentID; Rec."Entry No.")
                {
                    Caption = 'Student ID';
                    ToolTip = 'Displays the unique identification number of the student.';
                }

                field(EnrolledCourses; Rec."Course/Program Enrolled")
                {
                    Caption = 'Enrolled Courses';
                    ToolTip = 'Displays the number of courses you are currently enrolled in.';
                }
            }

            group(Academics)
            {
                Caption = 'Enrollment Summary';

                field("Enrollment Status"; Rec."Enrollment Status")
                {
                    Caption = ' Enrollment Status';
                    ToolTip = 'Displays your current Enrollment Status';
                    ApplicationArea = All;
                }

                field("Enrollment Date"; Rec."Enrollment Date")
                {
                    Caption = 'Enrollment Date';
                    ToolTip = 'Displays the Date Enrolled';
                    ApplicationArea = All;
                }
            }

            group(Financials)
            {
                Caption = 'Financial Summary';

                field(TuitionDue; 'USD 3,250.00') // This should be calculated from billing records
                {
                    Caption = 'Tuition Balance';
                    ToolTip = 'Displays your current tuition balance.';
                    ApplicationArea = All;
                }

                field(PaymentDeadline; '06/15/2025') // This should be retrieved from term dates
                {
                    Caption = 'Next Payment Due';
                    ToolTip = 'Displays the date when your next tuition payment is due.';
                    ApplicationArea = All;
                }
            }
        }
    }
}