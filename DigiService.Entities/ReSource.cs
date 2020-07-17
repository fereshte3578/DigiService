using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.Entities
{
    public class ReSource
    {
        public int id { get;set ;}
        public int AreaId { get; set; }
        public string NameDivice { get; set; }
        public string HeadName { get; set; }
        public string Cost { get; set; }
        public string CostOtherTeacher { get; set; }
        public string CostTeacher { get; set; }
        public string IsActived { get; set; }
        public string descrip { get; set; }
        public string TypeHour { get; set; }
        public string PresentHour { get; set; }
    }
}
