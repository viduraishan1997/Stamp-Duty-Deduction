pageextension 80313 PurchAndPaySetExt extends "Purchases & Payables Setup"
{
    layout
    {
        addafter("Credit Acc. for Non-Item Lines")
        {
            field("Stamp Duty Journal Template"; Rec."Stamp Duty Journal Template")
            {
                ApplicationArea = All;
            }
            field("Stamp Duty Journal Batch"; Rec."Stamp Duty Journal Batch")
            {
                ApplicationArea = All;
            }
            field("Stamp Duty Receivable Account"; Rec."Stamp Duty Receivable Account")
            {
                ApplicationArea = All;
            }
            field("Stamp Duty Income Account"; Rec."Stamp Duty Income Account")
            {
                ApplicationArea = All;
            }
            field("Stamp Duty Amount"; Rec."Stamp Duty Amount")
            {
                ApplicationArea = All;
            }
            field("Threshold for Stamp Duty"; Rec."Threshold for Stamp Duty")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}