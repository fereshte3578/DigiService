using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.Entities;

namespace DigiService.DAL
{
    public class LabManageDao
    {
        public List<LabManage> SelectLabManage()
        {
            List<LabManage> labManages = new List<LabManage>();


            //1.1.make new connection


            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");

            //make a command


            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeLabManager";

            LabManage TmpLabManage = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpLabManage = new LabManage();

                    TmpLabManage.id = sqlDataReader.GetInt32(0);


                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpLabManage.AreaId = sqlDataReader.GetInt32(1);

                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpLabManage.FullName = sqlDataReader.GetString(2);

                    if (sqlDataReader.IsDBNull(3) == false)
                        TmpLabManage.Email = sqlDataReader.GetString(3);

                    if (sqlDataReader.IsDBNull(4) == false)
                        TmpLabManage.Address = sqlDataReader.GetString(4);

                    if (sqlDataReader.IsDBNull(5) == false)
                        TmpLabManage.TellPhone = sqlDataReader.GetString(5);

                    labManages.Add(TmpLabManage);
                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }
            return labManages;
        }
    }
}
