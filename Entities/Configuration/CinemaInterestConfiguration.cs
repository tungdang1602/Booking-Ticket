using Entities.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Configuration
{
    public class CinemaInterestConfiguration : IEntityTypeConfiguration<CinemaInterest>
    {
        public void Configure(EntityTypeBuilder<CinemaInterest> builder)
        {
            builder.ToTable("CinemaInterests");
            builder.HasKey(x => x.CinemaInterestId);
            builder.Property(x => x.CinemaInterestId).UseIdentityColumn();
            builder.Property(x => x.StartTime).IsRequired();


            builder.HasOne(x => x.Movie).WithMany(x => x.CinemaInterests).HasForeignKey(x => x.MovieId);
            builder.HasOne(x => x.Cinema).WithMany(x => x.CinemaInterests).HasForeignKey(x => x.CinemaId);
        }
    }
}
