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
            string Q = "INSERT INTO UserRegistration VALUES ('" + Name + "','" + Family + "','" + Phone + "','" + Email + "','" + Address + "','" + Gender + "','" + Username + "','" + Password + "') ";
            ob.saveData(Q);
        }
    }

}

