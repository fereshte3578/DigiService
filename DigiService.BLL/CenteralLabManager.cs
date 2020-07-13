using DigiService.DAL;
using DigiService.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.BLL
{
    public class CenteralLabManager
    {
        public CenteralLab Load(int id)
        {
            CeterallabDao ceterallabDao = new CeterallabDao();
            return ceterallabDao.Load(id);
        }
    }
}
