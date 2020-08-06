using DigiService.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiService.UIL
{
    public partial class request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string IdRes = Request.QueryString[0].ToString();
            Label1.Text = IdRes;
            lable2.Text = "";
            string[] mysplit = IdRes.Split(' ');
            for (int i = 0; i < mysplit.Count(); i++)
            {
                lable2.Text += string.Format("mysplit[{0}]={1}</br>", i, mysplit[i]);
            }
        }
    }
}