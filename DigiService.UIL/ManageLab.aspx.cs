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
        List<Area> areas = new List<Area>();
        protected void Page_Load(object sender, EventArgs e)
        {
            AreaManager areaManager = new AreaManager();
            areas = areaManager.SelectArea();
        }
    }
}