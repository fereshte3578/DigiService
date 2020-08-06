using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.Entities;

namespace DigiService.DAL
{
    public class RequestDao
    {
        public List<Requests> SelectRequests()
        {
            List<Requests> requests = new List<Requests>();


            //1.1.make new connection


            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = False ;User ID = Digiservice ; Password = fereshte7835; ");

            //make a command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeRequest";

            Requests TmpRequest = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpRequest = new Requests();

                    TmpRequest.id = sqlDataReader.GetInt32(0);

                    if(sqlDataReader.IsDBNull(1) == false)
                        TmpRequest.ResourceId = sqlDataReader.GetInt32(1);

                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpRequest.UserId = sqlDataReader.GetInt32(2);

                    if (sqlDataReader.IsDBNull(3) == false)
                        TmpRequest.DayReception = sqlDataReader.GetString(3);

                    if (sqlDataReader.IsDBNull(4) == false)
                        TmpRequest.StartHour = sqlDataReader.GetString(4);

                    if (sqlDataReader.IsDBNull(5) == false)
                        TmpRequest.Finishhour = sqlDataReader.GetString(5);

                    if (sqlDataReader.IsDBNull(6) == false)
                        TmpRequest.Status = sqlDataReader.GetInt32(6);

                    requests.Add(TmpRequest);
                }

                }
            catch
            {
                sqlConnection.Close();
                return null;
            }
            return requests;
        }

        public void saveData(string q)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = False ;User ID = Digiservice ; Password = fereshte7835;");
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();

            con.Close();
        }

        public bool Update0(Requests requests)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = False ;User ID = Digiservice ; Password = fereshte7835;");
            SqlCommand com = con.CreateCommand();
            com.CommandType = CommandType.StoredProcedure;
            com.CommandText = "Update0";

            SqlParameter idParameter = com.Parameters.Add("@id", System.Data.SqlDbType.Int);
            idParameter.Value = requests.id;
            


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
    }
}
