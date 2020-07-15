<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CenteralLabWebForm2.ascx.cs" Inherits="DigiService.UIL.UserControls.CenteralLabWebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

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

                <div class="col-4 col-sm-4 col-lg-4 col-md-4">
                    <div class="card-body" style=" padding : 3%  ;text-align:right;background: #fff;border-radius: 2px;;
                       height: 270px;margin: 1rem;position: relative;width: 270px;box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); ">


                         <h5 style="font-weight:bold;"><% =Title %></h5>
                         <p style="color :slategray;"><% =IsActive %></p>

                         <%for (int m = 0; m <= 3; m++)
                           { %>
                           <%int Id = MultyResoure[m].AreaId;%>
                           <%if (ID == Id)
                           { %>
                             <% string n = MultyResoure[m].HeadName; %>
                             <p><% =n %></p>

                           <%} %>

                           <%} %>

                     </div>
                </div>

            <%} %>

            <%} %>


        </div>


   
</body>
</html>