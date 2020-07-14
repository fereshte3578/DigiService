﻿using DigiService.BLL;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            CenteralLabManager centralLabManager = new CenteralLabManager();
            List<CenteralLab> allcenteralLabs = centralLabManager.SelectAll();
            GridView1.DataSource = allcenteralLabs;
            GridView1.DataBind();

        }
    }
}