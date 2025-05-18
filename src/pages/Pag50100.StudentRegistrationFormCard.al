namespace GreenUniversityStudentRegistration.GreenUniversityStudentRegistration;
using System.Automation;

page 50115 "Student Registration Form Card"
{
    ApplicationArea = All;
    Caption = 'Student Registration Form Card';
    PageType = Card;
    SourceTable = "Student Registration Form";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Personal Information';

                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field(Nationality; Rec.Nationality)
                {
                    ToolTip = 'Specifies the value of the Nationality field.', Comment = '%';
                }
                field("Marital Status"; Rec."Marital Status")
                {
                    ToolTip = 'Specifies the value of the Marital Status field.', Comment = '%';
                }
                field(Religion; Rec.Religion)
                {
                    ToolTip = 'Specifies the value of the Religion field.', Comment = '%';
                }
                field("Identification Number"; Rec."Identification Number")
                {
                    ToolTip = 'Specifies the value of the Identification Number field.', Comment = '%';
                }
                field("Enrollment Status"; Rec."Enrollment Status")
                {
                    ToolTip = 'Specifies the value of the Enrollment Status field.', Comment = '%';
                }
            }
            group(Address)
            {
                Caption = 'Contact Information';
                field("Present Address"; Rec."Present Address")
                {
                    ToolTip = 'Specifies the value of the Present Address field.', Comment = '%';
                }
                field("Permanent Address"; Rec."Permanent Address")
                {
                    ToolTip = 'Specifies the value of the Permanent Address field.', Comment = '%';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ToolTip = 'Specifies the value of the Phone Number field.', Comment = '%';
                }
                field("Email Address"; Rec."Email Address")
                {
                    ToolTip = 'Specifies the value of the Email Address field.', Comment = '%';
                }
                field("Emegency Contact Name"; Rec."Emegency Contact Name")
                {
                    ToolTip = 'Specifies the value of the Emegency Contact Name field.', Comment = '%';
                }
                field("Emergency Contact Relationship"; Rec."Emergency Contact Relationship")
                {
                    ToolTip = 'Specifies the value of the Emergency Contact Relationship field.', Comment = '%';
                }
                field("Emergency Contact Number"; Rec."Emergency Contact Number")
                {
                    ToolTip = 'Specifies the value of the Emergency Contact Number field.', Comment = '%';
                }
            }
            group(AcademicInformation)
            {
                Caption = 'Academic Information';
                field("Admission Number"; Rec."Admission Number")
                {
                    ToolTip = 'Specifies the value of the Admission Number field.', Comment = '%';
                }
                field("Course/Program Enrolled"; Rec."Course/Program Enrolled")
                {
                    ToolTip = 'Specifies the value of the Course/Program Enrolled field.', Comment = '%';
                }
                field(Specialization; Rec.Specialization)
                {
                    ToolTip = 'Specifies the value of the Specialization field.', Comment = '%';
                }
                field("Academic Year"; Rec."Academic Year")
                {
                    ToolTip = 'Specifies the value of the Academic Year field.', Comment = '%';
                }
                field("Enrollment Date"; Rec."Enrollment Date")
                {
                    ToolTip = 'Specifies the value of the Enrollment Date field.', Comment = '%';
                }
                field("Mode of Study"; Rec."Mode of Study")
                {
                    ToolTip = 'Specifies the value of the Mode of Study field.', Comment = '%';
                }
            }
            group(ParentGuardianInformation)
            {
                Caption = 'Parent/Guardian Information';
                field("Father's Name"; Rec."Father's Name")
                {
                    ToolTip = 'Specifies the value of the Father''s Name field.', Comment = '%';
                }
                field("Mother's Name"; Rec."Mother's Name")
                {
                    ToolTip = 'Specifies the value of the Mother''s Name field.', Comment = '%';
                }
                field("Guardian Name(if applicable)"; Rec."Guardian Name(if applicable)")
                {
                    ToolTip = 'Specifies the value of the Guardian Name(if applicable) field.', Comment = '%';
                }
                field("Guardian Relationship"; Rec."Guardian Relationship")
                {
                    ToolTip = 'Specifies the value of the Guardian Relationship(if applicable) field.', Comment = '%';
                }
                field("Parent/Guardian's Occupation"; Rec."Parent/Guardian's Occupation")
                {
                    ToolTip = 'Specifies the value of the Parent/Guardian''s Occupation field.', Comment = '%';
                }
                field("Parent/Guardian Phone Number"; Rec."Parent/Guardian Phone Number")
                {
                    ToolTip = 'Specifies the value of the Parent/Guardian Phone Number field.', Comment = '%';
                }
                field("Parent/Guardian Email"; Rec."Parent/Guardian Email")
                {
                    ToolTip = 'Specifies the value of the Parent/Guardian Email field.', Comment = '%';
                }
            }
            group(IdentificatioAndDocuments)
            {
                Caption = 'Identification & Documents';
                field("Upload Passport Photo"; Rec."Upload Passport Photo")
                {
                    ToolTip = 'Specifies the value of the Upload Passport Photo field.', Comment = '%';
                    ApplicationArea = All;

                }
                field("Upload Id Photo"; Rec."Upload Id Photo")
                {
                    ToolTip = 'Specifies the value of the Upload Id Photo field.', Comment = '%';
                    ApplicationArea = All;
                }
            }
            group(FeeAndPaymentDetails)
            {
                Caption = ' Fee & Payment Details';
                field("Scholarship/Financial Aid"; Rec."Scholarship/Financial Aid")
                {
                    ToolTip = 'Specifies the value of the Scholarship/Financial Aid field.', Comment = '%';
                }
                field("Scholarship Details"; Rec."Scholarship Details")
                {
                    ToolTip = 'Specifies the value of the Scholarship Details field.', Comment = '%';
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ToolTip = 'Specifies the value of the Bank Name field.', Comment = '%';
                }
                field("Account Number"; Rec."Account Number")
                {
                    ToolTip = 'Specifies the value of the Account Number field.', Comment = '%';
                }
            }
            group(HealthAndMedicalInformation)
            {
                Caption = ' Health & Medical Information';
                field("Medical Condition(if any)"; Rec."Medical Condition(if any)")
                {
                    ToolTip = 'Specifies the value of the Medical Condition(if any) field.', Comment = '%';
                }
                field("Doctor's Contact"; Rec."Doctor's Contact")
                {
                    ToolTip = 'Specifies the value of the Doctor''s Contact field.', Comment = '%';
                }
            }
            group(PreferencesAndDeclarations)
            {
                Caption = 'Preferences & Declarations';
                field("Hostel Accomodation"; Rec."Hostel Accomodation")
                {
                    ToolTip = 'Specifies the value of the Hostel Accomodation field.', Comment = '%';
                }
                field("Transport Facility"; Rec."Transport Facility")
                {
                    ToolTip = 'Specifies the value of the Transport Facility field.', Comment = '%';
                }
                field("Extracurricular Interests "; Rec."Extracurricular Interests ")
                {
                    ToolTip = 'Specifies the value of the Extracurricular Interests field.', Comment = '%';
                }
            }
        }
    }



    actions
    {
        area(processing)
        {
            group("Request Approval")
            {
                Caption = 'Request Approval';
                Image = SendApprovalRequest;

                action(SendApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Send A&pproval Request';
                    Image = SendApprovalRequest;
                    ToolTip = 'Request approval to change the record.';
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        CustomWorkflowMgmt: Codeunit "Student  Workflow Mgmt";
                        RecRef: RecordRef;
                    begin
                        RecRef.GetTable(Rec);
                        if CustomWorkflowMgmt.CheckApprovalsWorkflowEnabled(RecRef) then
                            CustomWorkflowMgmt.OnSendWorkflowForApproval(RecRef);
                    end;
                }

                action(CancelApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cancel Approval Re&quest';
                    Image = CancelApprovalRequest;
                    ToolTip = 'Cancel the approval request.';
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    var
                        CustomWorkflowMgmt: Codeunit "Student  Workflow Mgmt";
                        RecRef: RecordRef;
                    begin
                        RecRef.GetTable(Rec);
                        CustomWorkflowMgmt.OnCancelWorkflowForApproval(RecRef);
                    end;
                }
            }
        }

        area(Creation)
        {
            group(Approval)
            {
                Caption = 'Approval';

                action(Approve)
                {
                    ApplicationArea = All;
                    Caption = 'Approve';
                    Image = Approve;
                    ToolTip = 'Approve the requested changes.';
                    Promoted = true;
                    PromotedCategory = New;

                    trigger OnAction()
                    begin
                        ApprovalsMgmt.ApproveRecordApprovalRequest(Rec.RecordId);
                    end;
                }

                action(Reject)
                {
                    ApplicationArea = All;
                    Caption = 'Reject';
                    Image = Reject;
                    ToolTip = 'Reject the approval request.';
                    Promoted = true;
                    PromotedCategory = New;

                    trigger OnAction()
                    begin
                        ApprovalsMgmt.RejectRecordApprovalRequest(Rec.RecordId);
                    end;
                }

                action(Delegate)
                {
                    ApplicationArea = All;
                    Caption = 'Delegate';
                    Image = Delegate;
                    ToolTip = 'Delegate the approval to a substitute approver.';
                    Promoted = true;
                    PromotedCategory = New;

                    trigger OnAction()
                    begin
                        ApprovalsMgmt.DelegateRecordApprovalRequest(Rec.RecordId);
                    end;
                }

                action(Comment)
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
                    Image = ViewComments;
                    ToolTip = 'View or add comments for the record.';
                    Promoted = true;
                    PromotedCategory = New;

                    trigger OnAction()
                    begin
                        ApprovalsMgmt.GetApprovalComment(Rec);
                    end;
                }

                action(Approvals)
                {
                    ApplicationArea = All;
                    Caption = 'Approvals';
                    Image = Approvals;
                    ToolTip = 'View approval requests.';
                    Promoted = true;
                    PromotedCategory = New;

                    trigger OnAction()
                    begin
                        ApprovalsMgmt.OpenApprovalEntriesPage(Rec.RecordId);
                    end;
                }
            }
        }
    }


    var
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";

}
