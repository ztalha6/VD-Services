//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UsersDataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public string email { get; set; }
        public string paswword { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string phone { get; set; }
        public string city { get; set; }
        public string InsertedBy { get; set; }
        public Nullable<System.DateTime> InsertedAt { get; set; }
        public string UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedAt { get; set; }
    }
}
