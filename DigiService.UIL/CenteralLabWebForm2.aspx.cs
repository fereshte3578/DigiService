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
    public partial class CenteralLabWebForm2 : System.Web.UI.Page
    {
        public List<ReSource> MultyResoure = new List<ReSource>();
        public List<CenteralLab> AllcenteralLabs = new List<CenteralLab>();
        protected void Page_Load(object sender, EventArgs e)
        {
            CenteralLabManager centralLabManager = new CenteralLabManager();
            AllcenteralLabs = centralLabManager.SelectAll();

            ReSourceManager reSourceManager = new ReSourceManager();
            MultyResoure = reSourceManager.SelectMultySelect();



        }
    }
}