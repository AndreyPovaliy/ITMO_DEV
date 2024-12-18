using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_6_Exercise_1
{
    class BankAccount
    {
        public void Populate(long number, decimal balance)
        {
            accNo = number;
            accBal = balance;
            accType = AccountType.Checking;
        }
        public long Number()
        {
            return accNo;
        }
        public decimal Balance()
        {
            return accBal;
        }

        public AccountType Type()
        {
            return accType;
        }

       
        private long accNo;
        private decimal accBal;
        private AccountType accType;


    }



}
