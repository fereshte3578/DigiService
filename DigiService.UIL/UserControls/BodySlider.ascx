<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BodySlider.ascx.cs" Inherits="DigiService.UIL.UserControls.BodySlider" %>
<!DOCTYPE html>
<html>
 <head>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 </head>
<body>


<div style="max-width:100%;padding-top : 0px;">
  <img class="mySlides w3-animate-fading" src="Images\Carousel_R2786274.jpg " style="width:100%;height : 100%;">
  <img class="mySlides w3-animate-fading" src="Images\2020551613534_pic2.jpg" style="width:100%;height : 100%;">
  <img class="mySlides w3-animate-fading" src="Images\202055161357_pic1.jpg " style="width:100%;height : 100%;">
</div>

<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 9000);
    }
</script>

</body>
</html> 

