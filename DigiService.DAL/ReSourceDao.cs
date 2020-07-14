using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.Entities;

namespace DigiService.DAL
{
    public class ReSourceDao
    {
        public List<ReSource> SelectResource()
        {

            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "ReSource_SelectMulty";

            List<ReSource> reSources = new List<ReSource>();


            ReSource TmpResource = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpResource = new ReSource();
                    TmpResource.id = sqlDataReader.GetInt32(0);

                    if (sqlDataReader.IsDBNull(0) == false)
                        TmpResource.AreaId = sqlDataReader.GetInt32(0);
                  
                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpResource.HeadName = sqlDataReader.GetString(2);
                     

                    reSources.Add(TmpResource);

                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }

            return reSources;

        }

        public List<ReSource> SelectMultySelect()
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "ReSource_SelectMulty";

            List<ReSource> MultyResoure = new List<ReSource>();


            ReSource TmpResource = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpResource = new ReSource();
                    TmpResource.id = sqlDataReader.GetInt32(0);

                    if (sqlDataReader.IsDBNull(0) == false)
                        TmpResource.AreaId = sqlDataReader.GetInt32(0);

                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpResource.HeadName = sqlDataReader.GetString(2);


                    MultyResoure.Add(TmpResource);

                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }

            return MultyResoure;
        }
    }
}
