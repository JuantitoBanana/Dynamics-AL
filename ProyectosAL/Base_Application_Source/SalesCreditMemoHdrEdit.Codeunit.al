codeunit 1408 "Sales Credit Memo Hdr. - Edit"
{
    Permissions = TableData "Sales Cr.Memo Header" = rm;
    TableNo = "Sales Cr.Memo Header";

    trigger OnRun()
    var
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
    begin
        SalesCrMemoHeader := Rec;
        SalesCrMemoHeader.LockTable();
        SalesCrMemoHeader.Find();
        SalesCrMemoHeader."Shipping Agent Code" := "Shipping Agent Code";
        SalesCrMemoHeader."Shipping Agent Service Code" := "Shipping Agent Service Code";
        SalesCrMemoHeader."Package Tracking No." := "Package Tracking No.";
        SalesCrMemoHeader."Company Bank Account Code" := "Company Bank Account Code";
        SalesCrMemoHeader."Operation Description" := "Operation Description";
        SalesCrMemoHeader."Operation Description 2" := "Operation Description 2";
        SalesCrMemoHeader."Special Scheme Code" := "Special Scheme Code";
        SalesCrMemoHeader."Cr. Memo Type" := "Cr. Memo Type";
        SalesCrMemoHeader."Correction Type" := "Correction Type";
        SalesCrMemoHeader."Corrected Invoice No." := "Corrected Invoice No.";
        OnBeforeSalesCrMemoHeaderModify(SalesCrMemoHeader, Rec);
        SalesCrMemoHeader.TestField("No.", "No.");
        SalesCrMemoHeader.Modify();
        Rec := SalesCrMemoHeader;
        UpdateSIIDocUploadState(Rec);
    end;

    local procedure UpdateSIIDocUploadState(SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    var
        xSIIDocUploadState: Record "SII Doc. Upload State";
        SIIDocUploadState: Record "SII Doc. Upload State";
        SIIManagement: Codeunit "SII Management";
        SIISchemeCodeMgt: Codeunit "SII Scheme Code Mgt.";
    begin
        if not SIIManagement.IsSIISetupEnabled() then
            exit;

        if not SIIDocUploadState.GetSIIDocUploadStateByDocument(
             SIIDocUploadState."Document Source"::"Customer Ledger".AsInteger(),
             SIIDocUploadState."Document Type"::"Credit Memo".AsInteger(),
             SalesCrMemoHeader."Posting Date",
             SalesCrMemoHeader."No.")
        then
            exit;

        xSIIDocUploadState := SIIDocUploadState;
        SIIDocUploadState.AssignSalesCreditMemoType(SalesCrMemoHeader."Cr. Memo Type");
        SIIDocUploadState.AssignSalesSchemeCode(SalesCrMemoHeader."Special Scheme Code");
        SIISchemeCodeMgt.ValidateSalesSpecialRegimeCodeInSIIDocUploadState(xSIIDocUploadState, SIIDocUploadState);
        SIIDocUploadState.IDType := SalesCrMemoHeader."ID Type";
        SIIDocUploadState."Succeeded Company Name" := SalesCrMemoHeader."Succeeded Company Name";
        SIIDocUploadState."Succeeded VAT Registration No." := SalesCrMemoHeader."Succeeded VAT Registration No.";
        SIIDocUploadState.Modify();
    end;

    [IntegrationEvent(false, false)]
    procedure OnBeforeSalesCrMemoHeaderModify(var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; FromSalesCrMemoHeader: Record "Sales Cr.Memo Header")
    begin
    end;
}