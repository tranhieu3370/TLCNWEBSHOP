using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Shop.Model.Model
{
    [Table("SupportOnline")]
    class SupportOnline
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { set; get; }
        [Required]
        [MaxLength(50)]
        public string Name { set; get; }

        [MaxLength(50)]
        public string Departmeng { set; get; }
        [MaxLength(50)]
        public string Skype { set; get; }

        [MaxLength(50)]
        public string Mobile { set; get; }

        [MaxLength(50)]
        public string Email { set; get; }


        [MaxLength(50)]
        public string Facebook { set; get; }

        [MaxLength(50)]
        public bool Status { set; get; }
        public int? DisplayOrder { set; get; }

    }
}
