page 80303 "Vendor Stamp Settelment"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Vendor Stamp Settelment";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Entry No."; Rec."Entry No.")
                {
                }
                field("Posting Date"; Rec."Posting Date")
                {
                }
                field("Document Date"; Rec."Document Date")
                {
                }
                field("Document Type"; Rec."Document Type")
                {
                }
                field("Document No."; Rec."Document No.")
                {
                }
                field("Vendor No"; Rec."Vendor No")
                {
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                }
                field("Vendor Ledger Entry No."; Rec."Vendor Ledger Entry No.")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Amount LCY"; Rec."Amount LCY")
                {
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}