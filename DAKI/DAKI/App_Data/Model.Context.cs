﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAKI.App_Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Achievement> Achievements { get; set; }
        public virtual DbSet<Badge> Badges { get; set; }
        public virtual DbSet<Department> Departments { get; set; }
        public virtual DbSet<Job> Jobs { get; set; }
        public virtual DbSet<Person> People { get; set; }
        public virtual DbSet<PersonHasJobInDep> PersonHasJobInDeps { get; set; }
        public virtual DbSet<Prize> Prizes { get; set; }
        public virtual DbSet<UserBuysPrize> UserBuysPrizes { get; set; }
        public virtual DbSet<UserProfile> UserProfiles { get; set; }
        public virtual DbSet<webpages_Mebership> webpages_Mebership { get; set; }
        public virtual DbSet<webpages_Roles> webpages_Roles { get; set; }
    }
}
