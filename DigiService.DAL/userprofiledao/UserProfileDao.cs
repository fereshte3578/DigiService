using DigiService.Entities.userprofileentities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.DAL.userprofiledao
{
    public class UserProfileDao
    {
        public bool Update_prof(UserProfileEntities userprof)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-14HI1CV\\SSSQL;Initial Catalog=DigiService;Integrated Security = true");
            SqlCommand com = con.CreateCommand();
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "userprofile_update";

            SqlParameter idParameter = com.Parameters.Add("@id", System.Data.SqlDbType.Int);
            idParameter.Value = userprof.id;
            SqlParameter nameParameter1 = com.Parameters.Add("@Name", System.Data.SqlDbType.NVarChar);
            nameParameter1.Value = userprof.Name;
            SqlParameter familyParameter1 = com.Parameters.Add("@Family", System.Data.SqlDbType.NVarChar);
            familyParameter1.Value = userprof.Family;
            SqlParameter phoneParameter1 = com.Parameters.Add("@Phone", System.Data.SqlDbType.NVarChar);
            phoneParameter1.Value = userprof.Phone;
            SqlParameter emailParameter1 = com.Parameters.Add("@Email", System.Data.SqlDbType.NVarChar);
            emailParameter1.Value = userprof.Email;
            SqlParameter addressParameter1 = com.Parameters.Add("@Address", System.Data.SqlDbType.NVarChar);
            addressParameter1.Value = userprof.Address;
            SqlParameter genderParameter1 = com.Parameters.Add("@Gender", System.Data.SqlDbType.NVarChar);
            genderParameter1.Value = userprof.Gender;
            SqlParameter usernameParameter1 = com.Parameters.Add("@Username", System.Data.SqlDbType.NVarChar);
            usernameParameter1.Value = userprof.Username;
            SqlParameter passwordParameter1 = com.Parameters.Add("@Password", System.Data.SqlDbType.NVarChar);
            passwordParameter1.Value = userprof.Password;


            try
            {
                con.Open();

                int numAffected = com.ExecuteNonQuery();
                con.Close();




            }
            catch (SqlException sqlException)
            {
                con.Close();
                return false;
            }
            return true;
        }

        public UserProfileEntities selectuser(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-14HI1CV\\SSSQL;Initial Catalog=DigiService;Integrated Security = true");

            SqlCommand com = new SqlCommand("select * from UserRegistration where id='" + id + "'", con);
            SqlParameter lanquageParameter = com.Parameters.Add("@id", System.Data.SqlDbType.Int);
            lanquageParameter.Value = id;


            UserProfileEntities tmpuser = null;
            try
            {
                con.Open();
                //3. Read Data
                SqlDataReader sqlDataReader = com.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    tmpuser = new UserProfileEntities();
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
