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
    
        <div>
        </div>
        
        <div class="row" dir="rtl">

            <%if (!IsPostBack)
                {%>
            <%for (int s = 0; s < 3; s++)
                { %>

             <% string Title = AllcenteralLabs[s].title; %>
             <% string IsActive = AllcenteralLabs[s].IsActived; %>
             <% int ID = AllcenteralLabs[s].id; %>

                <div class="col-12 col-sm-12 col-lg-4 col-md-4">
                    <div class="card-body" style=" padding : 8%  ;text-align:right;background: #fff;border-radius: 2px;;
                       height: 270px;margin: 1rem;position: relative;width: 100%;box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); ">


                         <h5 style="font-weight:bold;color : #EA2027;"><% =Title %></h5>
                        <p style="color : black; font-weight : bold;">
                            وضعیت بخش : 
                        </p>
                         <p style="color :slategray;padding-right : 2%;"><% =IsActive %></p>
                        <p style="color : black; font-weight : bold;">
                             دستگاه های بخش  : 
                        </p>
                         <%for (int m = 0; m < 3; m++)
                           { %>
                           <%int AreaId = MultyResoure[m].AreaId;%>
                           <% int Id = MultyResoure[m].id; %>
                           <%if (ID == AreaId)
                           { %>
                             <% string n = MultyResoure[m].NameDivice; %>
                            <a href="../OneResource.aspx?IDRESOUTCE=<% = Id %>" ><p style="color :slategray;padding-right : 2%;"><% =n %></p></a>

                           <%} %>

                           <%} %>

                     </div>
                </div>

            <%} %>

            <%} %>


        </div>

    <script>

    </script>
   
</body>
</html>