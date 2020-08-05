<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="linknavbar.ascx.cs" Inherits="DigiService.UIL.UserControls.linknavbar" %>
<header>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</header>
<body dir="rtl">

    <div style="background-color : #192a56;" class="topnav">
        <div class="row ">
            <div class="col-lg-1  col-sm-6" dir="rtl">
                <a href="#myDiv" id="button" style="color : white;">آزمایشگاه مرکزی</a>
            </div>
        </div>
    </div>

</body>

<script type="text/javascript">
    $(document).ready(function () {
        $("#button").click(function (e) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: $($.attr(this, 'href')).offset().top
            }, 1000);
        });
    });
</script>