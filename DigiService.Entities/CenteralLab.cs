using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.Entities
{
    public class CenteralLab
    {
        public int id { get; set; }
        public string title { get; set; }
        public int DepartmentId { get; set; }
        public string IsActived { get; set; }
    }
}
