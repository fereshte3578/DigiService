using DigiService.DAL.userlogindao;
using DigiService.Entities.userloginentities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.BLL.Userloginmanager
{
    public class UserLoginManager
    {

        public UserLoginEntities loginuser(string username, string password)
        {
            UserLoginDao userLoginDao = new UserLoginDao();
            return userLoginDao.loginuser(username, password);
        }



        public UserLoginEntities loginuser1(string p1, string p2)
        {
            UserLoginDao userLoginDao1 = new UserLoginDao();
            return userLoginDao1.loginuser1(p1, p2);
        }

        public UserLoginEntities loginuser2(string p1, string p2)
        {
            UserLoginDao userLoginDao2 = new UserLoginDao();
            return userLoginDao2.loginuser2(p1, p2);
        }
    }
}
