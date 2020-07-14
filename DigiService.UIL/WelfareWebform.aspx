<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelfareWebform.aspx.cs" Inherits="DigiService.UIL.WelfareWebform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row">
                <% if (!IsPostBack)
                         { %>
                    <% for (int i = 1; i < 4; i++)
                             {%>

                            <div class="col-12 col-sm-12 col-lg-4 col-md-4">

                                <div class="card-body" style="text-align:right;background: #fff;border-radius: 2px;display: inline-block;
                                       height: 300px;margin: 1rem;position: relative;width: 300px;box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24); ">

                                    <% string Title = allcenteralLabs[i].title.ToString(); %>
                                    <% string IsActive = allcenteralLabs[i].IsActived.ToString(); %>
                                    <% int ID = allcenteralLabs[i].id; %>

                                    <h5 style="font-weight:bold;"><% =Title %></h5>
                                    <p style="color :slategray;"><% =IsActive %></p>
                                    

                                </div>
                            </div>
                        
                    <% } %>
                <% } %>
            </div>
        </div>
    </form>
</body>
</html>
