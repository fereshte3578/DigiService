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
                        <asp:TextBox CssClass="textbox_signup" onkeyup="myfirstname(this)" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" placeholder="نام" ID="txtName" runat="server"></asp:TextBox>
                        <br />
                        <div id="firstname_doctor1"></div>
                        <img src="Images/Icons-24px-Black-Single.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox ID="txtFamily" onkeyup="myfamilyname(this);" placeholder="نام خانوادگی" CssClass="textbox_signup" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" runat="server"></asp:TextBox>

                        <div id="familyname_doctor1"></div>
                        <img src="Images/phone-call.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox ID="txtPhone" onkeyup="mynumberdocter(this);" placeholder="شماره تلفن" CssClass="textbox_signup" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" runat="server"></asp:TextBox>
                        <br />
                        <div id="number_doctor1"></div>
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
                        <asp:TextBox ID="txtUsername" onkeyup="usernameprof(this);" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" CssClass="textbox_signup" placeholder="نام کاربری" runat="server"></asp:TextBox>
                        <asp:Label runat="server" Text="*" ForeColor="red"></asp:Label>
                        <br />
                        <div id="profuser"></div>
                        <img src="Images/Icons-24px-Black-Unlocked.svg" class="imag_signup" style="width: 25px; height: 25px;" />
                        <asp:TextBox ID="txtPassword" onkeyup="passwordprof(this);" Style="width: 90%; border-radius: 50px; height: 48px; border: solid 3px; border-color: #172b4d" placeholder="پسورد را با sشروع کنید..." CssClass="textbox_signup" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label runat="server" Text="*" ForeColor="red"></asp:Label>
                        <br />
                        <div id="profpassword"></div>

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
