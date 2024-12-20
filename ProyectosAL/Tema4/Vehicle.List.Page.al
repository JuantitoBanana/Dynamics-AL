page 50100 "Vehicle List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vehicle;
    SourceTableView = sorting("Date of Manufactoring", Transmission) order(descending);

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }

                field("Serial NO."; Rec."Serial NO.")
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field(Transmission; Rec.Transmission)
                {
                    ApplicationArea = All;
                }

                field("List Price"; Rec."List Price")
                {
                    ApplicationArea = All;
                }

                field("Date of Manufactoring"; Rec."Date of Manufactoring")
                {
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