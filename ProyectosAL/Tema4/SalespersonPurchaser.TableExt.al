tableextension 50100 "Salesperson/Purchaser" extends "Salesperson/Purchaser"
{
    fields
    {
        // Campo calculado que muestra el total de transacciones de venta("Sales Transaction")
        // por vendedor
        field(50100; "Total Sales"; Decimal)
        {
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = sum("Sales Transaction".Amount where("Salesperson Code" = field(Code),
                Type = field("Filter Type")));
        }

        field(50101; "Filter Type"; Enum "Transactions Line Type")
        {
            FieldClass = FlowFilter;

        }
    }

}