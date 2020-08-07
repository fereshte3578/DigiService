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
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string IdReq = Request.QueryString[0].ToString();
            Label1.Text = IdReq;
            Requests requests = new Requests();
            requests.id = int.Parse(IdReq);
            RequestManager requestManager = new RequestManager();
            requestManager.Update0(requests);

            

        }
    }
}