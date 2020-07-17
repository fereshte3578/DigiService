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
    public partial class AccessLabFani : System.Web.UI.Page
    {
        public List<College> colleges = new List<College>();
        public List<HeadNameResource> headNameResources = new List<HeadNameResource>();
        public List<Requests> requests = new List<Requests>();
        public List<ReSource> reSources = new List<ReSource>();
        public List<Area> areas = new List<Area>(); 
        public List<Department> department = new List<Department>();
        protected void Page_Load(object sender, EventArgs e)
        {
            DepartmentManager departmentManager = new DepartmentManager();
            department = departmentManager.SelectDepartment();

            AreaManager areaManager = new AreaManager();
            areas = areaManager.SelectArea();

            ReSourceManager reSourceManager = new ReSourceManager();
            reSources = reSourceManager.SelectMultySelect();

            RequestManager requestManager = new RequestManager();
            requests = requestManager.SelectRequests();

            HeadNameResourceManager headNameResourceManager = new HeadNameResourceManager();
            headNameResources = headNameResourceManager.SelectHeadNameResource();

            CollegeManager collegeManager = new CollegeManager();
            colleges = collegeManager.SelectColleges();

        }
    }
}