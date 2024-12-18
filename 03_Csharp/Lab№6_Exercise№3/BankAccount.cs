using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_6_Exercise_3
{

    class BankAccount
    {
        public void Populate(decimal balance)
        {
            accNo = NextNumber();
            accBal = balance;
            accType = AccountType.Checking;
        }

        public long Number()
        {
            return accNo;
        }
        public decimal Deposit(decimal amount)
        {
            accBal += amount;
            return accBal;
        }

        public decimal Balance()
        {
            return accBal;
        }

        public string Type()
        {
            return accType.ToString();
        }
        public bool Withdraw(decimal amount)
        {
            bool sufficientFunds = accBal >= amount;
            if (sufficientFunds)
            {
                accBal -= amount;
            }
            return sufficientFunds;
        }


        private long accNo;
        private decimal accBal;
        private AccountType accType;

        private static long nextNumber = 123;

        private static long NextNumber()
        {
            return nextNumber++;
        }
    }

}
