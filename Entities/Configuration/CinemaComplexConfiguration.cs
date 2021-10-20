using Entities.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Configuration
{
    public class CinemaComplexConfiguration : IEntityTypeConfiguration<CinemaComplex>
    {
        public void Configure(EntityTypeBuilder<CinemaComplex> builder)
        {
            builder.ToTable("CinemaComplices");
            builder.HasKey(x => x.CinemaComplexId);
            builder.Property(x => x.CinemaComplexId).UseIdentityColumn();
            builder.Property(x => x.Address).HasMaxLength(300).IsRequired();
            builder.Property(x => x.Name).HasMaxLength(200).IsRequired();
        }
    }
}
