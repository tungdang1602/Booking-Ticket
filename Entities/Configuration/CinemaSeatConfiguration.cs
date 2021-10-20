using Entities.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Configuration
{
    public class CinemaSeatConfiguration : IEntityTypeConfiguration<CinemaSeat>
    {
        public void Configure(EntityTypeBuilder<CinemaSeat> builder)
        {
            builder.ToTable("CinemaSeats");
            builder.HasKey(x => x.CinemaSeatId);
            builder.Property(x => x.CinemaSeatId).UseIdentityColumn();
            builder.Property(x => x.Name).IsRequired();
            
        }
    }
}
