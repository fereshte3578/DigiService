using DigiService.Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.DAL
{
    public class CeterallabDao
    {
        public CenteralLab Load(int id)
        {
            // 1.make new connection
            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");


            //make a command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            //sqlCommand.CommandText = "SELECT id , title , IsActived , DepartmentId from Area ";
            sqlCommand.CommandText = "CenteralLabLoad";

            CenteralLab TmpCenterLab = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                if (sqlDataReader.Read())
                {
                    TmpCenterLab = new CenteralLab();
                    TmpCenterLab.id = sqlDataReader.GetInt32(0);
                    if(sqlDataReader.IsDBNull(1) == false)
                        TmpCenterLab.title = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpCenterLab.DepartmentId = sqlDataReader.GetInt32(2);
                    if (sqlDataReader.IsDBNull(3) == false)
                        TmpCenterLab.IsActived = sqlDataReader.GetString(3);

                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }

            return TmpCenterLab;
        }

        public List<CenteralLab> SelectAllWelfare()
        {

            List<CenteralLab> allcenteralLabs = new List<CenteralLab>();


            // 1.make new connection

            SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");


            //make a command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.CommandText = "CenteralLab_SelectAllWelfare";



            CenteralLab TmpCenterLab = null;

            try
            {
                sqlConnection.Open();

                //3.Read data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    TmpCenterLab = new CenteralLab();
                    TmpCenterLab.id = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        TmpCenterLab.title = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        TmpCenterLab.DepartmentId = sqlDataReader.GetInt32(2);
                    if (sqlDataReader.IsDBNull(3) == false)
                        TmpCenterLab.IsActived = sqlDataReader.GetString(3);
                    allcenteralLabs.Add(TmpCenterLab);

                }
                sqlConnection.Close();
            }
            catch
            {
                sqlConnection.Close();
                return null;
            }



            return allcenteralLabs;
        }

        public List<CenteralLab> SelectAll()
        {


             SqlConnection sqlConnection = new SqlConnection("Data Source=.;Initial Catalog = DigiService;Integrated Security = true");
             SqlCommand sqlCommand = sqlConnection.CreateCommand();
             sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
             sqlCommand.CommandText = "CenteralLab_SelectAll";

            List<CenteralLab> allcenteralLabs = new List<CenteralLab>();


                CenteralLab TmpCenterLab = null;

                try
                {
                    sqlConnection.Open();

                    //3.Read data
                    SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                    while (sqlDataReader.Read())
                    {
                        TmpCenterLab = new CenteralLab();
                        TmpCenterLab.id = sqlDataReader.GetInt32(0);
                        if (sqlDataReader.IsDBNull(1) == false)
                            TmpCenterLab.title = sqlDataReader.GetString(1);
                        if (sqlDataReader.IsDBNull(2) == false)
                            TmpCenterLab.DepartmentId = sqlDataReader.GetInt32(2);
                        if (sqlDataReader.IsDBNull(3) == false)
                            TmpCenterLab.IsActived = sqlDataReader.GetString(3);
                    allcenteralLabs.Add(TmpCenterLab);

                    }
                    sqlConnection.Close();
                }
                catch
                {
                    sqlConnection.Close();
                    return null;
                }

                return allcenteralLabs; 
            }
    }
}
