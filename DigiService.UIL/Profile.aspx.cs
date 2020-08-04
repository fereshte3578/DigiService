using DigiService.BLL.Userloginmanager;
using DigiService.BLL.userprofile;
using DigiService.Entities.userloginentities;
using DigiService.Entities.userprofileentities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiService.UIL
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["StudentCookies"] != null)
            {
                hfUserID_prof.Value = Request.Cookies["Cookies3"]["id"];

            }
            else
            {
                string msg = "No Cookies";
                Label7.Text = msg;
            }
            if (!IsPostBack)
            {
                UserProfileManager userprofileManager = new UserProfileManager();
                UserProfileEntities userselectid = userprofileManager.selectuser(int.Parse(hfUserID_prof.Value));
                hfUserID_prof.Value = userselectid.id.ToString();
                txtName.Text = userselectid.Name.ToString();
                TextBox1.Text = userselectid.Family.ToString();
                ddlGender.Text = userselectid.Gender.ToString();
                txtEmail.Text = userselectid.Email.ToString();
                txtAddress.Text = userselectid.Address.ToString();
                TextBox2.Text = userselectid.Username.ToString();
                TextBox3.Text = userselectid.Password.ToString();
                TextBox4.Text = userselectid.Phone.ToString();

            }



        }
        protected void btn_update_profile(object sender, EventArgs e)
        {
            UserProfileEntities userprof = new UserProfileEntities();
            userprof.id = int.Parse(hfUserID_prof.Value);
            userprof.Name = txtName.Text;
            userprof.Family = TextBox1.Text;
            userprof.Phone = TextBox4.Text;
            userprof.Email = txtEmail.Text;
            userprof.Address = txtAddress.Text;
            userprof.Gender = ddlGender.Text;
            userprof.Username = TextBox2.Text;
            userprof.Password = TextBox3.Text;
            UserProfileManager userProfileManager = new UserProfileManager();
            if (userProfileManager.Update_prof(userprof))
            {
                Response.Write("<script>alert('به روزرسانی اطلاعات با موفقیت انجام شد.')</script>");
            }
            else
            {
                Response.Write("<script>alert('اطلاعات شما به روز رسانی نشد.')</script>");

            }


        }
    }
}