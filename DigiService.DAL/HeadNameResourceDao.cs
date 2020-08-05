using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.Entities;

namespace DigiService.DAL
{
    public class HeadNameResourceDao
    {
        public List<HeadNameResource> SelectHeadNameResource()
        {
            List<HeadNameResource> headNameResources = new List<HeadNameResource>();


            //1.1.make new connection


            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = False ;User ID = Digiservice ; Password = fereshte7835; ") ;
            //make a command

            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeHeadNameResource";

            HeadNameResource TmpHeadName = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpHeadName = new HeadNameResource();
                    TmpHeadName.id = sqlDataReader.GetInt32(0);

                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpHeadName.ResourceHeadNameId = sqlDataReader.GetInt32(1);

                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpHeadName.Fullname = sqlDataReader.GetString(2);

                    if (sqlDataReader.IsDBNull(3) == false)
                        TmpHeadName.Address = sqlDataReader.GetString(3);

                    if (sqlDataReader.IsDBNull(4) == false)
                        TmpHeadName.TellePhone = sqlDataReader.GetString(4);

                    if (sqlDataReader.IsDBNull(5) == false)
                        TmpHeadName.Email = sqlDataReader.GetString(5);

                    headNameResources.Add(TmpHeadName);
                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }
            return headNameResources;
        }
    }
}
