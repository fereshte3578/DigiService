<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="DigiService.UIL.Profile" %>

<%@ Register Src="~/UserControls/UserControlsignup_header.ascx" TagPrefix="header" TagName="UserControlsignup_header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>profile</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" href="Styles/bootstrap.css" />
    <link rel="stylesheet" href="Styles/Style.css" />
    <link rel="stylesheet" href="Scripts/jquery-3.4.1.js" />
    <link rel="stylesheet" href="Scripts/bootstrap.min.js" />
</head>
<body>
    <header:UserControlsignup_header runat="server" ID="header" />

    <form id="form1" runat="server">
       
                <div>
                    <div class="row" align="center">
                        <div class="col-1 col-lg-1"></div>
                        <div class="col-10 col-lg-10">
                            <asp:HiddenField runat="server" ID="hfUserID_prof" />
                            <div class="card">
                                <table class="tbl_profile">
                                    <tr>
                                        <td colspan="2" align="center">
                                            <img src="Images/download.png" class="img-profile" width="130px" height="130px" />
                                            <center>
                                <h4>پروفایل شما</h4>
                                <span>وضعیت اکانت -</span>
                                <asp:Button ID="Button2" CssClass="accont_active" runat="server" Text="آنلاین"></asp:Button>
                            </center>
                                        </td>


                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <hr />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="نام:"></asp:Label>
                                            <asp:TextBox class="textbox-profile" placeholder="نام" ID="txtName" runat="server"></asp:TextBox>

                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="نام خانوادگی:"></asp:Label>
                                            <asp:TextBox class="textbox-profile" placeholder="نام خانوادگی" ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="جنسیت:"></asp:Label>
                                            <asp:DropDownList class="textbox-profile" ID="ddlGender" runat="server">
                                                <asp:ListItem>مذکر</asp:ListItem>
                                                <asp:ListItem>مونث</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="ایمیل:"></asp:Label>
                                            <asp:TextBox placeholder="ایمیل" class="textbox-profile" ID="txtEmail" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="Label5" runat="server" Text="آدرس:"></asp:Label>
                                            <asp:TextBox ID="txtAddress" placeholder="آدرس" class="textbox-profile" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="نام کاربری:"></asp:Label>
                                            <asp:TextBox placeholder="نام کاربری" class="textbox-profile" ID="TextBox2" runat="server"></asp:TextBox></td>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="پسورد:"></asp:Label>
                                            <asp:TextBox placeholder="پسورد" class="textbox-profile" ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="تلفن:"></asp:Label>
                                            <asp:TextBox placeholder="تلفن" class="textbox-profile" ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button ID="Button1" class="btn-profile" runat="server" OnClick="btn_update_profile" Text="بروز رسانی اطلاعات شما" /></td>

                                    </tr>

                                </table>
                            </div>
                            <br />
                            <br />
                            <br />

                        </div>
                        <div class="col-1 col-lg-1"></div>
                    </div>


                </div>
          
    </form>

</body>
</html>
