using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiService.UIL.UserControls
{
	public partial class UserControl_Header : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (Session["Name"] != null)
            {
                Label1.Text = "سلام" + " " + Session["Name"].ToString() + "!";
            } 

		}
	}
}