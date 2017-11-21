using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using 2 thu vien thiết kế class metadata
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace ThamQuanTDMU.Models
{
     [MetadataType(typeof(DEPARTMENTMetadata))]
    public partial class DEPARTMENT
    {
         internal sealed class DEPARTMENTMetadata
         {
             [Display(Name = "Mã mục")]
             [Required(ErrorMessage = "Mã mục không được để trống")]
             public int Department_Id { get; set; }
             [Display(Name = "Tên mục")]
             [Required(ErrorMessage = "Tên mục không được để trống")]
             public string Department_Name { get; set; }
         }
    }
}