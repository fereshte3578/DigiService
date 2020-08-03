<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessLabFani.aspx.cs" Inherits="DigiService.UIL.AccessLabFani" %>

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

            <%for (int i = 0; i <= 1; i++)
            { %>
            <% int IdDepartment = department[i].id; %>
            <% string TitleDepartment = department[i].title; %>
            <% if (IdDepartment == 1 )
            { %>
                <div class="row">
                    <div class="col-sm-12 col-md-2 col-lg-2">
                        <p style="font-size : 15px;font-weight : bold;padding-top : 5%;"> <% = TitleDepartment %> </p>
                    </div>
                </div>
                <hr />
                 <table style="width : 100%;border :solid;border-color : #130f40;box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
                    <tr style="direction :rtl ">
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">دانشکده</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">اسم آزمایشگاه</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">نام دستگاه </td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">زمان دستگاه</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">نام مسول دستگاه</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">نام درخواست دهنده</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">روز درخواست </td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">زمان درخواست</td>
                    </tr>

            <% for (int j = 0; j < 4; j++)
            { %>
            <% int IdArea = areas[j].id; %>
            <% int DepartmentId = areas[j].DepartmentId; %>
            <% string titleArea = areas[j].title; %>
            <% string IsActiveArea = areas[j].IsActiveed; %>
            <% int CollegId = areas[j].CollegId; %>
            <% if (IdArea == (j + 1) && DepartmentId == ( i + 1) )
                { %>
                     <% for (int c = 0; c < 1; c++)
                               { %>
                     <% int IdCollege = colleges[c].id; %>
                <% if (CollegId == ( c + 1) )
                               { %>
                      <% string TitleCollege = colleges[c].title; %>
            <% for (int s = 0; s <= 3; s++)
                               {%>
            <% int IdResource = reSources[s].id; %>
            <% int AreaId = reSources[s].AreaId; %>
            <% string NameDivice = reSources[s].NameDivice; %>
            <% int HeadNameId = int.Parse(reSources[s].HeadName.ToString()); %>
            <% string PresentHour = reSources[s].PresentHour;%>

            <%if (IdResource == (s + 1) && AreaId == (j + 1))
                               { %>
            <% for (int a = 0; a <= 3; a++)
                               { %>
            <% int IdRequest = requests[a].id; %>
            <% int ResourceId = requests[a].ResourceId; %>
            <% int UserId = requests[a].UserId; %>
            <% string DayReception = requests[a].DayReception; %>
            <% string StartHour = requests[a].StartHour; %>
            <% string FinishHour = requests[a].Finishhour; %>
                     <%if (IdResource == ResourceId)
                               {%>
                     <% for (int l = 0; l <= 2; l++)
                               { %>

                     <% int IdHead = headNameResources[l].ResourceHeadNameId; %>

                    <% if (HeadNameId == IdHead)
                               {%>

                     <% string NameHead = headNameResources[l].Fullname; %>

                     <tr style="direction :rtl ">
                         <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl" dir="rtl"><% = TitleCollege %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl" dir="rtl"><% = titleArea %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl" dir="rtl"><% = NameDivice %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl" dir="rtl"><% = PresentHour %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl" dir="rtl"><% = NameHead %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl" dir="rtl"><% =UserId %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl" dir="rtl"> <% = DayReception %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl" dir="rtl"> <% = StartHour %> _ <% = FinishHour %> </td>
                    </tr>
                     <%} %>
                     <% } %>
                     <% } %>
              
            <%} %>

            <%} %>
            <% } %>
                     <%} %>
                     <%} %>
            <% } %>
            <% } %>
            </table>
            <% } %>
            <%} %>
            </div>
        </div>
    </form>
</body>
</html>
