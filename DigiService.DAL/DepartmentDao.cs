using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DigiService.Entities;

namespace DigiService.DAL
{
    public class DepartmentDao
    {

        public List<Department> SelectDepartment()
        {
            List<Department> department = new List<Department>();


            //1.1.make new connection


            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");

            //make a command


            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "TakeDepartment";

            Department TmpDepatrment = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpDepatrment = new Department();

                    TmpDepatrment.id = sqlDataReader.GetInt32(0);


                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpDepatrment.title = sqlDataReader.GetString(1);

                    department.Add(TmpDepatrment);
                }
                sqlConnection.Close();
                }
            catch
            {
                sqlConnection.Close();
                return null;
            }

            return department;
        }
    }
}
