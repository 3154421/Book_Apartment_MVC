using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Book_Apartment_MVC.Models
{
    //Keeps the booking information.
    public class Booking
    {
        public int Id { get; set; }

        public int ApartmentId { get; set; }

        public int RenterId { get; set; }


        public Apartment Apartment { get; set; }

        public Renter Renter { get; set; }

        public int NumberOfWeeks { get; set; }


        [NotMapped]
        public decimal TotalCharge { get {

                return this.Apartment.ChargePerWeek * NumberOfWeeks;
            
            } }








    }
}
