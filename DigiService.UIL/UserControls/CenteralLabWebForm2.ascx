<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CenteralLabWebForm2.ascx.cs" Inherits="DigiService.UIL.UserControls.CenteralLabWebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
            <meta charset="UTF-8">
         <title>Bootstrap Example</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
          integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
</head>

<body>
    <div id="myDiv">
      <div style="background-color : #ffffff;">
        <div class="container-fluid" style="padding : 7%;" dir="rtl">
        <div class="row">
                <div class="col-4 col-sm-4 col-md-5 col-lg-5">

                </div>
                <div class="col-5 col-sm-4 col-md-4 col-lg-4">
                    <p style="float : right;padding-right :2%;padding-bottom : 2%;font-weight : bolder;color : #c23616;font-size : 15px;">آزمایشگاه های مرکزی  </p>
                </div>
            </div>
        <div class="row" dir="rtl">

            <%if (!IsPostBack)
                {%>
            <%for (int s = 0; s < 3; s++)
                { %>

             <% string Title = AllcenteralLabs[s].title; %>
             <% string IsActive = AllcenteralLabs[s].IsActived; %>
             <% int ID = AllcenteralLabs[s].id; %>

                <div class="col-12 col-sm-6 col-lg-3 col-md-6">
                    <div class="card-body" style=" padding : 8%  ;text-align:right;background: #fff;border-radius: 2px;
                       height: 270px;margin: 1rem;position: relative;width: 100%;box-shadow:  0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23); ">


                         <h5 style="font-weight:bold;color : #30336b;"><% =Title %></h5>
                        <p style="color : black; font-weight : bold;">
                            وضعیت بخش : 
                        </p>
                         <p style="color :#7ed6df;font-weight:bold;font-size:12px;padding-right : 2%;"><% =IsActive %></p>
                        <p style="color : black; font-weight : bold;">
                             دستگاه های بخش  : 
                        </p>
                         <%for (int m = 0; m < 4; m++)
                           { %>
                           <%int AreaId = MultyResoure[m].AreaId;%>
                           <% int Id = MultyResoure[m].id; %>
                           <%if (ID == AreaId)
                           { %>
                             <% string n = MultyResoure[m].NameDivice; %>
                            <a href="../OneResource.aspx?IDRESOUTCE=<% = Id %>" ><p style="color :#22a6b3;padding-right : 2%;font-weight : bold;"><% =n %></p></a>

                           <%} %>

                           <%} %>

                     </div>
                </div>

            <%} %>

            <%} %>


        </div>

            </div>
          </div>
        </div>
    <script>

    </script>
   
</body>
</html>