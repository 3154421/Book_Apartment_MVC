using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Book_Apartment_MVC.Models;

namespace Book_Apartment_MVC.Models
{
    public class Book_Apartment_DataContext : DbContext
    {
        public Book_Apartment_DataContext (DbContextOptions<Book_Apartment_DataContext> options)
            : base(options)
        {
        }

        public DbSet<Book_Apartment_MVC.Models.Apartment> Apartment { get; set; }

        public DbSet<Book_Apartment_MVC.Models.Booking> Booking { get; set; }

        public DbSet<Book_Apartment_MVC.Models.Renter> Renter { get; set; }
    }
}
