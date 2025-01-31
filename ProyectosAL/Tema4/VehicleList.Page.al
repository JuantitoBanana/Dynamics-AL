page 50100 "Vehicle List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vehicle;
    SourceTableView = sorting("Date of Manufactoring", Transmission) order(descending);
    Caption = 'Lista de vehículos';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Model; Rec.Model)
                {
                    Caption = 'Modelo';
                    ApplicationArea = All;
                }

                field("Serial NO."; Rec."Serial NO.")
                {
                    Caption = 'Número de serie';
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    Caption = 'Descripción';
                    ApplicationArea = All;
                }

                field(Transmission; Rec.Transmission)
                {
                    Caption = 'Transmisión';
                    ApplicationArea = All;
                }

                field("List Price"; Rec."List Price")
                {
                    Caption = 'Precios';
                    ApplicationArea = All;
                }

                field("Date of Manufactoring"; Rec."Date of Manufactoring")
                {
                    Caption = 'Fecha de fabricación';
                    ApplicationArea = All;
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

                trigger OnAction()
                begin

                end;
            }
        }
    }
}