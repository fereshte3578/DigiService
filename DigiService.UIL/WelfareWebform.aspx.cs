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
    public partial class WelfareWebform : System.Web.UI.Page
    {
        public List<CenteralLab> allcenteralLabs = new List<CenteralLab>();
        protected void Page_Load(object sender, EventArgs e)
        {
            CenteralLabManager centralLabManager = new CenteralLabManager();
            allcenteralLabs = centralLabManager.SelectAllWelfare();
        }
    }
}