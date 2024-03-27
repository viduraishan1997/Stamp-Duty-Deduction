tableextension 80311 PurchAndPaySetExt extends "Purchases & Payables Setup"
{
    fields
    {
        field(80301; "Stamp Duty Journal Template"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(80302; "Stamp Duty Journal Batch"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(80303; "Stamp Duty Receivable Account"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(80304; "Stamp Duty Income Account"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(80305; "Stamp Duty Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(80306; "Threshold for Stamp Duty"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

    }


}