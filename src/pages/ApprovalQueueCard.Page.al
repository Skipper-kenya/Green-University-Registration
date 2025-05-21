page 50142 "Approval Queue Card"
{
    PageType = CardPart;
    SourceTable = "My Approval Entry Buffer";
    Caption = 'Approval Queue';
    
    layout
    {
        area(Content)
        {
            cuegroup("Pending Approvals")
            {
                Caption = 'Pending Approvals';
                
                field("Requests Sent"; Rec."Requests Sent")
                {
                    ApplicationArea = All;
                    Caption = 'Requests Sent for Approval';
                    ToolTip = 'Shows the number of requests you have sent that are pending approval.';
                    DrillDownPageId = "Approval Entries";
                    
                    trigger OnDrillDown()
                    begin
                        FilterSentRequests();
                    end;
                }
                
                field("Requests to Approve"; Rec."Requests to Approve")
                {
                    ApplicationArea = All;
                    Caption = 'Requests to Approve';
                    ToolTip = 'Shows the number of requests waiting for your approval.';
                    DrillDownPageId = "Requests to Approve";
                    
                    trigger OnDrillDown()
                    begin
                        FilterRequestsToApprove();
                    end;
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ApprovalEntries)
            {
                ApplicationArea = All;
                Caption = 'All Approval Entries';
                ToolTip = 'View all approval entries';
                Image = Approvals;
                RunObject = Page "Approval Entries";
            }
            
            // action(WorkflowStatus)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Workflow Status';
            //     ToolTip = 'View the status of workflows';
            //     Image = WorkflowSetup;
            //     RunObject = Page "Workflow Status";
            // }
        }
    }
    
    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
        
        UpdateCounts();
    end;
    
    procedure UpdateCounts()
    var
        ApprovalEntry: Record "Approval Entry";
    begin
        // Count requests sent for approval
        ApprovalEntry.Reset();
        ApprovalEntry.SetCurrentKey("Sender ID");
        ApprovalEntry.SetRange("Sender ID", UserId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        Rec."Requests Sent" := ApprovalEntry.Count;
        
        // Count requests to approve
        ApprovalEntry.Reset();
        ApprovalEntry.SetCurrentKey("Approver ID");
        ApprovalEntry.SetRange("Approver ID", UserId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        Rec."Requests to Approve" := ApprovalEntry.Count;
        
        Rec.Modify();
    end;
    
    local procedure FilterSentRequests()
    var
        ApprovalEntry: Record "Approval Entry";
        ApprovalEntries: Page "Approval Entries";
    begin
        ApprovalEntry.Reset();
        ApprovalEntry.SetCurrentKey("Sender ID");
        ApprovalEntry.SetRange("Sender ID", UserId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        
        ApprovalEntries.SetTableView(ApprovalEntry);
        ApprovalEntries.Caption := 'Requests Sent for Approval';
        ApprovalEntries.RunModal();
    end;
    
    local procedure FilterRequestsToApprove()
    var
        ApprovalEntry: Record "Approval Entry";
        RequestsToApprove: Page "Requests to Approve";
    begin
        ApprovalEntry.Reset();
        ApprovalEntry.SetCurrentKey("Approver ID");
        ApprovalEntry.SetRange("Approver ID", UserId);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        
        RequestsToApprove.SetTableView(ApprovalEntry);
        RequestsToApprove.RunModal();
    end;
}