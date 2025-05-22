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
        // Pre-Admission Phase
        area(Creation)
        {
            group(PreAdmission)
            {
                Caption = 'Pre-Admission';

                action(ApplicationForm)
                {
                    Caption = 'Application Form';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }

                action(DocumentUploads)
                {
                    Caption = 'Upload Documents';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }

                action(ApplicationStatus)
                {
                    Caption = 'Check Application Status';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }
            }
        }

        // Admission Evaluation Phase
        area(Processing)
        {
            group(Admission)
            {
                Caption = 'Admission Processing';

                action(Shortlisting)
                {
                    Caption = 'Shortlist Applicants';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }

                action(OfferLetter)
                {
                    Caption = 'Generate Offer Letter';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }

                action(Acceptance)
                {
                    Caption = 'Accept Admission';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }
            }

            group(Registration)
            {
                Caption = 'Student Registration';
                Image = RegisteredDocs;

                action(CourseRegistration)
                {
                    Caption = 'Course Registration';
                    RunObject = Page "Student Registration Form List";
                    ApplicationArea = All;
                }

                action(FeePayment)
                {
                    Caption = 'Pay Registration Fees';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }

                action(PaymentHistory)
                {
                    Caption = 'Payment History';
                    RunObject = Page "Posted Sales Invoices";
                    ApplicationArea = All;
                }

                action(RegistrationStatus)
                {
                    Caption = 'Check Registration Status';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }
            }

            group(Enrollment)
            {
                Caption = 'Course Enrollment';

                action(AssignCourses)
                {
                    Caption = 'Assign Courses';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }

                action(GenerateSchedule)
                {
                    Caption = 'Generate Timetable';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }

                action(StudentID)
                {
                    Caption = 'Generate Student ID';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }
            }
        }

        // Post-Enrollment / Services
        area(Reporting)
        {
            group(PostEnrollment)
            {
                Caption = 'Post Enrollment Services';

                action(Orientation)
                {
                    Caption = 'Orientation Schedule';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }

                action(StudentPortal)
                {
                    Caption = 'Access Student Portal';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }

                action(Transcript)
                {
                    Caption = 'Request Transcript';
                    RunObject = Page "Student Registration Form Card";
                    ApplicationArea = All;
                }
            }
        }

        // General Quick Access
        area(Embedding)
        {
            action(StudentList)
            {
                Caption = 'Student List';
                RunObject = Page "Student Registration Form List";
                ApplicationArea = All;
            }

            action(CourseCatalog)
            {
                Caption = 'Course Catalog';
                RunObject = Page "Posted Service Invoices"; // Update with real course catalog page
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