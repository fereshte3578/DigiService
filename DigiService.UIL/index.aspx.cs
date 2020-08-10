using DigiService.BLL.Newsmanager;
using DigiService.Entities.Newsentities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiService.UIL
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NewsManager newsManager = new NewsManager();
            NewsEntities news = newsManager.selectnews();
            HiddenField1_news.Value = news.id.ToString();
            titrnews.Text = news.titr.ToString();
            news_selected.Text = news.khabar.ToString();

           
            Session["titr"] = titrnews.Text;
            Session["khabar"] = news_selected.Text;
            Session["id"] = HiddenField1_news.Value;




        }
    }
}