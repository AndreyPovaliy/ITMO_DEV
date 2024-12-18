import pyodbc

connection_db = pyodbc.connect(
    r'DRIVER={SQL Server};'
    r'SERVER=(local)\SQLEXPRESS;'
    r'DATABASE=ApressFinancial;'
    r'Trusted_Connection=yes;'
)

cursor = connection_db.cursor()

cursor.execute('SELECT [CostomerFirstName] FROM [ApressFinancial].[CustomerDetails].[Customers]')

while 1:
    row = cursor.fetchone()
    if not row:
        break
    print(row.CostomerFirstName)
connection_db.close()