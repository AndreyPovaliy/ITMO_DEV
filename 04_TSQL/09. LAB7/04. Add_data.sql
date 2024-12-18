-- добавить данные
INSERT INTO TransactionDetails.Transactions
(CustomerId, TransactionType, DateEntered, Amount,
RelatedProductId)
VALUES (1, 1, '2008-08-01T00:00:00', 100.00, 1),
(1, 1, '2008-08-04T00:00:00', 75.67, 1),
(1, 2, '2008-08-05T00:00:00', 35.20, 1),
(1, 2, '2008-08-06T00:00:00', 20.00, 1);
INSERT INTO TransactionDetails.TransactionTypes
(TransactionDescription, CreditType, AffectCashBalance)
VALUES ( 'proc+', 1, 1),
( 'proc-', 0, 1);

-- выполнить процедуру
EXECUTE CustomerDetails.apf_CusMovement 1,'2008-08-01T00:00:00','2008-08-31T00:00:00';