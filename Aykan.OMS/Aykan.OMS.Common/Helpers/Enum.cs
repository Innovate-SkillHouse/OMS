namespace Aykan.OMS.Common.Helpers
{
    public enum Roles
    {
        Admin = 1,
        FGS,
        Accountant,
        BranchMarketingExec,
        MarketingHead,
        BranchStaff,
    }
    public enum LookUpGroup
    {
        TransactionType = 2,
        ExpenseType = 1,
        Reason = 3,
        Category = 4
    }

    public enum TransactionType
    {
        Credit = 1,
        Debit = 2
    }

    public enum PartType
    {
        Springs = 1,
        Clips = 2
    }

    public enum ChargesApplied
    {
        bankcharge = 1,
        discount = 2
    }

    public enum BranchDivision
    {
        CANARASPRINGSHEADOFFICE = 1
    }

    public enum ApprovalStatus
    {
        ApprovalInProgress = 1,
        Approved = 2,
        ApprovalOverriden = 3
    }

    public enum InvoiceStatus
    {
        Active = 1,
        Submitted = 2,
        Cancelled = 3
    }

    public enum InvoiceType
    {
        StockTransfer = 1,
        Retail = 2
    }

    public enum StockTransactionType
    {
        Issued = 0,
        Received = 1
    }

    public enum StockInwardType
    {
        HeadOffice = 1,
        Branch = 2,
        Dealer = 3,

    }

    public enum Reason
    {
        Scrap = 21,
        NotMoving = 22,
        WrongPartNumber = 23,
    }

    public enum Categories
    {
        StockTransfer=24,
        Retail=25
    }

    public enum CreditNoteStatus
    {
        New=0,
        ApprovedByMarketingHead=1,
        ApprovedByAccountant=2
    }

}
