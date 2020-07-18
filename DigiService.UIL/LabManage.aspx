<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabManage.aspx.cs" Inherits="DigiService.UIL.ManageLab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <% for (int a = 0; a <= 2; a++)
                { %>
            <% int idArea = areas[a].id; %>
            <% int DepartmentId = areas[a].DepartmentId; %>
            <% string title = areas[a].title; %>
            <% string IsActiveed = areas[a].IsActiveed; %>
            <% int CollegId = areas[a].CollegId; %>

            <% if (idArea == 1)
            {%>

            <table style="width : 100% ;border : solid;border-color : darkcyan" dir="rtl">
                <tr>
                    <td style="padding-bottom : 1%;padding-top : 1%;padding-right : 1%">دانشکده </td>
                    <td > آزمایشگاه </td>
                    <td>مدیرآزمایشگاه</td>
                    <td>نام دستگاه</td>
                    <td> نام مدیر دستگاه </td>
                    <td>نام درخواست دهنده</td>
                    <td>روز درخواست </td>
                    <td>ساعت درخواست</td>
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
                    <td style="padding-bottom : 1%;padding-top : 1%;padding-right : 1%">فنی و مهندسی </td>
                    <td> <% = title %> </td>
                    <td><% = FullnameManage %></td>
                    <td> <% = NameDivice %> </td>
                    <td> <% = FullnameResource %> </td>
                    <td> <% = UserId %> </td>
                    <td> <% = day %> </td>
                    <td><% = stsrtHour %> to <% =  Finishhour %></td>
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
