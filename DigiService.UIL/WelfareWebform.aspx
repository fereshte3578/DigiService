<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelfareWebform.aspx.cs" Inherits="DigiService.UIL.WelfareWebform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row" dir="rtl">
                <% if (!IsPostBack)
                         { %>
                    <% for (int i = 0; i < 1; i++)
                             {%>

                
                                    <% string Title = allcenteralLabs[i].title; %>
                                    <% string IsActive = allcenteralLabs[i].IsActived; %>
                                    <% int ID = allcenteralLabs[i].id; %>
                            <div class="col-12 col-sm-12 col-lg-4 col-md-4">

                                <div class="card-body" style=" padding : 3%  ;text-align:right;background: #fff;border-radius: 2px;display: inline-block;
                                       height: 270px;margin: 1rem;position: relative;width: 270px;box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); ">


                                    <h5 style="font-weight:bold;"><% =Title %></h5>
                                    <p style="color :slategray;"><% =IsActive %></p>

                                    <%for (int j = 0; j < 4; j++)
                                        { %>
                                    
                                    <%int Id = reSources[j].id; %>
                                     <% int Areaid = reSources[j].AreaId;  %>
                                    <% string n = reSources[j].HeadName;  %>
                                   
                                    <% if (Areaid == ID)
                                        { %> 
                                    <p style="color :slategray;"><% = n %></p>
                                    <%} %>

                                    <%} %>
                                    

                                </div>
                            </div>
                        
                    <% } %>
                <% } %>
            </div>
        </div>
    </form>
</body>
</html>
