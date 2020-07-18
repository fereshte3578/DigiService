using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.DAL;
using DigiService.Entities;

namespace DigiService.BLL
{
    public class LabManageManager
    {
        public List<LabManage> SelectLabManage()
        {
            LabManageDao labManageDao = new LabManageDao();
            return labManageDao.SelectLabManage();
        }
    }
}
