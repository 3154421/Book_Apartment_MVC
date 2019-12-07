using System;
using Book_Apartment_MVC.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

[assembly: HostingStartup(typeof(Book_Apartment_MVC.Areas.Identity.IdentityHostingStartup))]
namespace Book_Apartment_MVC.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<Book_Apartment_IDContext>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("Book_Apartment_IDContextConnection")));

                services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true)
                    .AddEntityFrameworkStores<Book_Apartment_IDContext>();
            });
        }
    }
}