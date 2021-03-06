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
    
    public partial class UserProfile
    {
        public UserProfile()
        {
            this.UserBuysPrizes = new HashSet<UserBuysPrize>();
            this.Achievements = new HashSet<Achievement>();
            this.Badges = new HashSet<Badge>();
            this.webpages_Roles = new HashSet<webpages_Roles>();
        }
    
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public int CurrentPoints { get; set; }
        public int Points { get; set; }
        public Nullable<int> PersonId { get; set; }
    
        public virtual Person Person { get; set; }
        public virtual ICollection<UserBuysPrize> UserBuysPrizes { get; set; }
        public virtual webpages_Mebership webpages_Mebership { get; set; }
        public virtual ICollection<Achievement> Achievements { get; set; }
        public virtual ICollection<Badge> Badges { get; set; }
        public virtual ICollection<webpages_Roles> webpages_Roles { get; set; }
    }
}
