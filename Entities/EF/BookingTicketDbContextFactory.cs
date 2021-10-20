using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace Entities.EF
{
    public class BookingTicketDbContextFactory : IDesignTimeDbContextFactory<BookingTicketDbContext>
    {
        public BookingTicketDbContext CreateDbContext(string[] args)
        {
            IConfigurationRoot configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();

            var connectionString = configuration.GetConnectionString("BookingTicket");

            var optionsBuilder = new DbContextOptionsBuilder<BookingTicketDbContext>();
            optionsBuilder.UseSqlServer(connectionString);

            return new BookingTicketDbContext(optionsBuilder.Options);
        }
    }
}
