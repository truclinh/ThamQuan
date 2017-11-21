using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using 2 thu vien thiết kế class metadata
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
namespace ThamQuanTDMU.Models
{
    [MetadataType(typeof(STUDY_ACTIVITYMetadata))]
    public partial class STUDY_ACTIVITY
    {
        internal sealed class STUDY_ACTIVITYMetadata
        {
            [Display(Name = "Mã")]
            public int SA_Id { get; set; }
            [Display(Name = "Tên đề tài")]
            [Required(ErrorMessage = "Tên đề tài không được để trống")]
            public string SA_Title { get; set; }
            [Display(Name = "Nội dung đề tài")]
            [Required(ErrorMessage = "Nội dung đề tài không được để trống")]
            public string SA_Content { get; set; }
            [Display(Name = "Năm thực hiện")]
            [Required(ErrorMessage = "Năm thực hiện không được để trống")]
            public string SA_Year { get; set; }
            [Display(Name = "Hình ảnh")]
            public string SA_Image { get; set; }
            [Display(Name = "Video")]
            public string SA_Video { get; set; }
            [Display(Name = "Khoa")]
            [Required(ErrorMessage = "Khoa không được để trống")]
            public string SA_Khoa { get; set; }
            public Nullable<int> Menu_Id { get; set; }
            public Nullable<int> SA_Type { get; set; }
        }
    }
}