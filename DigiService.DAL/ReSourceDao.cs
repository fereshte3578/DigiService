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
            List<ReSource> reSources = new List<ReSource>();


            //1.1.make new connection


            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = False ;User ID = Digiservice ; Password = fereshte7835; ");

            //make a command


            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeResource";


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


                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpResource.AreaId = sqlDataReader.GetInt32(1);

                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpResource.NameDivice = sqlDataReader.GetString(2);

                    if (sqlDataReader.IsDBNull(3) == false)
                        TmpResource.HeadName = sqlDataReader.GetString(3);

                    if (sqlDataReader.IsDBNull(4) == false)
                        TmpResource.Cost = sqlDataReader.GetString(4);

                    if (sqlDataReader.IsDBNull(5) == false)
                        TmpResource.CostOtherTeacher = sqlDataReader.GetString(5);

                    if (sqlDataReader.IsDBNull(6) == false)
                        TmpResource.CostTeacher = sqlDataReader.GetString(6);

                    if (sqlDataReader.IsDBNull(7) == false)
                        TmpResource.IsActived = sqlDataReader.GetString(7);

                    if (sqlDataReader.IsDBNull(8) == false)
                        TmpResource.descrip = sqlDataReader.GetString(8);

                    if (sqlDataReader.IsDBNull(9) == false)
                        TmpResource.TypeHour = sqlDataReader.GetString(9);

                    if (sqlDataReader.IsDBNull(10) == false)
                        TmpResource.PresentHour = sqlDataReader.GetString(10);






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
            List<ReSource> MultyResoure = new List<ReSource>();


            // 1.make new connection

            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = False ;User ID = Digiservice ; Password = fereshte7835; ");


            //make a command


            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeResource";



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


                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpResource.AreaId = sqlDataReader.GetInt32(1);

                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpResource.NameDivice = sqlDataReader.GetString(2);

                    if (sqlDataReader.IsDBNull(3) == false)
                        TmpResource.HeadName = sqlDataReader.GetString(3);

                    if (sqlDataReader.IsDBNull(4) == false)
                        TmpResource.Cost = sqlDataReader.GetString(4);

                    if (sqlDataReader.IsDBNull(5) == false)
                        TmpResource.CostOtherTeacher = sqlDataReader.GetString(5);

                    if (sqlDataReader.IsDBNull(6) == false)
                        TmpResource.CostTeacher = sqlDataReader.GetString(6);

                    if (sqlDataReader.IsDBNull(7) == false)
                        TmpResource.IsActived = sqlDataReader.GetString(7);

                    if (sqlDataReader.IsDBNull(8) == false)
                        TmpResource.descrip = sqlDataReader.GetString(8);

                    if (sqlDataReader.IsDBNull(9) == false)
                        TmpResource.TypeHour = sqlDataReader.GetString(9);

                    if (sqlDataReader.IsDBNull(10) == false)
                        TmpResource.PresentHour = sqlDataReader.GetString(10);





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
