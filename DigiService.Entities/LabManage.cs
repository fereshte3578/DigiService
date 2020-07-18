using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.Entities
{
    public class LabManage
    {
        public int id { get; set; }
        public int AreaId { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string TellPhone { get; set; }
    }
}
