using DigiService.BLL.Userloginmanager;
using DigiService.DAL.userlogindao;
using DigiService.Entities.userloginentities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiService.UIL
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn1_click(object sender, EventArgs e)
        {

            UserLoginManager userLoginManager = new UserLoginManager();
            UserLoginEntities user = userLoginManager.loginuser(txtuname.Text, txtpassword.Text);
            hfUserID.Value = user.id.ToString();
            namehide.Value = user.Name.ToString();
            familyhide.Value = user.Family.ToString();
            phonehide.Value = user.Phone.ToString();
            emailhise.Value = user.Email.ToString();
            addresshide.Value = user.Address.ToString();
            genderhide.Value = user.Gender.ToString();
            Response.Cookies["Cookies3"]["id"] = hfUserID.Value;
            Response.Cookies["Cookies3"]["name"] = namehide.Value;
            Response.Cookies["Cookies3"]["family"] = familyhide.Value;
            Response.Cookies["Cookies3"]["phone"] = phonehide.Value;
            Response.Cookies["Cookies3"]["email"] = emailhise.Value;
            Response.Cookies["Cookies3"]["address"] = addresshide.Value;
            Response.Cookies["Cookies3"]["gender"] = genderhide.Value;
            Response.Cookies["Cookies3"]["username"] = txtuname.Text;
            Response.Cookies["Cookies3"]["password"] = txtpassword.Text;

            Response.Cookies["StudentCookies"].Expires = DateTime.Now.AddDays(1);

            Response.Redirect("Profile.aspx");
        }
    }
}