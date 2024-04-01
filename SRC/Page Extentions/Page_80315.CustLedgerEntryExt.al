pageextension 80315 CustLedgerEntryExt extends "Customer Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(AppliedEntries)
        {
            action(CalculateStampDuty)
            {
                ApplicationArea = All;
                Caption = 'Calculate Stamp Duty';
                Image = Calculate;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}