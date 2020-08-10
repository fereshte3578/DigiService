using DigiService.Entities.Newsentities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DigiService.DAL.Newsdao
{
   public class NewsDao
    {
        public Entities.Newsentities.NewsEntities selectnews()
        {
            SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = DigiService; Integrated Security = False; User ID = Digiservice; Password = fereshte7835; ");

            SqlCommand com = new SqlCommand("select * from News ", con);


            NewsEntities tmpnews = null;
            try
            {
                con.Open();
                //3. Read Data
                SqlDataReader sqlDataReader = com.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    tmpnews = new NewsEntities();
                    tmpnews.id = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        tmpnews.titr = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        tmpnews.khabar = sqlDataReader.GetString(2);



                }
                con.Close();
            }
            catch (SqlException sqlException)
            {
                con.Close();
                return null;
            }
            return tmpnews;
        }
    }
}
