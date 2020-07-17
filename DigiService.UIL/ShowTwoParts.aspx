<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTwoParts.aspx.cs" Inherits="DigiService.UIL.ShowTwoParts" %>
<%@ Register Src="~/UserControls/WelfareWebform.ascx" TagPrefix="fereshte" TagName="WelfareWebform" %>
<%@ Register Src="~/UserControls/CenteralLabWebForm2.ascx" TagPrefix="fereshte" TagName="CenteralLabWebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <div class="container-fluid" style="padding-right:10%;padding-left:10%;">
    <form id="form1" runat="server">
        <div>
            <fereshte:WelfareWebform runat="server" ID="Welfare" />
           <p>next</p>
            <fereshte:CenteralLabWebForm2 runat="server" ID="Central" />
        </div>
    </form>
        </div>
</body>
</html>
