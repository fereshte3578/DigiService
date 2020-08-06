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
    public partial class AccessPart : System.Web.UI.Page
    {
        public List<Requests> requests = new List<Requests>();
        public List<ReSource> reSources = new List<ReSource>();
        public List<HeadNameResource> headNameResources = new List<HeadNameResource>();
        protected void Page_Load(object sender, EventArgs e)
        {
            HeadNameResourceManager headNameResourceManager = new HeadNameResourceManager();
            headNameResources = headNameResourceManager.SelectHeadNameResource();

            ReSourceManager reSourceManager = new ReSourceManager();
            reSources = reSourceManager.SelectMultySelect();

            RequestManager requestManager = new RequestManager();
            requests = requestManager.SelectRequests();

            if (Request.Cookies["DCookies"] != null)
            {
                HiddenField1.Value = Request.Cookies["Cookies4"]["id"];

            }
            else
            {
                string msg = "No Cookies";
                Label1.Text = msg;
            }
        }



        protected void Update0(object sender, EventArgs e)
        {
            Requests requests = new Requests();
            requests.id =int.Parse(idrequest.Text);
            RequestManager requestManager = new RequestManager();
            requestManager.Update0(requests);
        }


    }
}