contract MultiSigEscrow {
    struct Transaction {
        address buyer;
        address seller;
        uint256 amount;
        bool buyerApproved;
        bool sellerApproved;
        bool completed;
    }
    
    // Requiere 2/2 firmas (buyer + seller)
    function createEscrow() 
    function confirmDelivery() // buyer firma
    function confirmReceipt() // seller firma
    function executeRelease() // automático cuando 2/2
    function initiateDispute() // si hay problema
}