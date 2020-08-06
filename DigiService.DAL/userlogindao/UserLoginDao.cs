using DigiService.Entities.userloginentities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.DAL.userlogindao
{
    public class UserLoginDao
    {



        public UserLoginEntities loginuser(string username, string password)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = False ;User ID = Digiservice ; Password = fereshte7835;");

            SqlCommand com = new SqlCommand("select * from UserRegistration where Username='" + username + "' and Password = '" + password + "'", con);
            SqlParameter lanquageParameter = com.Parameters.Add("@username", System.Data.SqlDbType.NVarChar);
            lanquageParameter.Value = username;
            SqlParameter lanquageParameter1 = com.Parameters.Add("@password", System.Data.SqlDbType.NVarChar);
            lanquageParameter1.Value = password;

            UserLoginEntities tmpuser = null;
            try
            {
                con.Open();
                //3. Read Data
                SqlDataReader sqlDataReader = com.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    tmpuser = new UserLoginEntities();
                    tmpuser.id = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        tmpuser.Name = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        tmpuser.Family = sqlDataReader.GetString(2);
                    if (sqlDataReader.IsDBNull(3) == false)
                        tmpuser.Phone = sqlDataReader.GetString(3);
                    if (sqlDataReader.IsDBNull(4) == false)
                        tmpuser.Email = sqlDataReader.GetString(4);
                    if (sqlDataReader.IsDBNull(5) == false)
                        tmpuser.Address = sqlDataReader.GetString(5);
                    if (sqlDataReader.IsDBNull(6) == false)
                        tmpuser.Gender = sqlDataReader.GetString(6);
                    if (sqlDataReader.IsDBNull(7) == false)
                        tmpuser.Username = sqlDataReader.GetString(7);
                    if (sqlDataReader.IsDBNull(8) == false)
                        tmpuser.Password = sqlDataReader.GetString(8);


                }
                con.Close();
            }
            catch (SqlException sqlException)
            {
                con.Close();
                return null;
            }
            return tmpuser;

        }


    }
}
