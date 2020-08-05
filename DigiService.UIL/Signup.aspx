<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="DigiService.UIL.Signup" %>

<%@ Register Src="~/UserControls/UserControlsignup_header.ascx" TagPrefix="header" TagName="UserControlsignup_header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" dir="rtl" lang="fa">
    <title>signin</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" href="Styles/bootstrap.css" />
    <link rel="stylesheet" href="Styles/Style.css" />
    <link rel="stylesheet" href="Scripts/jquery-3.4.1.js" />
    <link rel="stylesheet" href="Scripts/bootstrap.min.js" />
</head>
<body dir="rtl">
    <header:UserControlsignup_header runat="server" ID="header" />

   <form id="form1" runat="server">
        <div>

            <br />
            <br />
            <div class="row">

                <div class="col-12 text-center">
                    <h4 class="text-login-seller">ثبت نام کاربر</h4>
                    <p>در هنگام ثبت نام اگر دانشجو هستید اول پسورد خود sو اگر مدیر هستید اول پسورد خود m قرار دهید.</p>
                </div>

            </div>
            <br />
            <br />
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-2 ">
                    </div>

                    <div class="col-lg-4 text-center ">

                        <img src="Images/Icons-24px-Black-Single.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox CssClass="textbox_signup" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" placeholder="نام" ID="txtName" runat="server"></asp:TextBox>
                        <img src="Images/Icons-24px-Black-Single.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox ID="txtFamily" placeholder="نام خانوادگی" CssClass="textbox_signup" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" runat="server"></asp:TextBox>
                        <img src="Images/phone-call.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox ID="txtPhone" placeholder="شماره تلفن" CssClass="textbox_signup" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" runat="server"></asp:TextBox>
                        <img src="Images/pin.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox ID="txtAddress" placeholder="آدرس" CssClass="textbox_signup" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" TextMode="MultiLine" runat="server"></asp:TextBox>

                    </div>
                    <div class="col-lg-4 text-center ">
                        <img src="Images/woman.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:DropDownList ID="ddlGender" CssClass="textbox_signup" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" runat="server">
                            <asp:ListItem>مذکر</asp:ListItem>
                            <asp:ListItem>مونث</asp:ListItem>
                        </asp:DropDownList>

                        <img src="Images/gmail.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox placeholder="ایمیل" CssClass="textbox_signup" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" ID="txtEmail" runat="server"></asp:TextBox>

                        <img src="Images/Icons-24px-Black-Single.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox ID="txtUsername" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" CssClass="textbox_signup" placeholder="نام کاربری" runat="server"></asp:TextBox>
                        <asp:Label runat="server" Text="*" ForeColor="red"></asp:Label>

                        <img src="Images/Icons-24px-Black-Unlocked.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox ID="txtPassword" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" placeholder="پسورد" CssClass="textbox_signup" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label runat="server" Text="*" ForeColor="red"></asp:Label>


                    </div>
                    <div class="col-lg-2  ">
                    </div>
                </div>



                <div class="row ">
                    <div class=" col-lg-2 ">
                    </div>

                    <div class=" col-lg-8 ">
                        <asp:Button ID="btnSubmit" class="btn_signup" runat="server" Text="ثبت نام" OnClick="btnSubmit_Click" />
                    </div>
                    <div class=" col-lg-2 ">
                    </div>
                </div>


            </div>
        </div>
    </form>
</body>
</html>
