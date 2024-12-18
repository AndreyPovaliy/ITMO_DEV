using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace _03.MvcCreditApp1.Models
{
    public class Credit
    {
        // ID кредита
        [DisplayName("ID кредита")]
        [Required]
        public virtual int CreditId { get; set; }
        // Название
        [DisplayName("Название")]
        [Required]
        public virtual string Head { get; set; }
        // Период, на который выдается кредит
        [DisplayName("Период, на который выдается кредит")]
        [Required]
        public virtual int Period { get; set; }
        // Максимальная сумма кредита
        [DisplayName("Максимальная сумма кредита")]
        [Required]
        public virtual int Sum { get; set; }
        // Процентная ставка
        [DisplayName("Процентная ставка")]
        [Required]
        public virtual int Procent { get; set; }
    }
}