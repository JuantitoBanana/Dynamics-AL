page 50105 "My Vendor List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vendor;
    Caption = 'My Vendor List', comment = 'ESP="Mis proveedores"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                }

                field(City; Rec.City)
                {
                    ApplicationArea = all;
                }
                field("Vendor Posting Group"; Rec."Vendor Posting Group")
                {
                    ApplicationArea = all;
                }

                field(" Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = all;
                }
                field("Purchaser Code"; Rec."Purchaser Code")
                {
                    ApplicationArea = all;
                }

                field("Country/Region Code"; Rec."Country/Region Code")
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