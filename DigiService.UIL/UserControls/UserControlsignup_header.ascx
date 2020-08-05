<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlsignup_header.ascx.cs" Inherits="DigiService.UIL.UserControls.UserControlsignup_header" %>
<style>
    .rectangle{
    width: 80%;
    height: 10px;
    padding-right: 20px;
    background-color: #172b4d;
    border-bottom-left-radius: 65px;
    border-bottom-right-radius: 65px;

}
.rectangle-right{
    width: 80%;
    height: 10px;
    padding-right: 20px;
    background-color: #172b4d;
    border-bottom-left-radius: 65px;


}
.rectangle-left{
    width: 80%;
    height: 10px;
    padding-right: 20px;
    background-color: #172b4d;
    border-bottom-right-radius: 65px;


}
.header-profile {

    text-align: center;
    background: #dff9fb;
    padding-bottom: 15px;
    font-size: 30px;
}


.text-profile-header{
    color: #172b4d;
    font-size: 28px;
    font-weight: bold;
}
@media only screen and (max-width: 595px) {
    .text-profile-header {
        font-size: 20px;
    }
}
.logo-profile-header{
    color:  #172b4d ;
    padding: 20px 6% 0px 0px;

}
@media only screen and (max-width: 595px) {
    .logo-profile-header {
        font-size: 20px;
    }
}
.nav-seller{
    background-color: #172b4d;
    width: 100%;
    height: 23px;
    color: white;
}
@media only screen and (max-width: 595px) {
    .nav-seller {
        font-size: 13px;
    }
}
</style>
<div class="header-profile">
    <div class="row">
        <div class=" col-3 col-lg-3 col-md-3 col-sm-3 " align="right"><div class="rectangle-right"></div></div>
        <div class=" col-3 col-lg-3 col-md-3 col-sm-3 " align="center"><div class="rectangle"></div></div>
        <div class=" col-3 col-lg-3 col-md-3 col-sm-3 " align="center" ><div class="rectangle"></div></div>
        <div class=" col-3 col-lg-3 col-md-3 col-sm-3 " align="left"><div class="rectangle-left"></div></div>
    </div>
    <div >
        <div class="row ">
            <div class="col-lg-2 col-md-2 logo-profile-header" align="right"><img class="img1" src="Images/erpLogo.png"  /></div>
            <div class="col-lg-10 col-md-10 "></div>

        </div>
    </div>
   
</div>

