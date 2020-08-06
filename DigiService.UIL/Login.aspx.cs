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
<<<<<<< HEAD
            if(user != null)
            {
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
            UserLoginManager userLoginManager1 = new UserLoginManager();
            UserLoginEntities user1 = userLoginManager1.loginuser1(txtuname.Text, txtpassword.Text);
            if(user1 != null)
            {
                Response.Cookies["Cookies4"]["id"] = user1.id.ToString();
                Response.Cookies["Cookies4"]["Email"] = user1.Email.ToString();
                Response.Cookies["Cookies4"]["password"] = user1.Password.ToString();

                Response.Cookies["DCookies"].Expires = DateTime.Now.AddDays(1);

                Response.Redirect("AccessPart.aspx");
                
            }
            UserLoginManager userLoginManager2 = new UserLoginManager();
            UserLoginEntities user2 = userLoginManager2.loginuser2(txtuname.Text, txtpassword.Text);
            if (user2 != null)
            {
                Response.Cookies["Cookies5"]["id"] = user2.id.ToString();
                Response.Cookies["Cookies5"]["Email"] = user2.Email.ToString();
                Response.Cookies["Cookies5"]["password"] = user2.Password.ToString();

                Response.Cookies["ACookies"].Expires = DateTime.Now.AddDays(1);

                Response.Redirect("LabManage.aspx");

            }
            else
            {
                Response.Write("<script>alert('اطلاعات شما صحیح نیست');</script>");
            }
           
=======
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
<<<<<<< HEAD
           
=======
>>>>>>> c548cd86537e0c5d751ae1b76bd8877f8ff7354e
            
>>>>>>> 6b1b045cf3da5ec688de0b95c54fb195fb5fac5a
        }
    }
}