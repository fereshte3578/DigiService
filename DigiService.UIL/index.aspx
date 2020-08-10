 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DigiService.UIL.index" %>
<%@ Register Src="~/UserControls/UserControl_Header.ascx" TagPrefix="Header" TagName="UserControl_Header" %>
<%@ Register Src="~/UserControls/UserControl_Footer.ascx" TagPrefix="footer" TagName="UserControl_Footer" %>
<%@ Register Src="~/UserControls/BodySlider.ascx" TagPrefix="bodys" TagName="BodySlider"  %>
<%@ Register Src="~/UserControls/CenteralLabWebForm2.ascx" TagPrefix="fereshte" TagName="CenteralLabWebForm2" %>
<%@ Register Src="~/UserControls/linknavbar.ascx" TagPrefix="fereshte" TagName="linknavbar" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>index</title>
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
        <Header:UserControl_Header runat="server" id="header"/>
        <fereshte:linknavbar runat="server" />
        <bodys:BodySlider runat="server" ID="BodySlider" />
        <br />
        <br />

        <div class="row">
            <div class="card_news">
                <asp:HiddenField ID="HiddenField1_news" runat="server" />
                
                <img class="img_news" src="Images\News_R30rrrrr79957.jpg"/>
                <br />
                <br />
                <asp:Label runat="server" ID="titrnews"></asp:Label><br /><br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl = "News_1.aspx"><asp:Label runat="server" ID="news_selected"></asp:Label></asp:HyperLink>
                

            </div>
        </div>
              <fereshte:CenteralLabWebForm2 runat="server" ID="Central" />
        
        <footer:UserControl_Footer runat="server" id="UserControl_Footer"/>

    
    </div>
    </form>
</body>
</html>
