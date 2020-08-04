<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowTwoParts.aspx.cs" Inherits="DigiService.UIL.ShowTwoParts" %>

<%@ Register Src="~/UserControls/WelfareWebform.ascx" TagPrefix="fereshte" TagName="WelfareWebform" %>
<%@ Register Src="~/UserControls/CenteralLabWebForm2.ascx" TagPrefix="fereshte" TagName="CenteralLabWebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>
    <div style="background-color : #f5f6fa;">
        <div class="container-fluid" style="padding : 7%;" dir="rtl">
            <div class="row">
                <p style="float : right;padding-right :2%;font-weight : bolder;color : #c23616;font-size : 15px;">آزمایشگاه های مرکزی  </p>
            </div>
              <fereshte:CenteralLabWebForm2 runat="server" ID="Central" />
        </div>
    </div>
      

    <div style="background-color : #ffffff;">
        <div class="container-fluid" style="padding : 7%;" dir="rtl">
            <div class="row">
                <p style="float : right;padding-right :2%;font-weight : bolder;color : #c23616;font-size : 15px;">  امور رفاهی   </p>
            </div>
                    <fereshte:WelfareWebform runat="server" ID="WelfareWebform1" />
        </div>
    </div>

</body>
</html>
