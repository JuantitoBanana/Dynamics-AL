page 50107 "My Order Sales"
{
    Caption = 'My Order Sales', comment = 'ESP="Mis ventas"';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Sales Header";
    SourceTableView = where("Document Type" = const(Order));

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = all;
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = all;
                }
            }

            group("Order Lines")
            {
                part("Lines"; "Sales Order Subform")
                {
                    ApplicationArea = all;
                    SubPageLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                }
            }


            group(Shiping)
            {
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ApplicationArea = all;
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                    ApplicationArea = all;
                }
                field("Ship-to Address"; Rec."Ship-to Address")
                {
                    ApplicationArea = all;
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

    var
        myInt: Integer;
}