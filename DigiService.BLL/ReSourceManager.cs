using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.DAL;
using DigiService.Entities;

namespace DigiService.BLL
{
    public class ReSourceManager
    {
        public List<ReSource> SelectResource()
        {
            ReSourceDao reSourceDao = new ReSourceDao();
            return reSourceDao.SelectResource();
            
        }

        public List<ReSource> SelectMultySelect()
        {
            ReSourceDao reSourceDao = new ReSourceDao();
            return reSourceDao.SelectMultySelect();
        }
    }
}
