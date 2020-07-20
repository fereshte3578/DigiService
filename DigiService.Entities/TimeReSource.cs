using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.Entities
{
    public class TimeReSource
    {
        public int id { get; set; }
        public int ReSourceId { get; set; }
        public string wichday { get; set; }
        public string StartHour { get; set; }
        public string FinishHour { get; set; }
    }
}
