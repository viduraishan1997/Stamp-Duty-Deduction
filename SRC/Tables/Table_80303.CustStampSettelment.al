table 80303 " Customer Stamp Settelement"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(2; "Posting Date"; Date)
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(3; "Document Date"; Date)
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(4; "Document Type"; Text[20])
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(5; "Document No."; Code[20])
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(6; "Vendor No"; Code[20])
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(7; "Vendor Name"; Text[100])
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(8; "Vendor Ledger Entry No."; Integer)
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(9; Amount; Decimal)
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(10; "Amount LCY"; Decimal)
        {
            Editable = false;
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}