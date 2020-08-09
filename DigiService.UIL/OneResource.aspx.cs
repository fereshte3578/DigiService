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
    public partial class OneResource : System.Web.UI.Page
    {
        public List<Requests> Requests = new List<Requests>();
        public List<TimeReSource> timeReSources = new List<TimeReSource>();
        public List<HeadNameResource> headNameResources = new List<HeadNameResource>();
        public List<ReSource> MultyResoure = new List<ReSource>();
        public List<CenteralLab> AllcenteralLabs = new List<CenteralLab>();
        protected void Page_Load(object sender, EventArgs e)
        {
            CenteralLabManager centralLabManager = new CenteralLabManager();
            AllcenteralLabs = centralLabManager.SelectAll();

            ReSourceManager reSourceManager = new ReSourceManager();
            MultyResoure = reSourceManager.SelectMultySelect();

            HeadNameResourceManager headNameResourceManager = new HeadNameResourceManager();
            headNameResources = headNameResourceManager.SelectHeadNameResource();

            TimeReSourceManager timeReSourceManager = new TimeReSourceManager();
            timeReSources = timeReSourceManager.SelectTimeReSource();

            RequestManager requestManager = new RequestManager();
            Requests = requestManager.SelectRequests();

            string IdRes = Request.QueryString[0].ToString();
            HiddenFieldIdResource.Value = IdRes;

        }
    }

    }