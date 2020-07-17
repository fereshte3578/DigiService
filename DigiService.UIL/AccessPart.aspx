<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessPart.aspx.cs" Inherits="DigiService.UIL.AccessPart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <meta charset="UTF-8">
         <title>Bootstrap Example</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
          integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid" style="padding-right:2%;padding-left:2%;" dir="rtl">
            <% for (int i = 0; i < 3; i++)
            { %>
            <% int IdHeadName = headNameResources[i].id; %>
            <% int ResourceId = headNameResources[i].ResourceHeadNameId; %>
            <% string Address = headNameResources[i].Address; %>
            <% string Email = headNameResources[i].Email; %>
            <% string Fullname = headNameResources[i].Fullname; %>
            <% string TellPhone = headNameResources[i].TellePhone; %>
            <% if (ResourceId == 1)
                     {%>
            <table style="width : 100%;border :solid;border-color : #ff5e57;">
                    <tr style="direction :rtl ">
                        <td style ="border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #ff5e57;">نام دستگاه </td>
                        <td style ="border :solid;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #ff5e57;">زمان دستگاه</td>
                        <td style ="border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #ff5e57;">نام درخواست دهنده</td>
                        <td style ="border :solid;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #ff5e57;">روز درخواست دستگاه</td>
                        <td style ="border :solid;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 2%;">زمان درخواست</td>
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
            <% for (int a = 0; a <= 3; a++)
                { %>
            <% int IdRequest = requests[a].id; %>
            <% int resourceId = requests[a].ResourceId; %>
            <% int UserId = requests[a].UserId; %>
            <% string DayReception = requests[a].DayReception; %>
            <% string StartHour = requests[a].StartHour; %>
            <% string FinishHour = requests[a].Finishhour; %>
                <% if ( IdResource == resourceId ) {%>
           <tr style="direction :rtl ">
                        <td style ="width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%" dir="rtl"><% = NameDivice %></td>
                        <td style ="width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%" dir="rtl"><% = PresentHour %></td>
                        <td style ="width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%" dir="rtl"><% =UserId %></td>
                        <td style ="width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%" dir="rtl"> <% = DayReception %></td>
                        <td style ="width : 20%; padding-bottom : 1%;padding-top : 1%;padding-left : 2%" dir="rtl"> <% = StartHour %> to <% = FinishHour %> </td>
           </tr>
            <% } %>
            <%} %>
            <% } %>
            <%} %>
            </table>
            <%} %>
            <% } %>
            </div>
        </div>
    </form>
</body>
</html>
