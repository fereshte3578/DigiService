using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.Entities;

namespace DigiService.DAL
{
    public class TimeReSourceDao
    {
        public List<TimeReSource> SelectTimeReSource()
        {
            List<TimeReSource> timeReSources = new List<TimeReSource>();



            //1.1.make new connection


            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");

            //make a command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeCollege";

            TimeReSource TmpTime = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpTime = new TimeReSource();

                    TmpCollege.id = sqlDataReader.GetInt32(0);

                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpCollege.title = sqlDataReader.GetString(1)

                    timeReSources.Add(TmpTime);
                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }
            return timeReSources;
        }
    }
}
