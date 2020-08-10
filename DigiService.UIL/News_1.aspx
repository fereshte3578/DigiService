<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News_1.aspx.cs" Inherits="DigiService.UIL.News_1" %>

<%@ Register Src="~/UserControls/UserControl_Header.ascx" TagPrefix="Header" TagName="UserControl_Header" %>
<%@ Register Src="~/UserControls/linknavbar.ascx" TagPrefix="fereshte" TagName="linknavbar" %>
<%@ Register Src="~/UserControls/UserControl_Footer.ascx" TagPrefix="footer" TagName="UserControl_Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" href="Styles/bootstrap.css" />
    <link rel="stylesheet" href="Styles/Style.css" />
    <link rel="stylesheet" href="Scripts/jquery-3.4.1.js" />
    <link rel="stylesheet" href="Scripts/bootstrap.min.js" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <Header:UserControl_Header runat="server" ID="header" />
            <fereshte:linknavbar runat="server" />
            <br />
            <br />
            <div class="container-fluid">

            
            <div class="row">
                <div class="col-12">
                <table class="tbl_news">
                    <tr>
                        <td>
                            <asp:Label ID="lbid" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:Label ID="lbtitr" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
                    </div>

            </div>
            <div class="row">
        <div class="col-12 news-1 text-right">
                <asp:Label ID="Label1" runat="server" Text="متن خبر"></asp:Label>
                <br />
                <asp:Label ID="lbkhabar" runat="server" Text=""></asp:Label>
                <hr />
            </div>
            </div>
                </div>
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <footer:UserControl_Footer runat="server" ID="UserControl_Footer" />
        </div>
    </form>
</body>
</html>
