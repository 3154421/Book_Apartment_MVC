using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Book_Apartment_MVC.Models
{
    //Keeps the apartment information
    public class Apartment
    {
        public int Id { get; set; }

        public string ApartmentDescription { get; set; }

        public string Address { get; set; }


        public decimal ChargePerWeek { get; set; }



    }
}
