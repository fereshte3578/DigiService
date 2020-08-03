<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessPart.aspx.cs" Inherits="DigiService.UIL.AccessPart" %>

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
        <div>
            <div class="container-fluid" dir="rtl">
            <% for (int i = 0; i < 3; i++)
            { %>
            <% int IdHeadName = headNameResources[i].id; %>
            <% int ResourceId = headNameResources[i].ResourceHeadNameId; %>
            <% string Address = headNameResources[i].Address; %>
            <% string Email = headNameResources[i].Email; %>
            <% string Fullname = headNameResources[i].Fullname; %>
            <% string TellPhone = headNameResources[i].TellePhone; %>
      
            <% if (ResourceId == 2)
                     {%>
                <div class="row" style="padding-bottom : 5%;padding-top : 0%;padding-right : 2%;padding-left : 2%;" dir="rtl">
                    <div class="col-12 col-sm-6 col-md-6 col-lg-6" dir="rtl">
               <table style="width : 80%;">
                   <tr> 
                       <td style="color : black;font-weight :bold;font-size:16px; padding-left : 70%;padding-bottom :2%;padding-top : 5%;">
                           اطلاعات مدیر دستگاه : 
                       </td>
                   </tr>
                  <tr style="background-color : #d2dae2; direction:rtl;">
                     <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;direction : rtl;padding-left : 5%">
                              نام و نام خانوادگی :
                    </td>
                    <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;direction : rtl;padding-left : 5%">
                                  <%  = Fullname %>
                     </td>
                     </tr>
                     <tr style=" direction:rtl;">
                        <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;direction : rtl;padding-left : 9%;">
                                    شماره تلفن : 
                       </td>
                       <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;direction : rtl;padding-left : 4%">
                                <% = TellPhone %>
                       </td>
                    </tr>
                    <tr style="background-color : #d2dae2; direction:rtl;">
                       <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;direction : rtl;padding-left : 13%">
                                 ایمیل : 
                       </td>
                       <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;direction : rtl;">
                               <% = Email %>
                        </td>
                    </tr>
            </table>
                        </div>
                    </div>
            <table style="width : 80%;border :solid;border-color : #130f40;box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
                    <tr style="direction :rtl ">
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">نام دستگاه </td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border-color : #130f40;">زمان دستگاه</td>
                        <td style ="font-weight : bold;color : #3867d6;border :solid;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 3%;border-color : #130f40;">نام درخواست دهنده</td>
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
            <% for (int a = 0; a <= 3; a++)
                { %>
            <% int IdRequest = requests[a].id; %>
            <% int resourceId = requests[a].ResourceId; %>
            <% int UserId = requests[a].UserId; %>
            <% string DayReception = requests[a].DayReception; %>
            <% string StartHour = requests[a].StartHour; %>
            <% string FinishHour = requests[a].Finishhour; %>
                <% int STATUS = requests[a].Status; %>
                
                <% if ( IdResource == resourceId ) {%>
           <tr style="direction :rtl ">
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"><% = NameDivice %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"><% = PresentHour %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"><% =UserId %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 10%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> <% = DayReception %></td>
                        <td style ="font-weight : bold;color : #40407a;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> <% = StartHour %> _ <% = FinishHour %> </td>
                        <td style ="font-weight : bold;color : #40407a;width : 15%; padding-bottom : 1%;padding-top : 1%;padding-left : 5%;border :solid;border-color : #130f40;" dir="rtl"> 
                            <% if (STATUS == 0)
                               {%>
                            <asp:Button ID="Button_reception" runat="server" Text="OK" BackColor="#33d9b2" BorderStyle="None" ForeColor="White"></asp:Button>
                            <%} %>
                            <% if (STATUS == 1)
                                { %>
                            <asp:Button ID="Button1" runat="server" Text="X" BackColor="#ff5252" BorderStyle="None" ForeColor="White"></asp:Button>
                            <% } %>
                        </td>
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
