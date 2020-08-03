using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.Entities
{
    public class Requests
    {
        public int id { get; set; }
        public int ResourceId { get; set; }
        public int UserId { get; set; }
        public string DayReception { get; set; }
        public string StartHour { get; set; }
        public string Finishhour { get; set; }
        public int Status { get; set; }

    }
}
