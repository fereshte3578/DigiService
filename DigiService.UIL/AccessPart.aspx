<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessPart.aspx.cs" Inherits="DigiService.UIL.AccessPart" %>
<%@ Register Src="~/UserControls/UserControl_Header.ascx" TagPrefix="Header" TagName="UserControl_Header" %>
<%@ Register Src="~/UserControls/UserControl_Footer.ascx" TagPrefix="footer" TagName="UserControl_Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>index</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" href="Styles/bootstrap.css" />
    <link rel="stylesheet" href="Styles/Style.css" />
    <link rel="stylesheet" href="Scripts/jquery-3.4.1.js" />
    <link rel="stylesheet" href="Scripts/bootstrap.min.js" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
    

<body>
    <style>
@media screen and (min-width: 750px) {
  .manage {
    padding-right : 25%;
  }
}
    </style>
<div style="background-color : #192a56;" class="topnav" dir="rtl">
    <div class="row ">
         <div class="col-lg-1 col-md-2 col-6 col-sm-6" dir="rtl">
            <a href="#myManage" id="button" style="color : white;">مدیر دستگاه </a>
         </div>
        <div class="col-lg-1 col-md-2 col-6  col-sm-6" dir="rtl">
            <a href="#myRequest" id="button1" style="color : white;">درخواست ها  </a>
         </div>
     </div>
 </div>
    <form id="form1" runat="server">
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <% int idHeadname =int.Parse( HiddenField1.Value); %>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

            <div style="width : 100%" class="container-fluid" dir="rtl">
            <% for (int i = 0; i < 3; i++)
            { %>
            <% int IdHeadName = headNameResources[i].id; %>
            <% int ResourceId = headNameResources[i].ResourceHeadNameId; %>
            <% string Address = headNameResources[i].Address; %>
            <% string Email = headNameResources[i].Email; %>
            <% string Fullname = headNameResources[i].Fullname; %>
            <% string TellPhone = headNameResources[i].TellePhone; %>
      
            <% if (ResourceId == idHeadname)
                     {%>
                <div id="myManage">
            <div style="padding-top : 7%; padding-bottom : 3%;" class="manage">
                 <div class="row" style="padding-bottom : 5%;padding-top : 0%;" dir="rtl">
                    <div class="col-12 col-sm-6 col-md-6 col-lg-6" dir="rtl">
                        <p style="float : right;padding-right : 40%;font-weight:bold;color : #485460">مدیریت دستگاه </p>
                                        <table style="width : 100%;border  :solid; border-color :  #808e9b">
                                            <tr>

                                                <td >
                                                   <img style="padding : 1% ; border : solid;border-color : #bdc3c7;width:35%;height : 50%;" class="mySlides " src="Images\2019917-105721-scan0010.jpg" /> 
                                                </td>

                                            </tr>
                                            <tr style="background-color : #d2dae2;">
                                                <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1% ;">
                                                    نام و نام خانوادگی :
                                                </td>
                                                <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;">
                                                    <%  = Fullname %>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;">
                                                    شماره تلفن : 
                                                </td>
                                                <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;">
                                                    <% = TellPhone %>
                                                </td>
                                            </tr>
                                            <tr style="background-color : #d2dae2;">
                                                <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;">
                                                    ایمیل : 
                                                </td>
                                                <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;">
                                                    <% = Email %>
                                                </td>
                                            </tr>
                                        </table>
                        </div>
                  </div>
            </div>
                    <hr style="font-size : 10px;" />
                    </div>
                <div style="width : 100%" id="myRequest">
                <div style="padding-top : 5%; padding-bottom : 12%;padding-right : 12%;">
                    <p style="float : right;padding-right : 40%;font-weight:bold;color : #485460;font-size : 20px;padding-bottom : 5%;">درخواست ها </p>
            <table style="width : 80%;border :solid;border-color : #130f40;box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
                    <tr style="direction :rtl ">
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">کد رزرو  </td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">نام دستگاه </td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">زمان دستگاه</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 3%;border-color : #130f40;">نام کاربر</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">روز درخواست دستگاه</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">زمان درخواست</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">پزیرفتن</td>
                    </tr>
            <% for (int r = 0; r < 4; r++)
                     { %>
            <% int IdResource = reSources[r].id; %>
            <% int AreaId = reSources[r].AreaId; %>
            <% string NameDivice = reSources[r].NameDivice; %>
            <% int HeadNameId = int.Parse(reSources[r].HeadName.ToString()); %>
            <% string PresentHour = reSources[r].PresentHour;%>

            <% if (HeadNameId == ResourceId)
                     { %>
                <asp:HiddenField runat="server" ID="UserID_Request" />
            <% for (int a = 0; a <= 3; a++)
                { %>
                
            <% int IdRequest = requests[a].id; %>
               <% string  idrequest = IdRequest.ToString() ; %>
            <% int resourceId = requests[a].ResourceId; %>
            <% int UserId = requests[a].UserId; %>
            <% string DayReception = requests[a].DayReception; %>
            <% string StartHour = requests[a].StartHour; %>
            <% string FinishHour = requests[a].Finishhour; %>
                <% int STATUS = requests[a].Status; %>
                
                <% if ( IdResource == resourceId ) {%>
                <% for (int u = 0; u < 2; u++)
                          { %>
               <% int IdUser = users[u].id; %>
                <% if (UserId == IdUser)
                         { %>
                <% string nameU = users[u].Name; %>
                <% string FamilyU = users[u].Family; %>

           <tr style="direction :rtl ">
            
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl">
                           <% = IdRequest %>
                            </td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"><% = NameDivice %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"><% = PresentHour %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"><% =UserId %> : <% =nameU %><% = FamilyU %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> <% = DayReception %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> <% = StartHour %> _ <% = FinishHour %> </td>
                        <td style ="font-weight : bold;color : #40407a;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> 
                          <button id="btn_ubdate" onclick="myUpdate()" style="background-color : #3ae374;color : #7bed9f;border : none;">ok</button>
                            <button id="btn_n" onclick="myn()" style="background-color : #ff4757;color : #ff6b81;border : none;">X</button>

                            <script type="text/javascript">
                                function myUpdate() {
                                    document.getElementById("btn_n").style.display = "none"; 
                                }
                                function myn() {
                                    document.getElementById("btn_ubdate").style.display = "none";
                                }
                             </script>
                        </td>
               </tr>
                <%} %>
                <% } %>
            <% } %>
            <%} %>
            <% } %>
            <%} %>
            </table>
                    </div>
            <%} %>
            <% } %>
            </div>
        </div>
            <div>
                <img src="Images\500_F_176077267_rJaIz7qH0p2W6h24qOCMRDwXpEQuyTyf (2).jpg" style="width : 100%" />
            </div>
    </form>
<script type="text/javascript">
    $(document).ready(function () {
        $("#button").click(function (e) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: $($.attr(this, 'href')).offset().top
            }, 500);
        });
    });
    $(document).ready(function () {
        $("#button1").click(function (e) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: $($.attr(this, 'href')).offset().top
            }, 1000);
        });
    });
</script>
</body>
</html>
