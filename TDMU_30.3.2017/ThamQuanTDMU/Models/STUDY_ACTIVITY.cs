//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ThamQuanTDMU.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class STUDY_ACTIVITY
    {
        public int SA_Id { get; set; }
        public string SA_Title { get; set; }
        public string SA_Content { get; set; }
        public string SA_Year { get; set; }
        public string SA_Image { get; set; }
        public string SA_Video { get; set; }
        public string SA_Khoa { get; set; }
        public Nullable<int> Menu_Id { get; set; }
        public Nullable<int> SA_Type { get; set; }
    
        public virtual MENU MENU { get; set; }
    }
}