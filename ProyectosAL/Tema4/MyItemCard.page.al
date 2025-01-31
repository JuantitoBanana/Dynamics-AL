page 50102 "My Item Card"
{
    Caption = 'My Item Card', comment = 'ESP="Mi ficha de producto"';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Item;


    layout
    {
        area(Content)
        {
            field("Show Details"; mostrarDetalles)
            {
                ApplicationArea = all;
                Caption = 'Show Details', comment = 'ESP="Mostrar Detalles"';
            }
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; rec."No.")
                {
                    ApplicationArea = all;
                    Caption = 'No.', comment = 'ESP="Número"';
                    Importance = Promoted;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                    Caption = 'Description', comment = 'ESP="Descripción"';
                }
            }

            group(Details)
            {
                Caption = 'Details', comment = 'ESP="Detalles"';
                Visible = mostrarDetalles;
                field("Costing Method"; rec."Costing Method")
                {
                    ApplicationArea = all;
                    Caption = 'Costing Method', comment = 'ESP="Método de pago"';

                    trigger OnValidate()
                    begin
                        if Rec."Costing Method" <> Rec."Costing Method"::Standard then begin
                            mostrarUnitCost := false;
                        end
                        else
                            mostrarUnitCost := true;
                    end;
                }

                group(subgroup)
                {
                    Visible = mostrarUnitCost;
                    Caption = '';
                    field("Unit Cost"; Rec."Unit Cost")
                    {
                        ApplicationArea = all;
                        Caption = 'Unit Cost', comment = 'ESP="Coste unitario"';

                    }
                }

                field("Profit %"; Rec."Profit %")
                {
                    ApplicationArea = all;
                    Caption = 'Profit %', comment = 'ESP="Beneficio %"';
                    Importance = Additional;
                    ExtendedDatatype = Ratio;
                    ToolTip = 'Profit % of item', comment = 'ESP="% Beneficio del producto"';
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action(Inventory)
            {
                ApplicationArea = all;
                RunObject = report "Inventory - List";
                Caption = 'Inventory List', comment = 'ESP="Inventario"';
                Image = Inventory;

            }
        }

        area(Processing)
        {
            action(Turnover)
            {
                ApplicationArea = all;
                Caption = 'Item Turnover', comment = 'ESP="Movimiento del producto"';
                RunObject = page "Item Turnover";
                RunPageLink = "No." = field("No.");
                Image = Turnover;
            }
        }

    }


    trigger OnInit()
    begin
        mostrarUnitCost := true;
    end;

    trigger OnAfterGetRecord()
    begin
        if Rec."Costing Method" <> Rec."Costing Method"::Standard then begin
            mostrarUnitCost := false;
        end
        else
            mostrarUnitCost := true;
    end;

    var
        mostrarDetalles: Boolean;
        mostrarUnitCost: Boolean;
}

