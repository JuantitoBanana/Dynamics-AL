table 50100 Vehicle
{

    DataClassification = ToBeClassified;


    fields
    {
        field(1; Model; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;

        }

        field(2; "Serial NO."; Integer)
        {

        }

        field(3; Description; Text[100])
        {

        }

        field(4; Transmission; Enum "Transmission Type")
        {

        }

        field(5; "List Price"; Decimal)
        {

        }

        field(6; "Date of Manufactoring"; Date)
        {

        }

    }

    keys
    {
        key(Key1; Model, "Serial NO.")
        {
            Clustered = true;
        }

        key(Key2; "Date of Manufactoring", Transmission)
        {

        }
    }
}