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
<body dir="rtl">

    <header:UserControlsignup_header runat="server" ID="header" />

    <form id="form1" runat="server">

        <div class="wrapper">
            <div class="sidebar" align="right">
                <div class="sidebar-header">
                    <img class="img-sidbar" src="Images\download.png" />
                    <br />

                    <asp:Label class="text-sidebar-header" ID="Label9" runat="server" Text=" "><p>خوش آمدید</p></asp:Label>
                </div>


                <li>
                    <a href="#">
                        <img src="Images/Component 16 – 1.svg" class="image-sidebar" />پروفایل شخصی</a>
                </li>

                <li>
                    <a href="#">
                        <img src="Images/Component 17 – 1.svg" class="image-sidebar" />دستگاه ها</a>

                </li>
               


            </div>
            <div class="content">
                <div class="nav-seller" align="left">
                    <p align="right">پروفایل شما</p>
                    <asp:Button class="btn-exit-profile" OnClick="btn_exit_profile" Text="خروج" runat="server" />

                </div>
                <div class="row mt-5 mt-5 text-right text-lg-right">
                    <div class="col-12 col-lg-12 col-md-12 col-sm-12" align="center">
                        <div>
                            <div class="row" align="center">
                                <div class="col-1 col-lg-1"></div>
                                <div class="col-10 col-lg-10">
                                    <asp:HiddenField runat="server" ID="hfUserID_prof" />

                                    <div class="card">
                                        <table class="tbl_profile">
                                            <tr>
                                                <td colspan="2" align="center">

                                                    <center>
                                <asp:Label ID="profile_name" runat="server" Text=""></asp:Label>
                                                <br />
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
                                                    <asp:TextBox class="textbox-profile" onkeyup="myfirstname(this)" placeholder="نام" ID="txtName" runat="server"></asp:TextBox>
                                                    <br />
                                                    <div id="firstname_doctor1"></div>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text="نام خانوادگی:"></asp:Label>
                                                    <asp:TextBox class="textbox-profile" onkeyup="myfamilyname(this);" placeholder="نام خانوادگی" ID="TextBox1" runat="server"></asp:TextBox>

                                                    <div id="familyname_doctor1"></div>
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
                                                    <asp:TextBox placeholder="نام کاربری" onkeyup="usernameprof(this);" class="textbox-profile" ID="TextBox2" runat="server"></asp:TextBox>
                                                    <br />
                                                    <div id="profuser"></div>
                                                </td>

                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Text="پسورد:"></asp:Label>
                                                    <asp:TextBox placeholder="پسورد" onkeyup="passwordprof(this);" class="textbox-profile" ID="TextBox3" runat="server"></asp:TextBox>
                                                    <br />
                                                    <div id="profpassword"></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label8" runat="server" Text="تلفن:"></asp:Label>
                                                    <asp:TextBox placeholder="تلفن" onkeyup="mynumberdocter(this);" class="textbox-profile" ID="TextBox4" runat="server"></asp:TextBox>
                                                    <br />
                                                    <div id="number_doctor1"></div>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Button ID="Button1" class="btn-profile" OnClick="btn_update_profile" runat="server" Text="بروز رسانی اطلاعات شما" /></td>
                                                <asp:Label ID="Label10" Style="color: red;" runat="server" Text=""></asp:Label>
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


                    </div>
                </div>
                <div class="row  mt-5">
                    <div class="col-lg-2"></div>

                    <div class=" col-6 col-lg-2 col-md-6 col-sm-6" align="center" style="padding-bottom: 10px">
                    </div>
                    <div class="col-6 col-lg-2 col-md-6 col-sm-6" align="center" style="padding-bottom: 10px">
                    </div>

                    <div class=" col-6 col-lg-2 col-md-6 col-sm-6" align="center" style="padding-bottom: 10px">
                    </div>

                    <div class="col-6 col-lg-2 col-md-6 col-sm-6" align="center" style="padding-bottom: 10px">
                    </div>
                    <div class="col-lg-2"></div>
                </div>


                <div class="row" align="left">
                    <div class="col-12">
                        <footer class="footer-profile">

                            <a href="#">
                                <img src="Images/Het1PX.tif.svg" class="image-footer-profile-icon" /></a>
                            <a href="#">
                                <img src="Images/34hbmL.tif.svg" class="image-footer-profile-icon" /></a>
                            <a href="#">
                                <img src="Images/Component-1.svg" class="image-footer-profile-icon" /></a>
                            <a href="#">
                                <img src="Images/Component.svg" class="image-footer-profile-icon" /></a>


                        </footer>
                    </div>
                </div>
            </div>

        </div>
    </form>
     <script type="text/javascript">
        function myfirstname(inputfirstname) {
            if (inputfirstname.value.trim().match(/^[\u0600-\u06FF\s]+$/)) {
                document.getElementById("firstname_doctor1").innerHTML = " ";
            } else {
                document.getElementById("firstname_doctor1").innerHTML = "نام معتبر نیست.";
                document.getElementById("firstname_doctor1").style.color = " red ";
            }
        }
        function myfamilyname(iputlastname) {
            if (iputlastname.value.trim().match(/^[\u0600-\u06FF\s]+$/)) {
                document.getElementById("familyname_doctor1").innerHTML = " ";
            } else {
                document.getElementById("familyname_doctor1").innerHTML = "نام خانوادگی معتبر نیست";
                document.getElementById("familyname_doctor1").style.color = "red";
            }
        }
        function mynumberdocter(inputnumberdoctor) {
            if (inputnumberdoctor.value.match(/^(\+989|9|09)\d{9}$/)) {
                document.getElementById("number_doctor1").innerHTML = " ";
            } else {
                document.getElementById("number_doctor1").innerHTML = "شماره تلفن نیست.";
                document.getElementById("number_doctor1").style.color = "red";
            }
        }
        function usernameprof(inputnumberdoctor) {

            if (inputnumberdoctor.value.match(/^[\u0600-\u06FF\s]+$/)) {

                document.getElementById("profuser").innerHTML = "نام کاربری معتبر نیست.";
                document.getElementById("profuser").style.color = "red";


            } else {

                document.getElementById("profuser").innerHTML = " ";
            }
        }
        function passwordprof(inputnumberdoctor) {
            if (inputnumberdoctor.value.match(/^s.{4}$/)) {
                document.getElementById("profpassword").innerHTML = " ";
            } else {
                document.getElementById("profpassword").innerHTML = "پسورد با sشروع شود و 4کاراکتر باشد .";
                document.getElementById("profpassword").style.color = "red";
            }
        }

    </script>
</body>
</html>
