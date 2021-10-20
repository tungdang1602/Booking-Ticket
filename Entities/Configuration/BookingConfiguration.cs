using Entities.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Configuration
{
    public class BookingConfiguration : IEntityTypeConfiguration<Booking>
    {
        public void Configure(EntityTypeBuilder<Booking> builder)
        {
            builder.ToTable("Bookings");
            builder.HasKey(x => x.BookingId);
            builder.Property(x => x.BookingId).UseIdentityColumn();

            builder.HasOne(x => x.User).WithMany(x => x.Bookings).HasForeignKey(x => x.UserId);
            builder.HasOne(x => x.CinemaInterest).WithMany(x => x.Bookings).HasForeignKey(x => x.CinemaInterestId);
        }
    }
}
