page 50106 "Ficha de pruebas"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    PromotedActionCategories = 'New,Process,Report,Personal4,Persona5';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Campo1; var1)
                {

                }
                field(Campo2; var2)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Action1)
            {
                Caption = 'Action1', comment = 'ESP="Mi accion1"';
                ApplicationArea = all;
                trigger OnAction()
                begin

                end;
            }
        }

        area(Navigation)
        {
            action(Action2)
            {
                Caption = 'Action2', comment = 'ESP="Mi accion2"';
                ApplicationArea = all;
                trigger OnAction()
                begin

                end;
            }
        }

        area(Creation)
        {
            action(Action3)
            {
                Caption = 'Action3', comment = 'ESP="Mi accion3"';
                ApplicationArea = all;
                trigger OnAction()
                begin

                end;
            }
        }

        area(Reporting)
        {
            action(Action4)
            {
                Caption = 'Action4', comment = 'ESP="Mi accion4"';
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Category4;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        var1: Integer;
        var2: Integer;
}