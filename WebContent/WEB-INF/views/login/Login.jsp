<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>MySociety</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" /> 
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css" />
  </head>
<body>
    <div class="top_bg" style="padding: 5px;">
        <div class="top_wrap">
           <a href="/mysociety/Login.html" title="Login" style="float: right; margin-right: 50px; margin-top: 3px;">      
              <img src="images/login_btn.png" alt="Login to Society123">
            </a>            
        </div>
    </div>
    <div id="main_wrapper">
        <div id="main_container">
            <div class="top_two_wrap">
                <div class="top_two_logo_wrap">
                    <img src="images/logo.jpg" style="position: absolute;" class="logo_shdw">
                </div>
                <div class="top_two_menu_wrap">
                    <div id="navigation">
                        <ul class="nav_links">                           
                            <li class="withdiv"><a href="about-us.html" class="active">
                                <img src="images/about_icon.png"><br />
                                About Us</a></li>                             
                            <li class="withdiv"><a href="contactus.html">
                                <img src="images/contact_icon.png"><br />
                                Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div style="float:left;height: 36px;width: 990px;"><img src="images/login_banner.jpg" alt="MySociety"/></div>
       <div class="body_container">
            <div class="home_main_containt3">
                <h1 class="main_header" style="text-align: left; border-left: #e06a0a solid 4px; border-bottom: #e06a0a solid 1px;">
                &nbsp;&nbsp; Login</h1>
                <div style="width: 70%; padding-top: 20px; padding-left:130px;">
                <form name="login" method="post" action="ValidateUser.html">
                 <table width="88%" cellpadding="0" cellspacing="0" border="0"  align="center">
                    <tr>
                        <td width="43%" valign="top">
                            <table width="100%" cellpadding="0" cellspacing="0" border="0" style="border: 1px solid #e9eac7;"
                                   class="box_style_shadow">
                                <tr style="height: 25px;">
                                    <td colspan="2" style="border-bottom: 1px solid #d0d0d0; padding-left: 0px; background-color: #027ea1;
                                    color: #fff; font-size: 17px; font-weight: bold">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="8%">
                                                    <img src="images/memberlogin.png"  alt="Member login of Society123" title="Member login of Society123" width="30" height="30">
                                                </td>
                                                <td width="92%">Login</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 7px;">
                                    </td>
                                </tr>
                                <tr style="height: 40px;">
                                    <td colspan="2" class="labeltextbold" style="padding-left: 10px;" align="center">
                                        <img src="images/member-login-banner.png" style="margin-bottom: 6px">
                                    </td>
                                </tr>
								
                                <tr style="height: 40px;">
                                    <td width="36%" class="labeltextbold" style="padding-left: 10px;">
                                        Email Id <span class="asteric">*</span>                                    </td>
                                    <td width="64%">
                                        <input type="text"  id="id" name="userId" value="mtm" size="32">
                                  </td>
                                </tr>
                                <tr style="height:40px;">
                                    <td class="labeltextbold" style="padding-left: 10px;">
                                        Password <span class="asteric">*</span>
                                    </td>
                                    <td>
                                        <input type="password" id="pass" name="password" value="mtm" size="32">
                                    </td>
                                </tr>
                               
                                <tr style="height: 40px;">
								<td>&nbsp;</td>
                                    <td align="left" >
                                       	<input type="submit" name="Login" id="login" class="button button-state" value='Submit'>
                                  </td>
                                </tr>
                                 <tr>
                                    <td colspan="2" style="height: 10px; ">
                                    </td>
                                </tr>
                                  <tr>
								      
                                   <td align="center" class="registercls">
                                   	<a class="forgot-password-link" href="/housingsociety/PasswordRecover.action"><i class="fa fa-arrow-left" style="color:#FFEE99"></i>&nbsp;  I forgot my password</a></td>
									<td align="center" class="registercls">
									<a class="user-signup-link" href="/mysociety/RegisterSociety.html"> I want to register &nbsp; <i class="fa fa-arrow-right" style="color:#CCFF77"></i></a></td>
							  </tr>                                
                            </table>
                        </td>                       
                    </tr>
              </table>
            </div>
            </form>
        </div>
    </div>
        </div>
    </div>
    <div class="bottom_bg2">
        <div class="bottom_bg2_wrap">
    </div>
</body>
</html>