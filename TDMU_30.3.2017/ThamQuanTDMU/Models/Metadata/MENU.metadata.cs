using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using 2 thu vien thiết kế class metadata
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
namespace ThamQuanTDMU.Models
{
      [MetadataType(typeof(MENUMetadata))]
    public partial class MENU
    {
          internal sealed class MENUMetadata {
              [Display(Name = "Mã")]
              public int Menu_Id { get; set; }
              [Display(Name = "Tên menu")]
              [Required(ErrorMessage = "Tên menu không được để trống")]
              public string Menu_Name { get; set; }
              [Display(Name = "Màu sắc")]
              [Required(ErrorMessage = "Màu menu không được để trống")]
              public string Menu_color { get; set; }
              [Display(Name = "Link")]
              [Required(ErrorMessage = "Link menu không được để trống")]
              public string Menu_Link { get; set; }
              [Display(Name = "Active")]
              public Nullable<int> Menu_Active { get; set; }
              [Display(Name = "Chú thích")]
              public string Menu_Note { get; set; }
              [Display(Name = "Đường dẫn khác")]
              public string Menu_Paths { get; set; }
          }
    }
}