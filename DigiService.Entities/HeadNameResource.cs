using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.Entities
{
    public class HeadNameResource
    {
        public int id { get; set; }
        public int ResourceHeadNameId { get; set; }
        public string Fullname { get; set; }
        public string Address { get; set; }
        public string TellePhone { get; set; }
        public string Email { get; set; }
    }
}
