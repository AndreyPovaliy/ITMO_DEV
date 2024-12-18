SELECT c.CostomerFirstName, c.CostomerLastName,
Trans.TransactionId, TransactionDescription,
DateEntered, Amount
FROM CustomerDetails.Customers AS c
CROSS APPLY
TransactionDetails.ufn_ReturnTransactions (c.CostomerId) AS Trans;
SELECT c.CostomerFirstName, c.CostomerLastName,
Trans.TransactionId, TransactionDescription,
DateEntered, Amount
FROM CustomerDetails.Customers AS c
OUTER APPLY
TransactionDetails.ufn_ReturnTransactions (c.CostomerId) AS Trans;