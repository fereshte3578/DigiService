using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiService.UIL
{
    public partial class News_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["titr"] != null)
            {
                lbtitr.Text =  Session["titr"].ToString();
               
            }
            if (Session["khabar"] != null)
            {
               
                lbkhabar.Text = Session["khabar"].ToString();
              
            }
            if (Session["id"] != null)
            {
               
                lbid.Text = Session["id"].ToString();
            }


        }
    }
}