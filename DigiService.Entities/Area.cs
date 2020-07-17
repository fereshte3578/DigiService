using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.Entities
{
   public class Area
    {
        public int id { get; set; }
        public int DepartmentId { get; set; }
        public string title { get; set; }
        public string IsActiveed { get; set; }
        public int CollegId { get; set; }
    }
}
