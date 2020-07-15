<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CenteralLabForm.aspx.cs" Inherits="DigiService.UIL.CenteralLabForm" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:TextBox runat="server" ID="TextBoxLab"></asp:TextBox><br />
            <asp:Button runat="server" ID="btn1" Text="Show Label" OnClick="btn1_Click" /><br />
            <asp:Label runat="server" ID="label1" ></asp:Label>
        </div>
    </form>
</body>
</html>
