<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageLab.aspx.cs" Inherits="DigiService.UIL.ManageLab" %>

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
            <% int idArea = areas[a] %>
            <% } %>
        </div>
    </form>
</body>
</html>
