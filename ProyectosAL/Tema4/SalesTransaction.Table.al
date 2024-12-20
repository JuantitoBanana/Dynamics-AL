table 50101 "Sales Transaction"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Sales Transaction";

    fields
    {
        field(1; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Salesperson Code"; Code[10])
        {
            TableRelation = "Salesperson/Purchaser" where("Commission %" = filter('<>0'));
        }

        field(3; "No."; Code[20])
        {
            TableRelation = if (Type = const(Item)) Item
            else if (Type = const(Account)) "G/L Account"
            else if (Type = const(Resources)) Resource
            else if (Type = const(Vehicles)) Vehicle;
        }
        field(4; Amount; Decimal)
        {

        }
        field(5; Type; Enum "Transactions Line Type")
        {

        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
    }

}