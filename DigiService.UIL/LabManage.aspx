<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabManage.aspx.cs" Inherits="DigiService.UIL.ManageLab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="UTF-8">
         <title>Bootstrap Example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous">
    </script>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="style3.css">
    <script src="jQuery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding : 2%;" dir="rtl">
            <% for (int a = 0; a <= 2; a++)
                { %>
            <% int idArea = areas[a].id; %>
            <% int DepartmentId = areas[a].DepartmentId; %>
            <% string title = areas[a].title; %>
            <% string IsActiveed = areas[a].IsActiveed; %>
            <% int CollegId = areas[a].CollegId; %>

            <% if (idArea == 1)
            {%>

            <table style="width : 80%;border :solid;border-color : #130f40;box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);" dir="rtl">
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
    </form>
</body>
</html>
