page 50101 "Sales Transaction"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sales Transaction";
    Caption = 'Sales Transaction', comment = 'ESP="Transacciones de venta"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Line No."; Rec."Line No.")
                {
                    Caption = 'Line No.', comment = 'ESP="No. de línea"';
                    ApplicationArea = All;
                }

                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code', comment = 'ESP="Código vendedor"';
                    ApplicationArea = All;
                }

                field(Type; Rec.Type)
                {
                    Caption = 'Type', comment = 'ESP=Tipo';
                    ApplicationArea = All;
                }

                field("Item No."; Rec."No.")
                {
                    Caption = 'Item No.', comment = 'ESP=No. de producto';
                    ApplicationArea = All;
                }

                field(Amount; Rec.Amount)
                {
                    Caption = 'Amount', comment = 'ESP=Cantidad';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}