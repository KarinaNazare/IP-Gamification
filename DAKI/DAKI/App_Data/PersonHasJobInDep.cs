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
    
    public partial class PersonHasJobInDep
    {
        public int PersonId { get; set; }
        public int JobId { get; set; }
        public int DepartmentId { get; set; }
        public System.DateTime StartingDate { get; set; }
        public Nullable<int> Salary { get; set; }
    
        public virtual Department Department { get; set; }
        public virtual Job Job { get; set; }
        public virtual Person Person { get; set; }
    }
}
