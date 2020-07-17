using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.DAL;
using DigiService.Entities;

namespace DigiService.BLL
{
    public class HeadNameResourceManager
    {
        public List<HeadNameResource> SelectHeadNameResource()
        {
            HeadNameResourceDao headNameResourceDao = new HeadNameResourceDao();
            return headNameResourceDao.SelectHeadNameResource();
        }
    }
}
