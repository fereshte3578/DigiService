using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.DAL;
using DigiService.Entities;

namespace DigiService.BLL
{
    public class AreaManager
    {
        public List<Area> SelectArea()
        {
            AreaDao areaDao = new AreaDao();
            return areaDao.SelectArea();
        }
    }
}
