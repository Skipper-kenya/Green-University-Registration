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
                Caption = 'My Courses';
                RunObject = Page "Sales Document Entity"; // Should be replaced with proper Courses page
                ApplicationArea = All;
            }

            action(Schedule)
            {
                Caption = 'My Schedule';
                RunObject = Page "Sales Document Line Entity"; // Should be replaced with proper Schedule page
                ApplicationArea = All;
            }
        }

        area(Processing)
        {
            action(ViewTuitionInvoices)
            {
                Caption = 'View Tuition Invoices';
                RunObject = Page "Posted Sales Invoices";
                ApplicationArea = All;
            }
        }

        area(Creation)
        {
            action(RequestTranscript)
            {
                Caption = 'Request Transcript';
                Image = NewDocument;
                RunObject = Page "Sales Invoice"; // Should be replaced with proper Transcript Request page
                RunPageMode = Create;
                ApplicationArea = All;
            }

            action(ApplyForScholarship)
            {
                Caption = 'Apply for Scholarship';
                Image = NewDocument;
                RunObject = Page "Sales Invoice"; // Should be replaced with proper Scholarship Application page
                RunPageMode = Create;
                ApplicationArea = All;
            }
        }
    }
}

// Creates a profile that uses the Role Center
profile StudentProfile
{
    ProfileDescription = 'Green University Student Profile';
    RoleCenter = MyRoleCenter;
    Caption = 'Green University Student';
}