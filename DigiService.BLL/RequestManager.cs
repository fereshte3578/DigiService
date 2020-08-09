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


        public void AddData(string day, int idResorce, string starthour, string finalfinish)
        {
            RequestDao ob = new RequestDao();
            string Q = "INSERT INTO UserRegistration VALUES ('" + idResorce + "','" + 1 + "',N'" + day + "',N'" + starthour + "',N'" + finalfinish + "','" + 0 + " ') ";
            ob.saveData(Q);
        }

        public List<Requests> SelectAllWithPaging(int pageIndex, int pageSize, out int total)
        {
            RequestDao requestDao = new RequestDao();
            return requestDao.SelectAllWithPaging(pageIndex, pageSize, out total);
        }
    }
}
