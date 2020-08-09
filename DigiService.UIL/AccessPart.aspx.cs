using DigiService.BLL;
using DigiService.BLL.usermanager;
using DigiService.Entities;
using DigiService.Entities.users;
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
        public List<Users> users = new List<Users>();
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

            UserManagers userManagers = new UserManagers();
            users = userManagers.selectUser();

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



    }
}