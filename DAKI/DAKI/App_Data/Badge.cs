//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Badge
    {
        public Badge()
        {
            this.UserProfiles = new HashSet<UserProfile>();
        }
    
        public int BadgeId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public int NecessaryPoints { get; set; }
    
        public virtual ICollection<UserProfile> UserProfiles { get; set; }
    }
}
