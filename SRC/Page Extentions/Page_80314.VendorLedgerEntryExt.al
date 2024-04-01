pageextension 80314 VendorLedgerEntryExt extends "Vendor Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(ActionApplyEntries)
        {
            action(CalculateStampDuty)
            {
                ApplicationArea = All;
                Caption = 'Calculate Stamp Duty';
                Image = Calculate;
                trigger OnAction()
                var
                    VendorLedgerEntry: Record "Vendor Ledger Entry";
                    SelectDateRangePage: Page "Select Date Range";
                    VendorStampSettelmentRec: Record "Vendor Stamp Settelment";
                    VendorStampSettelmentPage: Page "Vendor Stamp Settelment";
                    EntryNo: Integer;
                begin
                    if (SelectDateRangePage.RunModal() = Action::OK) and (SelectDateRangePage.From_Date() <> 0D) then begin
                        VendorLedgerEntry.SetFilter("Posting Date", '%1..%2', SelectDateRangePage.From_Date(), SelectDateRangePage.To_Date());
                        if VendorLedgerEntry.FindSet() then begin
                            VendorStampSettelmentRec.SetCurrentKey("Document No.");
                            if VendorStampSettelmentRec.FindSet() then
                                repeat
                                    VendorStampSettelmentRec.Delete();
                                until VendorStampSettelmentRec.Next() = 0;
                            VendorStampSettelmentPage.Run();
                            repeat
                                EntryNo += 1;
                                VendorStampSettelmentRec.Reset();
                                VendorStampSettelmentRec.Init();
                                VendorStampSettelmentRec."Entry No." := EntryNo;
                                VendorStampSettelmentRec."Posting Date" := VendorLedgerEntry."Posting Date";
                                VendorStampSettelmentRec."Document Date" := VendorLedgerEntry."Document Date";
                                VendorStampSettelmentRec."Document Type" := Format(VendorLedgerEntry."Document Type");
                                VendorStampSettelmentRec."Document No." := VendorLedgerEntry."Document No.";
                                VendorStampSettelmentRec."Vendor No" := VendorLedgerEntry."Vendor No.";
                                VendorStampSettelmentRec."Vendor Name" := VendorLedgerEntry."Vendor Name";
                                VendorStampSettelmentRec."Vendor Ledger Entry No." := VendorLedgerEntry."Entry No.";
                                if VendorLedgerEntry.CalcFields(Amount) then
                                    VendorStampSettelmentRec.Amount := Abs(VendorLedgerEntry.Amount);
                                if VendorLedgerEntry.CalcFields("Amount (LCY)") then
                                    VendorStampSettelmentRec."Amount LCY" := Abs(VendorLedgerEntry."Amount (LCY)");
                                VendorStampSettelmentRec.Insert();
                            until VendorLedgerEntry.Next() = 0;
                        end;
                    end else
                        Message('Entet From Date Value');
                end;
            }
        }
    }

    var
        myInt: Integer;
}