page 50104 "My Vendor Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = Vendor;
    Caption = 'My Vendor Card', comment = 'ESP="Ficha de proveedores"';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                }

                field(Address; Rec.Address)
                {
                    ApplicationArea = all;
                }

                field(City; Rec.City)
                {
                    ApplicationArea = all;
                }

                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ApplicationArea = all;
                }

                field("Purchaser Code"; Rec."Purchaser Code")
                {
                    ApplicationArea = all;
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing', comment = 'ESP="Facturación"';
                field("Budgeted Amount"; Rec."Budgeted Amount")
                {
                    ApplicationArea = all;
                }

                field("Balance (LCY)"; Rec."Balance (LCY)")
                {
                    ApplicationArea = all;
                }
            }
        }

        area(FactBoxes)
        {

            part("Vendor Details"; "Vendor Details FactBox")
            {
                ApplicationArea = all;
                SubPageLink = "No." = field("No.");
            }

            part("Vendor Statistics"; "Vendor Statistics FactBox")
            {
                ApplicationArea = all;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}