
using DigiService.BLL.usermanager;
using DigiService.Entities.users;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiService.UIL
{
    public partial class Signup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string Name = txtName.Text.Trim();
                string Family = txtFamily.Text.Trim();
                string Phone = txtPhone.Text.Trim();
                string Address = txtAddress.Text.Trim();
                string Gender = ddlGender.SelectedValue.Trim();
                string Email = txtEmail.Text.Trim();
                string Username = txtUsername.Text.Trim();
                string Password = txtPassword.Text.Trim();
                UserManagers ob = new UserManagers();
                ob.AddData(Name, Family, Phone, Email, Address, Gender, Username, Password);
                Response.Write("<script>alert('اطلاعات شما با موفقیت ثبت شد');</script>");

            }
            else
            {
                Response.Write("<script>alert('اطلاعات شما ثبت نشد:(');</script>");

            }
            clear();

        }
        private void clear()
        {
            txtName.Text = string.Empty;
            txtFamily.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtAddress.Text = string.Empty;
            ddlGender.ClearSelection();
            txtEmail.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtPassword.Text = string.Empty;

        }
    }

}

