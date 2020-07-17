using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.Entities;

namespace DigiService.DAL
{
    public class CollegeDao
    {
        public List<College> SelectColleges()
        {
            List<College> colleges = new List<College>();



            //1.1.make new connection


            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");

            //make a command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeCollege";

            College TmpCollege = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpCollege = new College();

                    TmpCollege.id = sqlDataReader.GetInt32(0);

                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpCollege.title = sqlDataReader.GetString(1);

                    colleges.Add(TmpCollege);
                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }
            return colleges;
        }
    }
}
