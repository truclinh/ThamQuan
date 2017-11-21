using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using 2 thu vien thiết kế class metadata
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace ThamQuanTDMU.Models
{
     [MetadataType(typeof(MENUCONTENTMetadata))]
    public partial class MENU_CONTENT
    {
         internal sealed class MENUCONTENTMetadata
         {
             [Display(Name = "Mã")]
             public int MC_Id { get; set; }
              [Display(Name = "Tiêu đề")]
              [Required(ErrorMessage = "Tiêu đề không được để trống")]
             public string MC_Title { get; set; }
              [Display(Name = "Hình ảnh")]
             public string MC_Images { get; set; }
              [Display(Name = "Vị trí")]
             public string MC_Position { get; set; }
              [Display(Name = "Mô tả")]
              [Required(ErrorMessage = "Mô tả không được để trống")]
             public string MC_Description { get; set; }
              [Display(Name = "Nguồn")]
             public string MC_Sources { get; set; }
              [Display(Name = "Nội dung")]
             public string MC_Content { get; set; }
              [Display(Name = "Chú thích")]
             public string MC_Note { get; set; }
              [Display(Name = "Link")]
             public string MC_Paths { get; set; }
              [Display(Name = "Mã menu")]
             public int Menu_Id { get; set; }
              [Display(Name = "Mã mục")]
             public int Department_Id { get; set; }
    
         }
    }
}