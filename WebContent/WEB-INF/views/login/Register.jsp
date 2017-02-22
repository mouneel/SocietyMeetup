<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MySociety</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/select2.css" type="text/css" />  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css" />     
<script language="javascript">
function showdiv(val)
{	
    if(val=='1')
    {
	document.getElementById('accountDiv').style.display = 'block';	
    document.getElementById('societyNameContainer').style.display = 'none';
    }
    else
    {
    document.getElementById('accountDiv').style.display = 'none';
    document.getElementById('societyNameContainer').style.display = 'block';
    }    
}
</script>  
</head>
<body>
<div class="top_bg" style="padding: 5px;"></div>
    <div id="main_wrapper">
        <div id="main_container" style=" background-color: #E3E3B8;">
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
       		<div class="body_container" style=" background-color: #E3E3B8;">
            <div class="home_main_containt3" style=" background-color: #E3E3B8;">
                <h1 class="main_header" style="text-align: left; border-left: #e06a0a solid 4px; border-bottom: #e06a0a solid 1px;">
                &nbsp;&nbsp; Register</h1>
                <div style="width: 70%; padding-top: 20px; padding-left:130px;">                
			    <div class="widget-main">
					<h4 class="header green lighter bigger">
					<span id="createAccountTitle"><i class="fa fa-user" style="font-size:30px;color:#478FCA;text-shadow:2px 2px 4px #000000;"></i>&nbsp; User Registration</span> <a style="display: none;" class="back-link" href="/housingsociety/AccountRegistration.action" id="backToCreateAccount">Back</a>
					</h4>
					<div id="chooseRegistrationType">
						<div style="margin-bottom: 10px;" class="field">
							<div style="width: 100%" class="">
								<h3>Select Your Society Or Create New</h3>
								<p>
									Please select your housing society from the following
									list and click on <b>'Register'</b> button to register
									yourself
								</p>
								<p>
									If you don't find your society in the list, please select
									the <b>'Register your society'</b> and click on <b>'Register'</b>
									button
								</p>
							</div>
						</div>
						<div style="margin: 20px 0px;" class="field">
							<div style="width: 100%;" class="">
								<span class="input">
									<div style="font-size: 13px; text-align: left; width: 100%;">
										<form style="padding: 0px; margin: 0px;" id="chooseAccountFrm">
											<span> <label class="inline"> <input type="radio" onclick="showdiv(this.value)" value="0" name="accountRegistration" checked="checked" id="chooseAccountRadioBtn">
													<span class="lbl"> Choose your Society</span>
											</label> &nbsp; &nbsp; &nbsp; <label class="inline"> <input type="radio" onclick="showdiv(this.value)" value="1" name="accountRegistration" id="createAccountRadioBtn"> <span class="lbl"> Register your society</span>
											</label>
											</span>
										</form>
									</div>
								</span>
							</div>
						</div>												
					</div>	
				</div>	
				<form action="/housingsociety/AccountRegistration.action?createAccount" class="form-horizontal registration-form" id="accountRegistrationForm">
					<div style="margin: 20px;" id="errorDiv"></div>
					<div style="display: none" id="accountDiv" class="content_front">
					<input type="hidden" name="accountId" id="choosenAccountId" value="19">
					<h4 class="header green lighter bigger">
						<span id="createAccountTitle">
					   		<i class="fa fa-group" style="font-size:30px;color:#478FCA;text-shadow:2px 2px 4px #000000;"></i>
					 &nbsp;Register your Society
						</span>
					</h4>
					<div class="control-group">
						<label for="choosenAccountId" class="control-label">Society
							Name:</label>
						<div class="controls">
							<input type="text" placeholder="Enter Society Name..." maxlength="99" class="input-xlarge" id="societyName" name="account.societyName">
						</div>
					</div>
					<div class="control-group">
						<label for="societyAddress" class="control-label">Address:</label>
						<div class="controls">
							<textarea placeholder="Enter Address..." maxlength="199" rows="4" type="text" class="text" style="width: 80%;" id="societyAddress" name="account.societyAddress"></textarea>
						</div>
					</div>
					<br>
					<div class="row-fluid">
						<div class="span6">
							<div class="control-group">
								<label for="societyCountryInput" class="control-label">Country:</label>
								<div class="controls">
									<div class="select2-container input-medium" id="s2id_societyCountryInput">    <a class="select2-choice" onclick="return false;" href="javascript:void(0)">   <span>India</span><abbr style="display:none;" class="select2-search-choice-close"></abbr>   <div><b></b></div></a>    <div class="select2-drop select2-offscreen">   <div class="select2-search">       <input type="text" class="select2-input" autocomplete="off">   </div>   <ul class="select2-results">   </ul></div></div><input type="text" placeholder="" maxlength="99" class="input-medium select2-offscreen" id="societyCountryInput" tabindex="-1">
								</div>
								<input type="hidden" name="account.societyCountry" id="societyCountry" value="India">
							</div>
						</div>
						<div class="span4">
							<div class="control-group">
								<label style="width: 65px;" for="societyStateInput" class="control-label">State:</label>
								<div  class="controls">
									<div class="select2-container input-medium" id="s2id_societyStateInput">    <a class="select2-choice" onclick="return false;" href="javascript:void(0)">   <span>Maharashtra</span><abbr style="display:none;" class="select2-search-choice-close"></abbr>   <div><b></b></div></a>    <div class="select2-drop select2-offscreen">   <div class="select2-search">       <input type="text" class="select2-input" autocomplete="off">   </div>   <ul class="select2-results">   </ul></div></div><input type="text" placeholder="" maxlength="99" class="input-medium select2-offscreen" id="societyStateInput" tabindex="-1">
								</div>
								<input type="hidden" name="account.societyState" id="societyState" value="Maharashtra">
							</div>
						</div>
					</div>
					<div class="row-fluid">
						<div class="span6">
							<div class="control-group">
								<label for="societyCityInput" class="control-label">City:</label>
								<div class="controls">
									<div class="select2-container input-medium" id="s2id_societyCityInput">    <a class="select2-choice" onclick="return false;" href="javascript:void(0)">   <span>Pune</span><abbr style="display:none;" class="select2-search-choice-close"></abbr>   <div><b></b></div></a>    <div class="select2-drop select2-offscreen">   <div class="select2-search">       <input type="text" class="select2-input" autocomplete="off">   </div>   <ul class="select2-results">   </ul></div></div><input type="text" placeholder="" maxlength="99" class="input-medium select2-offscreen" id="societyCityInput" tabindex="-1">
								</div>
								<input type="hidden" name="account.societyCity" id="societyCity" value="Pune">
							</div>
						</div>
						<div class="span4">
							<div class="control-group">
								<label style="width: 65px;" for="societyPinCode" class="control-label">Pin Code:</label>
								<div  class="controls">
									<input type="text" placeholder="Pin Code" maxlength="19" class="input-small" id="societyPinCode" name="account.societyPinCode">
								</div>
							</div>
						</div>
					</div>
					<div class="control-group">
						<label for="societyPhone" class="control-label">Phone/Mobile:</label>
						<div class="controls">
							<span class="input-icon input-icon-right"> <input type="text" placeholder="" maxlength="15" title="Please enter correct Phone/Mobile" onchange="try{setCustomValidity('')}catch(e){}" oninvalid="setCustomValidity('Please enter correct Phone/Mobile')" pattern="^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$" class="input-medium" id="societyPhone" name="account.societyPhone"> <i class="icon-phone icon-flip-horizontal"></i>
							</span>
						</div>
					</div>
					<div class="control-group">
						<label for="societyEmail" class="control-label">Society
							Email:</label>
						<div class="controls">
							<span class="input-icon input-icon-right"> <input type="email" placeholder="Society Email Address" maxlength="255" class="input-xlarge" id="societyEmail" name="account.societyEmail">
								<i class="icon-envelope"></i>
							</span>
						</div>
					</div>
					</div>
					<!-- User Registration START-->
					<div style="display: block;" id="userDiv" class="content_front">													
						<div class="control-group" id="societyNameContainer">
							<label class="control-label">Society:</label>
							<div class="controls">
								<span style="line-height: 30px; font-size: 14px; font-weight: bold;" id="socetyNameForUserReg">Aaditya Terraces B&amp;C Co-op. Housing Society Limited</span>
							</div>
						</div>
						<div class="control-group">
							<label for="sign_up_firstName" class="control-label">User
								Name:</label>
							<div class="controls">
								<span> <label class="inline"> <input type="text" placeholder="First Name" maxlength="99" required="required" class="input-medium" id="sign_up_firstName" name="newUser.firstName">
								</label>&nbsp; &nbsp; &nbsp; <label class="inline"> <input type="text" placeholder="Last Name" maxlength="99" required="required" class="input-medium" id="sign_up_lastName" name="newUser.lastName">
								</label>
								</span>
							</div>
						</div>
						<div class="control-group">
							<label style="padding-top: 0px;" class="control-label">Sex:</label>
							<div class="controls">
								<span> <label class="inline"> <input type="radio" value="M" name="newUser.sex" checked="checked" id="sex_male"> <span class="lbl">
											Male</span>
								</label> &nbsp; &nbsp; &nbsp; <label class="inline"> <input type="radio" value="F" name="newUser.sex" id="sex_female"> <span class="lbl"> Female</span>
								</label>
								</span>
							</div>
						</div>
						<div id="user_role_div" class="control-group">
							<label style="padding-top: 0px;" class="control-label">I
								am the </label>
							<div class="controls">
								<span> <label class="inline"> <input type="radio" value="ROLE_OWNER" name="role" checked="checked" id="sign_up_owner"> <span class="lbl"> Owner</span>
								</label> &nbsp; &nbsp; &nbsp; <label class="inline"> <input type="radio" value="ROLE_TENANT" name="role" id="sign_up_tenant"> <span class="lbl">
											Tenant</span>
								</label></span>
							</div>
						</div>
						<div class="control-group">
							<label for="sign_up_contactNumber" class="control-label">Phone/Mobile:</label>
							<div class="controls">
								<span class="inputicon"> <input type="text" placeholder="Mobile Number" maxlength="15" title="Please enter correct Phone/Mobile" onchange="try{setCustomValidity('')}catch(e){}" oninvalid="setCustomValidity('Please enter correct Phone/Mobile')" pattern="^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$" required="required" class="input-medium" id="sign_up_contactNumber" name="newUser.mobile"> <i class="fa fa-phone" style="font-size:30px;color:lightblue;text-shadow:2px 2px 4px #000000;"></i>
								</span>
							</div>
						</div>
						<div class="control-group">
							<label for="sign_up_contactNumber" class="control-label">User
								Email:</label>
							<div class="controls">
								<span class="iconbox"> <input type="email" placeholder="User Email address" maxlength="255" required="required" class="input-xlarge" id="sign_up_email" name="newUser.email" size="32"> <i class="fa fa-envelope" style="font-size:30px;color:lightblue;text-shadow:2px 2px 4px #000000;"></i>
								</span>
							</div>
						</div>						
					</div>
					<div style="padding: 0px; border: none; text-align: center;" class="form-actions">
						<button class="button btn btn-primary btn-large" id="registerBtn">Register</button>
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