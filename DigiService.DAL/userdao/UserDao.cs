using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;


namespace DigiService.DAL.userdao
{
    public class UserDao
    {
        public void saveData(string query)
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-14HI1CV\\SSSQL;Initial Catalog=DigiService;Integrated Security = true");
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();

        }


    }


}