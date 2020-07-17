<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OneResource.aspx.cs" Inherits="DigiService.UIL.OneResource" %>

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
           <div class="container-fluid" style="padding-right:2%;padding-left:2%;">
        
               <%for (int m = 0; m < 3; m++)
                   { %>
               <% int IsGet = 3; %>
                  
               <% int IdR = MultyResoure[m].id; %>


               <% if (IdR == IsGet)
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
                    <button type="button" style="background-color :#eb4d4b;color:white;border-radius : 5px;border :none;font-size :15px;" class="btn" data-toggle="modal" data-target="#myHead" > مسؤل:<% = FullName %></button>
                </div>
            </div>
               <div class="modal fade" id="myHead" role="dialog">
                           <div class="modal-dialog modal-md">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body" dir="rtl" >

                                        <table style="width : 100%;">
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
                   <div class="col-12 col-sm-4 col-md-4 col-xl-4">
                       <p>place image</p>
                   </div>
                   <div class="col-12 col-sm-8 col-md-8 col-xl-8">
                       <div class="row" dir="rtl" >
                           <div class="col-12 col-sm-2 ccl-md-2 col-lg-2 col-xl-2">
                               <p style="color:black ; font-size : 15px;" dir="rtl"> <% = NameDivice %></p>
                           </div>
                       </div>
                       <hr />
                       <div class="row" dir="rtl">
                           <div class="col-12 col-sm-2 col-md-2 col-lg-2 col-xl-2">
                               <p style="font-size : 15px;color :darkslategrey;">دسته بندی : </p>
                           </div>
                           <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12" style="padding-right :0px;">
                               <a href="ShowTwoParts.aspx"><p style="color:darkslategrey ; font-size : 15px; padding-right :0px;" dir="rtl"> آزمایشگاه خواص مکانیکی _ گروه مهندسی مواد </p></a>
                           </div>
                           <div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">

                           </div>
                           <div class="col-sm-3 col-md-3 col-xl-3 col-lg-3 col-12">
                               <button type="button" style="background-color :#ff7979;color:white;border-radius : 5px;border :none;font-size :15px;" class="btn" data-toggle="modal" data-target="#myTime" >زمان بندی</button>
                           </div>
                       </div>
                       
                       <div class="modal fade" id="myTime" role="dialog">
                           <div class="modal-dialog modal-md">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body" >
                                        <div class="row">
                                            <p style="color : black;font-weight:bolder;float:right;padding-right : 3%">روزهای فعال بودن این دستگاه : </p>
                                        </div>
                                        <div class="row">
                                            <p style="padding-right : 3%;color : #ff5252;font-weight :bold;float:right;"> <% = PresentHour %> </p>
                                        </div>
                                       
                                    </div>

                                 </div>
                            </div>
                       </div>
                           
                          <div class="row" dir="rtl">
                              <div class="col-12 col-sm-2 col-md-2 col-xl-2 col-lg-2">
                                  <p style="font-size : 15px;color :darkslategrey;"> ویژگی ها :  </p>
                              </div>
                          </div>
                               
                         <div class="row" dir="rtl">  
                           <div class="col-12 col-sm-1 col-md-2 col-xl-2 col-lg-2">
                              <p style="color : lightslategrey; font-size : 12px;"> دوره استفاده : </p>
                           </div>
                             <div class="col-12 col-sm-2 col-md-2 col-xl-2 col-lg-2">
                              <p style="color :#485460; font-size : 12px;font-weight:bold;"><% = TypeHour %></p>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-12 col-sm-2 col-md-2 col-xl-2 col-lg-2">
                                  <p style="font-size : 15px;color :darkslategrey;">   هزینه ها :  </p>
                              </div>
                       </div>
                       <div class="row" dir="rtl">
                           <table style="width:70%;" dir="rtl">
                               <tr style="background-color : #f1f2f6;padding-right:0px;">
                                   <td style="width:50%;direction:rtl;float:right">
                                       عنوان
                                   </td>
                                   <td style="padding-left : 10%; direction:rtl;">
                                       هزینه
                                   </td>
                               </tr>
                               <tr style="padding-right:0px;">
                                   <td style="width:50%;">
                                       هزینه برای دانشجویان فنی و مهندسی
                                   </td>
                                   <td style="padding-left : 10%; direction:rtl;" >
                                       <% = Cost %>(ریال)
                                   </td>
                               </tr>
                               <tr style="background-color : #f1f2f6;padding-right:0px;">
                                   <td style="width:50%;">
                                       هزینه برای اساتید فنی و مهندسی
                                   </td>
                                   <td style="padding-left : 10%; direction:rtl;">
                                       <% = CostTeacher %>(ریال)
                                   </td>
                               </tr>
                               <tr style="padding-right:0px;">
                                   <td style="width:50%;">
                                       هزینه برای اساتید دانشگاه های دیگر
                                   </td>
                                   <td style="padding-left : 10%; direction:rtl;" >
                                       <% = CostOtherTeacher %>(ریال)
                                   </td>
                               </tr>
                           </table>
                       </div>
                        </div>
                   </div>
               <br />
               <br />
               <div class="row" dir="rtl">
                   <div class="col-12 col-sm-2 col-md-2 col-xl-2 col-lg-2">
                       <p style="font-size : 15px;color :darkslategrey;">مشخصات : </p>
                   </div>
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
