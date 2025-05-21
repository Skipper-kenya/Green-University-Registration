page 50131 MyRoleCenter 
{
    PageType = RoleCenter;
    Caption = 'Green University Student Portal';
    ApplicationArea = All;

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(Part1; RoleCenterHeadline)
                {
                    ApplicationArea = All;
                }

                part(Part2; StudentDashboard)
                {
                    Caption = 'Student Dashboard';
                    ApplicationArea = All;
                }
                part(ApprovalQueue; "Approval Queue Card")
                {
                    ApplicationArea = All;
                    Caption = 'Approval Queue';
                }
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(StudentRegistration)
            {
                Caption = 'Registration';
                Image = RegisteredDocs;

                action(CourseRegistration)
                {
                    Caption = 'Course Registration';
                    RunObject = Page "Student Registration Form List";
                    ApplicationArea = All;
                }

                action(PaymentHistory)
                {
                    Caption = 'Payment History';
                    RunObject = Page "Posted Sales Invoices";
                    ApplicationArea = All;
                }

                action(CourseCatalog)
                {
                    Caption = 'Course Catalog';
                    RunObject = Page "Posted Service Invoices"; // This should be replaced with proper Course Catalog page
                    ApplicationArea = All;
                }
            }
        }

        area(Embedding)
        {
            action(Students)
            {
                Caption = 'Student List';
                RunObject = Page "Student Registration Form List";
                ApplicationArea = All;
            }

            action(Courses)
            {
                Caption = 'Apply for Registration';
                RunObject = Page "Student Registration Form List";

            }


        }

        // area(Processing)


        // area(Creation)

    }
}

// Creates a profile that uses the Role Center
profile StudentProfile
{
    ProfileDescription = 'Green University Student Profile';
    RoleCenter = MyRoleCenter;
    Caption = 'Green University Student';
}