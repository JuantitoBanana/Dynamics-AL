enum 10712 "SII Sales Upload Invoice Type"
{
    Extensible = true;
    AssignmentCompatibility = true;

    value(0; " ") { Caption = ' '; }
    value(1; "F1 Invoice") { Caption = 'F1 Invoice'; }
    value(2; "F2 Simplified Invoice") { Caption = 'F2 Simplified Invoice'; }
    value(3; "F3 Invoice issued to replace simplified invoices") { Caption = 'F3 Invoice issued to replace simplified invoices'; }
    value(4; "F4 Invoice summary entry") { Caption = 'F4 Invoice summary entry'; }
    value(5; "R1 Corrected Invoice") { Caption = 'R1 Corrected Invoice'; }
    value(6; "R2 Corrected Invoice (Art. 80.3)") { Caption = 'R2 Corrected Invoice (Art. 80.3)'; }
    value(7; "R3 Corrected Invoice (Art. 80.4)") { Caption = 'R3 Corrected Invoice (Art. 80.4)'; }
    value(8; "R4 Corrected Invoice (Other)") { Caption = 'R4 Corrected Invoice (Other)'; }
    value(9; "R5 Corrected Invoice in Simplified Invoices") { Caption = 'R5 Corrected Invoice in Simplified Invoices'; }
}