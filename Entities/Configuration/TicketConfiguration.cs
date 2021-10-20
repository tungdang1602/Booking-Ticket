using Entities.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Configuration
{
    public class TicketConfiguration : IEntityTypeConfiguration<Ticket>
    {
        public void Configure(EntityTypeBuilder<Ticket> builder)
        {
            builder.ToTable("Tickets");
            builder.HasKey(x => x.TicketId);
            builder.Property(x => x.TicketId).UseIdentityColumn();
            builder.HasOne(x => x.Booking).WithMany(x => x.Tickets).HasForeignKey(x => x.BookingId);
        }
    }
}
