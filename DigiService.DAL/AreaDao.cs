using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.Entities;

namespace DigiService.DAL
{
    public class AreaDao
    {
        public List<Area> SelectArea()
        {
            List<Area> areas = new List<Area>();


            //1.1.make new connection


            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");

            //make a command


            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeArea";

            Area TmpArea = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpArea = new Area();

                    TmpArea.id = sqlDataReader.GetInt32(0);


                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpArea.DepartmentId = sqlDataReader.GetInt32(1);

                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpArea.title = sqlDataReader.GetString(2);

                    if (sqlDataReader.IsDBNull(3) == false)
                        TmpArea.IsActiveed = sqlDataReader.GetString(3);

                    if (sqlDataReader.IsDBNull(4) == false)
                        TmpArea.CollegId = sqlDataReader.GetInt32(4);



                    areas.Add(TmpArea);
                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }

            return areas;
        }
    }
}
