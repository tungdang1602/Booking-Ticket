using Entities.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Configuration
{
    public class CinemaConfiguration : IEntityTypeConfiguration<Cinema>
    {
        public void Configure(EntityTypeBuilder<Cinema> builder)
        {
            builder.ToTable("Cinemas");
            builder.HasKey(x => x.CinemaId);
            builder.Property(x => x.CinemaId).UseIdentityColumn();
            builder.Property(x => x.Name).IsRequired().HasMaxLength(100);

            builder.HasOne(x => x.CinemaComplex).WithMany(x => x.Cinemas).HasForeignKey(x => x.CinemaComplexId);
            builder.HasOne(x => x.CinemaSeat).WithMany(x => x.Cinemas).HasForeignKey(x => x.CinemaSeatId);
        }
    }
}
