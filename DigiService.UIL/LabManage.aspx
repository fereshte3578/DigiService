<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabManage.aspx.cs" Inherits="DigiService.UIL.ManageLab" %>

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
<div style="background-color : #192a56;" class="topnav" dir="rtl">
    <div class="row ">
        <div class="col-lg-1 col-md-2 col-6  col-sm-6" dir="rtl">
            <a href="#myRequest" id="button1" style="color : white;">درخواست ها  </a>
         </div>
     </div>
</div>
    <form id="form1" runat="server">
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <% int IdArea = int.Parse( HiddenField1.Value) ; %>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div id="myRequest">
        <div style="padding-right: 2%;padding-left : 2%;padding-top : 10%;padding-bottom : 25%;" dir="rtl">
            <% for (int a = 0; a <= 2; a++)
                { %>
            <% int idArea = areas[a].id; %>
            <% int DepartmentId = areas[a].DepartmentId; %>
            <% string title = areas[a].title; %>
            <% string IsActiveed = areas[a].IsActiveed; %>
            <% int CollegId = areas[a].CollegId; %>

            <% if (idArea == IdArea)
            {%>

            <table style="width : 100%;border :solid;border-color : #130f40;box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);" dir="rtl">
                <tr style="direction :rtl " >
                    <td style="font-weight : bold;color : #3867d6;border :solid;width : 20%; padding-bottom : 1%;padding-top : 1%;padding-left : 10%;;border-color : #130f40;" dir="rtl"> آزمایشگاه </td>
                    <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">مدیرآزمایشگاه</td>
                    <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">نام دستگاه</td>
                    <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;"> نام مدیر دستگاه </td>
                    <td style ="font-weight : bold;color : #3867d6;border :solid;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">نام درخواست دهنده</td>
                    <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">روز درخواست </td>
                    <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">ساعت درخواست</td>
                </tr>

            
            <% for (int l = 0; l < 3; l++)
              { %>
               <% int AreaId = labManages[l].AreaId; %>
                <% if (AreaId == idArea)
                    { %>
            <% int idLabManage = labManages[l].id; %>
            <% string FullnameManage = labManages[l].FullName; %>
            <% string EmailManage = labManages[l].Email; %>
            <% string AddressManage = labManages[l].Address; %>
            <% string TellPhoneManage = labManages[l].TellPhone; %>

            <%for (int r = 0; r < 4; r++)
                { %>
            <% int AreaIdR = reSources[r].AreaId; %>
            <% if (idArea == AreaIdR)
            { %>
            <% int idResource = reSources[r].id; %>
            <% string NameDivice = reSources[r].NameDivice; %>
            <% int HeadId = int.Parse(reSources[r].HeadName.ToString()); %>
            <% for (int h = 0; h < 3; h++)
            { %>

            <% int IdHead = headNameResources[h].ResourceHeadNameId; %>
            
            <% if (IdHead == HeadId)
            {%>
            <% int idHeadResource = headNameResources[h].id; %>
            <% string FullnameResource = headNameResources[h].Fullname; %>
            <% string AddressResource = headNameResources[h].Address; %>
            <% string TellResource = headNameResources[h].TellePhone; %>
            <% string Email = headNameResources[h].Email; %>

            <% for (int q = 0; q < 4; q++){ %>

            <% int ResourceIdReq = requests[q].ResourceId; %>

            <% if (idResource == ResourceIdReq)
            {%>
                <% int idRequest = requests[q].id; %>
            <% string day = requests[q].DayReception;%>
            <% string stsrtHour = requests[q].StartHour; %>
            <% string Finishhour = requests[q].Finishhour; %>
            <% int UserId = requests[q].UserId; %>

                <tr style="padding-bottom : 5%;padding-top : 5%;">
                    
                    <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> <% = title %> </td>
                    <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"><% = FullnameManage %></td>
                    <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> <% = NameDivice %> </td>
                    <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> <% = FullnameResource %> </td>
                    <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> <% = UserId %> </td>
                    <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> <% = day %> </td>
                    <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"><% = stsrtHour %> _ <% =  Finishhour %></td>
                </tr>

            <%} %>
            <%} %>
            <%} %>
            <%} %>
            <%} %>
            <%} %>
            <%} %>
            <% } %>

            </table>
            <%} %>
            <% } %>  
        </div>
        </div>
    </form>
                <div>
                <img src="Images\500_F_176077267_rJaIz7qH0p2W6h24qOCMRDwXpEQuyTyf (2).jpg" style="width : 100%" />
            </div>
<script type="text/javascript">
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
