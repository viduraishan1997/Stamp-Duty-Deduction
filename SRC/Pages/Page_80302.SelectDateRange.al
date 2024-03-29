page 80302 "Select Date Range"
{
    PageType = StandardDialog;
    ApplicationArea = All;
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            group("Date Range")
            {
                field(FromDate; FromDate)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if FromDate > ToDate then
                            ToDate := 0D;
                    end;
                }
                field(ToDate; ToDate)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if ToDate < FromDate then
                            Error('Enter Valid Date Range');
                    end;
                }

            }
        }
    }
    var
        FromDate: Date;
        ToDate: Date;

    procedure From_Date(): Date
    begin
        exit(FromDate)
    end;

    procedure To_Date(): Date
    begin
        exit(ToDate)
    end;
}