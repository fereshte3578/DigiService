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
        public List<HeadNameResource> headNameResources = new List<HeadNameResource>();
        protected void Page_Load(object sender, EventArgs e)
        {
            HeadNameResourceManager headNameResourceManager = new HeadNameResourceManager();
            headNameResources = headNameResourceManager.SelectHeadNameResource();


        }
    }
}