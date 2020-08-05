using DigiService.DAL.userdao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DigiService.BLL.usermanager
{
    public class UserManagers
    {

        public void AddData(string Name, string Family, string Phone, string Email, string Address, string Gender, string Username, string Password)
        {
            UserDao ob = new UserDao();
            string Q = "INSERT INTO UserRegistration VALUES (N'" + Name + "',N'" + Family + "',N'" + Phone + "',N'" + Email + "',N'" + Address + "',N'" + Gender + "',N'" + Username + "',N'" + Password + "') ";
            ob.saveData(Q);
        }
    }

}

