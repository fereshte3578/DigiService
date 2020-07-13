using DigiService.BLL;
using DigiService.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiService.UIL
{
    public partial class CenteralLabForm : System.Web.UI.Page

    {

        protected void Page_Load(object sender, EventArgs e)

        {

           
        }

        protected void btn1_Click(object sender, EventArgs e)

        {
            CenteralLabManager centeralLabManager = new CenteralLabManager();

            CenteralLab centeralLab = centeralLabManager.Load(int.Parse(TextBoxLab.Text));

            if(centeralLab != null)

            {


                label1.Text = centeralLab.IsActived;


            }

            else

            {

                label1.Text = "salam";


            }
        }
    }
}