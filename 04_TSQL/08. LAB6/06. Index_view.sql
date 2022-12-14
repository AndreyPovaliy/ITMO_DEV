-- ������� ��������������� �������������
CREATE UNIQUE CLUSTERED INDEX IX_CustFinProdS
ON CustomerDetails.v_CustFinProducts (AccountNumber, ProductName)


-- ��������� ����������
SET ANSI_NULLS ON
GO
SET ANSI_PADDING ON
GO
SET ANSI_WARNINGS ON
GO
SET CONCAT_NULL_YIELDS_NULL ON
GO
SET ARITHABORT ON
GO
SET QUOTED_IDENTIFIER ON
GO


SET NUMERIC_ROUNDABORT OFF
GO

-- ��������� ��������� ����� �������� ���������������� �������������
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO