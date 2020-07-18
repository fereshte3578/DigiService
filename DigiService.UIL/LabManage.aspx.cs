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
    public partial class ManageLab : System.Web.UI.Page
    {
        public List<Requests> requests = new List<Requests>();
        public List<HeadNameResource> headNameResources = new List<HeadNameResource>();
        public List<ReSource> reSources = new List<ReSource>();
        public List<LabManage> labManages = new List<LabManage>();
        public List<Area> areas = new List<Area>();
        protected void Page_Load(object sender, EventArgs e)
        {
            AreaManager areaManager = new AreaManager();
            areas = areaManager.SelectArea();

            LabManageManager labManageManager = new LabManageManager();
            labManages = labManageManager.SelectLabManage();

            ReSourceManager reSourceManager = new ReSourceManager();
            reSources = reSourceManager.SelectResource();

            HeadNameResourceManager headNameResourceManager = new HeadNameResourceManager();
            headNameResources = headNameResourceManager.SelectHeadNameResource();

            RequestManager requestManager = new RequestManager();
            requests = requestManager.SelectRequests();


        }
    }
}