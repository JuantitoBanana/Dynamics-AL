pageextension 50100 "Salespersons/Purchasers" extends "Salespersons/Purchasers"
{
    layout
    {
        addafter("Phone No.")
        {
            field("Total Sales"; Rec."Total Sales")
            {
                ApplicationArea = all;
            }
        }
    }

}