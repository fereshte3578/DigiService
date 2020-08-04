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


    }
}
