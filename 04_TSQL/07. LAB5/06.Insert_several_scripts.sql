INSERT INTO CustomerDetails.Customers
(CostomerId, CostomerTitleId, CostomerFirstName, CostomerOtherInitials,
CostomerLastName, AddressId, AccountNumber,
AccountTypeId, CleareBallance, UncleareBallance)
VALUES (4,3, 'Bernie', 'I', 'McGee', 314, 65368765, 1, 6653.11, 0.00),
(5, 2, 'Julie', 'A','Dewson', 2134, 81625422, 1, 53.32, -12.21),
(6, 1, 'Kirsty', NULL,'Hull', 4312, 96565334, 1, 1266.00, 10.32);
INSERT INTO ShareDetails.Shares
(ShareDesc, ShareTickerId,CurrentPrice)
VALUES ('FAT-BELLY.COM','FBC',45.20),
('NetRadio Inc','NRI',29.79),
('Texas Oil Industries','TOI',0.455),
('London Bridge Club','LBC',1.46);