﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TheMovie.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TheMovieEntities : DbContext
    {
        public TheMovieEntities()
            : base("name=TheMovieEntities")
        {
            this.Configuration.LazyLoadingEnabled = false;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<booking> booking { get; set; }
        public virtual DbSet<movies> movies { get; set; }
        public virtual DbSet<user> user { get; set; }
        public virtual DbSet<accesstoken> accesstokens { get; set; }
    }
}