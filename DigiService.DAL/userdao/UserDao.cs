using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using DigiService.Entities.users;

namespace DigiService.DAL.userdao
{
    public class UserDao
    {
        public void saveData(string query)
        {

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = False ;User ID = Digiservice ; Password = fereshte7835;");
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();

        }

        public List<Users> selectUser()
        {
            List<Users> users = new List<Users>();


            //1.1.make new connection


            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");

            //make a command


            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeUser";

            Users TmpUser = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpUser = new Users();

                    TmpUser.id = sqlDataReader.GetInt32(0);

                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpUser.Name = sqlDataReader.GetString(1);

                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpUser.Family = sqlDataReader.GetString(2);

                    users.Add(TmpUser);
                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }
            return users;
        }
    }


}