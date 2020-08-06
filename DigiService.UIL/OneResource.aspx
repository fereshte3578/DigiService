<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OneResource.aspx.cs" Inherits="DigiService.UIL.OneResource" %>

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
<style>
.dot {
  height: 8px;
  width: 8px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
}
.size{
   width : 100%;
   border-radius : 0px;
   border : none;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <div>
           <div class="container-fluid" dir="rtl">
        
              <asp:HiddenField runat="server" ID="HiddenFieldIdResource" ClientIDMode="Static"/>
               <%  string isGet = HiddenFieldIdResource.Value; %>
               
               
               <%for (int m = 0; m < 4; m++)
                   { %>
               <% int Idget = int.Parse(isGet.ToString()); %>
                  
               <% int IdR = MultyResoure[m].id; %>


               
               <% if (IdR == Idget)
                   { %>
              
               <% string NameDivice = MultyResoure[m].NameDivice; %>
               <% int HeadName = int.Parse(MultyResoure[m].HeadName.ToString()); %>
               <% string Cost = MultyResoure[m].Cost; %>
               <% string CostTeacher = MultyResoure[m].CostTeacher; %>
               <% string CostOtherTeacher = MultyResoure[m].CostOtherTeacher; %>
               <% string descrip = MultyResoure[m].descrip; %>
               <% string TypeHour = MultyResoure[m].TypeHour; %>
               <% string PresentHour = MultyResoure[m].PresentHour; %>

               <% for (int n = 0; n < 3; n++)
                   {%>
               <% int HeadNameId = headNameResources[n].ResourceHeadNameId; %>
               <%if (HeadNameId == HeadName)
                   { %>
               <% string FullName = headNameResources[n].Fullname; %>
               <% string TellPhone = headNameResources[n].TellePhone; %>
               <% string Email = headNameResources[n].Email; %>
                <div class="row" dir="rtl" style="padding-left : 2%;padding-right : 2% ;padding-top : 1%;">
                <div class="col-sm-3">
                    <p style="color:darkslategrey ; font-size : 15px;" dir="rtl"> آزمایشگاه خواص مکانیکی _ گروه مهندسی مواد </p>
                </div>
                <div class="col-sm-6">
                    
                </div>
                <div class="col-sm-3">
                    <button type="button" style="background-color :#eb4d4b;color:white;border-radius : 90px;border :none;padding-top:1%;font-size :15px;" class="btn" data-toggle="modal" data-target="#myHead" > مسؤل:<% = FullName %></button>
                </div>
            </div>
               <div class="modal fade" id="myHead" role="dialog" style="padding-top : 13%;">
                           <div class="modal-dialog modal-md">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body" dir="rtl" >

                                        <table style="width : 100%;border  :dashed 1px solid; ">
                                            <tr>
                                                <td >
                                                   <img style="padding : 1px ; border : solid;border-color : #bdc3c7;width:30%;height : 40%;" class="mySlides w3-animate-fading" src="Images\2019917-105721-scan0010.jpg" /> 
                                                </td>
                                            </tr>
                                            <tr style="background-color : #d2dae2;">
                                                <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;">
                                                    نام و نام خانوادگی :
                                                </td>
                                                <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;">
                                                    <%  = FullName %>
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
                       </div>
            <hr />
               <div class="row" dir="rtl">
                   <div class="col-12 col-sm-5 col-md-5 col-xl-5" dir="rtl">
                       <img src="Images\1-29-R2124168.png " style="width:65%;height : 85%; float : right;"  />
                   </div>
                   <div class="col-12 col-sm-7 col-md-7 col-xl-7">
                       <div class="row" dir="rtl" >
                           <div class="col-12 col-sm-2 col-md-2 col-lg-2 col-xl-2">
                               <p style="float:right;color:black ; font-size : 15px;" dir="rtl"> <% = NameDivice %></p>
                            </div>
                       </div>
                       <hr />
                       <div class="row" dir="rtl">
                           <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                               <p style="float:right;font-size : 15px;color :darkslategrey;">دسته بندی : </p>
                               <a href="ShowTwoParts.aspx" style="float:right;"><p style="color:darkslategrey ; font-size : 15px; padding-right :0px;" dir="rtl"> آزمایشگاه خواص مکانیکی _ گروه مهندسی مواد </p></a>
                           </div>
                           <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">

                           </div>
                           <div class="col-sm-3 col-md-3 col-xl-3 col-lg-3 col-12">
                               <button type="button" style="background-color :#ff7979;color:white;border-radius : 5px;border :none;font-size :15px;" class="btn" data-toggle="modal" data-target="#myTime" >زمان بندی</button>
                           </div>
                       </div>
                       
                       <div class="modal fade" id="myTime" role="dialog" style="padding-top : 8%;">
                           <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body" >
                                        <div class="row">
                                            <p style="color : black;font-weight:bolder;float:right;padding-right : 3%">روزهای فعال بودن این دستگاه : </p>
                                        </div>
                                        <table style="width : 100%;border  : 1px solid;border-color : #ecf0f1;">
                                            <tr style="border : 1px solid;border-color : #ecf0f1;">
                                                <td style="width:9%;font-size:10px;float :right;color : black;margin-left : 1% ">
                                                    روز/ساعت
                                                </td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">7</td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">8</td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">9</td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">10</td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">11</td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">12</td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">13</td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">14</td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">15</td>
                                                <td style="padding-left : 3%;border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;">16</td>
                                            </tr>
                                        <% for (int t = 0; t < 12; t++)
                                        { %>

                                        <% int IdTime = timeReSources[t].id; %>
                                        <% int TimeIdRESOURCE = timeReSources[t].ReSourceId; %>
                                        <% if (TimeIdRESOURCE == IdR)
                                        { %>
                                        <% string TimeWichday = timeReSources[t].wichday; %>
                                        <% int TimeStartHour = int.Parse(timeReSources[t].StartHour);%>
                                        <% int TimeFinishHour =int.Parse( timeReSources[t].FinishHour); %>
                                            <tr style="border : 1px solid;border-color : #ecf0f1;">
                                                
                                                <td style="width:9%;font-size:15px;font-weight : bold;float :right;color : black ;padding-left :3%;margin-left : 1% ">
                                                    <% = TimeWichday %>
                                                </td>

                                                <% for(int h = 7; h <=16; h++){ %>
                                                    <% if (TimeStartHour <= h && TimeFinishHour >= h)
                                                             {  %>
                                               
                                                    <% string hour = h.ToString() ; %>
                                                <% if (TimeWichday == "شنبه")
                                                    { %>
                                                    <% string idbtnadd = TimeWichday+ " "+hour; %>
                                                
                                                        <td style="border : 1px solid;border-color : #ecf0f1;height : 25px;width : 9%;float :right;color : black;font-weight :bold;color:black ;">
                                                          <a href="request.aspx?idr = <% =idbtnadd  %>"> k</a>
                                                            
                                                        </td>
                                                <% } %>
                                                        <%} %>

                                                        <% else
                                                             { %>
                                                            <td style="border : 1px solid;border-color : #ecf0f1;width : 9%;height : 25px;float :right;color : black;font-weight :bold;color:black;background-color : #636e72">
                                                          
                                                            </td>
                                                            <%} %>
                                                
                                                <% } %>
                                            </tr>

                                        <%} %>

                                        <%} %>
                                       </table>

                                    </div>

                                 </div>
                            </div>
                       </div>
                        <br />
                       <br />

                          <div class="row" dir="rtl">
                              <div class="col-12 col-sm-2 col-md-2 col-lg-2 col-xl-2">
                                  <p style="float: right;font-size : 15px;color :darkslategrey;"> ویژگی ها :  </p>
                               </div>
                          </div>
                               
                         <div class="row" dir="rtl">
                              <p style="color : lightslategrey; font-size : 12px;padding-right : 2%;"> <span class="dot"></span>  دوره استفاده : <p style="color :#485460; font-size : 12px;padding-right : 0px;font-weight:bold;"><% = TypeHour %></p> </p>
                       </div>
                       <br />
                       <br />
                       <div class="row" dir="rtl">
                           <div class="col-12 col-sm-2 col-md-2 col-lg-2 col-xl-2">
                                <p style="float : right;padding-right : 10%;padding-top : 2%;font-size : 15px;color :darkslategrey;">   هزینه ها :  </p>
                            </div>
                       </div>
                       <br />
                       <div class="row" dir="rtl" style="padding-right : 0%;">
                           <table style="width : 90%;border:solid;border-color : #95a5a6;">
                                            <tr style="background-color : #d2dae2;">
                                                <td style="width : 30%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;">
                                                    عنوان
                                                </td>
                                                <td style="width : 30%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;">
                                                    هزینه
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;">
                                                    هزینه برای دانشجویان فنی و مهندسی 
                                                </td>
                                                <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;">
                                                    <% = Cost %>(ریال)
                                                </td>
                                            </tr>
                                            <tr style="background-color : #d2dae2;">
                                                <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;">
                                                   هزینه برای اساتید فنی و مهندسی
                                                </td>
                                                <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;">
                                                    <% = CostTeacher %>(ریال)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width : 40%;float :right;color : black;font-weight :bold; padding-bottom : 1%;padding-top : 1%;">
                                                   هزینه برای اساتید دانشگاه های دیگر
                                                </td>
                                                <td style="width : 20%;float :right;color : #4b4b4b;font-weight :bold;padding-bottom : 1%;padding-top : 1%;">
                                                    <% = CostOtherTeacher %>(ریال)
                                                </td>
                                            </tr>
                                        </table>
                           <br />
                       </div>
                        </div>
                   </div>
               <br />
               <br />
               <div class="row" dir="rtl">
                       <p style="padding-right : 10%;padding-top : 2%;font-size : 15px;color :darkslategrey;">مشخصات : </p>
               </div>
               <hr />
               <div class="row" dir="rtl">
                   <p style="padding-right : 10%;padding-top : 2%;padding-bottom : 0px;color : #596275; font-weight : bold;font-size : 15px;"><% = descrip %> </p>
               </div>

               <div class="row" dir="rtl" style="padding : 0px;">
                   <p style="padding-right : 10%;padding-top : 2%;color : #596275; font-weight : bold;font-size : 15px;"><% = descrip %> </p>
               </div>
               <%} %>
               <%} %>
              <%} %>
           
               <%} %>


            </div>
            
        </div>
    </form>
</body>
</html>
