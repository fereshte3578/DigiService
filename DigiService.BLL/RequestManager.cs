using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.DAL;
using DigiService.Entities;

namespace DigiService.BLL
{
    public class RequestManager
    {
        public List<Requests> SelectRequests()
        {
            RequestDao requestDao = new RequestDao();
            return requestDao.SelectRequests();
        }

        public bool Update0(Requests requests)
        {
            RequestDao requestDao = new RequestDao();
            return requestDao.Update0(requests);
        }
    }
}
