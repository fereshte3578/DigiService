<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DigiService.UIL.Login" %>
<%@ Register Src="~/UserControls/UserControlsignup_header.ascx" TagPrefix="header" TagName="UserControlsignup_header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="fa">
<head runat="server">
    <title>login</title>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" href="Styles/bootstrap.css" />
    <link rel="stylesheet" href="Styles/Style.css" />
    <link rel="stylesheet" href="Scripts/jquery-3.4.1.js" />
    <link rel="stylesheet" href="Scripts/bootstrap.min.js" />
</head>
<body dir="rtl">
    <header:UserControlsignup_header runat="server" id="header"/>
    
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <div class="row">

    <div class="col-12 text-center"><h4 class="text-login-seller">ورودکاربر</h4></div>
  
</div>
            <br />
            <br />
            <br />
            <div class="row " align="center" >
                <div class="col-3 col-lg3"></div>
                <div class="col-6 col-lg-6 ">
                     <asp:HiddenField runat="server"  ID="hfUserID"/>
                    <asp:HiddenField runat="server"  ID="namehide"/>
                    <asp:HiddenField runat="server"  ID="familyhide"/>
                    <asp:HiddenField runat="server"  ID="phonehide"/>
                    <asp:HiddenField runat="server"  ID="emailhise"/>
                    <asp:HiddenField runat="server"  ID="addresshide"/>
                    <asp:HiddenField runat="server"  ID="genderhide"/>
                     <table class="table_signup">
                         <tr>
               
         
                    <td>
                        <img src="Images/Icons-24px-Black-Single.svg" class="imag_signup"  width="45px" height="45px"/>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtuname" style="width:350px ;border-radius:50px;height:48px;border:solid 3px; border-color:#172b4d" CssClass="textbox_signup"  placeholder="نام کاربری" runat="server"></asp:TextBox>
                        <asp:Label  runat="server" Text="*" ForeColor="red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="Images/Icons-24px-Black-Unlocked.svg" class="imag_signup"  width="45px" height="45px"/>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtpassword" style="width:350px ;border-radius:50px;height:48px;border:solid 3px; border-color:#172b4d" placeholder="پسورد" CssClass="textbox_signup"  runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label  runat="server" Text="*" ForeColor="red"></asp:Label>
                    </td>
                </tr>
                 
               
                <tr>
                    <td></td>
                    <td colspan="3">
                        <asp:Button ID="btnlogin" onclick="btn1_click" class="btn_signup" runat="server" Text="ورود"  />
                    </td>
                </tr>
                 
            </table>

                    <div class="col-3 col-lg3"></div>
                </div>
            </div>
           
             <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
