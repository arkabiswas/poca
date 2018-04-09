<%--<%@ Register TagPrefix="uc1" TagName="NewsControl" Src="NewsControl.ascx" %>--%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="default.aspx.vb" Inherits="PPC.WebForm1" %>
<%@ Register TagPrefix="uc1" TagName="LoginNewsControl" Src="LoginNewsControl.ascx" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>POCA System</title>
		<meta content="True" name="vs_showGrid" />
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR" />
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE" />
		<meta content="JavaScript" name="vs_defaultClientScript" />
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
		<link href="Styles.css" type="text/css" rel="stylesheet" />		
		<script language="javascript" src="scripts.js" type="text/javascript" />
	</head>
	
	<body ms_positioning="FlowLayout">
		<script language="javascript" type="text/javascript">
		<!--
			if(document.images)
			{
				var login1 = new Image();
				login1.src = "Images/login.jpg";
				
				var login2 = new Image();
				login2.src = "Images/login2.jpg";
			}
		-->
		</script>
		<noscript  style="color:Red;font-weight: bold; font-size:medium;">Your browser does not support JavaScript!</noscript>
		<form id="Form1" method="post" runat="server">
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<table bordercolor="black" cellspacing="0" cellpadding="0" align="center" summary="This table is used for page layout." border="1">
				<tbody>
					<tr>
						<td>
							<div align="center" style="display:block;"><asp:image id="Image1" runat="server" alternatetext="FDA Automated Method of Minimizing Medication Errors Due to Similar Proprietary and Established Names" imageurl="Images/fdasystemlogo.gif"></asp:image></div>
							<div align="left">&nbsp;</div>
							<div align="left"><uc1:loginnewscontrol id="LoginNewsControl1" runat="server"></uc1:loginnewscontrol></div>
                            
                            <div runat="server" id="divInternalLogin" visible="true">
							  <table style="FONT-SIZE: 100%" align="center" summary="This table is used for page layout.">
								<tbody>
									<tr>
										<td style="WIDTH: 211px" align="center">
										    <asp:label id="lblMessage" runat="server" cssclass="errorMessage" Font-Size="Larger"></asp:label>
                                        </td>
									</tr> 								
								</tbody>
							</table>
							<table style="FONT-SIZE: 100%" align="center" summary="This table is used for page layout.">
								<tbody>
									<tr>
										<td style="WIDTH: 211px" align="center">
										    <asp:LinkButton runat="server" ID="lnkLogin" CssClass="formr" Text="Begin POCA Session" Font-Size="Larger"></asp:LinkButton> 							
										</td>
									</tr>
									<tr>
										<td style="FONT-SIZE: 100%" align="center" colspan="3"><br/>
											<a id="reqAcct" runat="server" title="Request Account" href="RequestAccount.aspx">Request Account</a>
                                        </td>
									</tr>									
								</tbody>
							</table>
                            </div>

                            <div runat="server" id="divPublicLogin" visible="false">
							<table style="FONT-SIZE: 10pt" align="center" summary="This table is used for page layout.">
								<tbody>
									<tr>
										<td style="WIDTH: 3px; HEIGHT: 28px"></td>
										<td style="WIDTH: 69px; HEIGHT: 28px"></td>
										<td style="WIDTH: 211px; HEIGHT: 28px">
                                            <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" display="Dynamic" controltovalidate="txtLogin" errormessage="Please enter a User ID"></asp:requiredfieldvalidator>
                                            <asp:label id="lblLoginValidate" runat="server" forecolor="red" visible="False" Width="209px"></asp:label>
                                        </td>
									</tr>
									<tr>
										<td style="WIDTH: 3px"></td>
										<td style="WIDTH: 69px;" align="right"><p><label for="txtLogin">User ID:</label></p></td>
										<td style="WIDTH: 211px"><asp:textbox id="txtLogin" runat="server" width="211px"></asp:textbox></td>
									</tr>
									<tr>
										<td style="WIDTH: 3px"></td>
										<td style="WIDTH: 69px;" align="right"><label for="txtPassword">Password:</label></td>
										<td style="WIDTH: 211px"><asp:textbox id="txtPassword" runat="server" width="211px" height="24px" textmode="Password"></asp:textbox></td>
									</tr>
									<tr>
										<td style="WIDTH: 3px"></td>
										<td style="WIDTH: 69px"></td>
										<td style="WIDTH: 211px" align="right"><asp:imagebutton id="btnImageButton" onmouseover="Swap(this,login2);" onmouseout="Swap(this,login1);" runat="server" alternatetext="Click here to Login." imageurl="Images/login.jpg"></asp:imagebutton></td>
									</tr>
									<tr>
										<td style="FONT-SIZE: 8pt;" align="center" colspan="3"><br/>
											<a title="Reset Password"  href="ResetPassword.aspx">Reset Password</a>&nbsp;|&nbsp;
                                            <a title="Change Password" href="ChangePassword.aspx">Change Password</a>&nbsp;|&nbsp;
                                            <a title="Request Account" href="RequestAccount.aspx">Request Account</a>
                                        </td>
									</tr>									
								</tbody>
							</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<br />
			<table cellspacing="0" cellpadding="0" align="center" width="58%">
				<tr>
					<td><b>Disclaimer</b></td>
				</tr>
				<tr>
					<td>
						<p>
						This is a Federal computer system and is the property of the United States 
Government. It is for authorized use only. Users (authorized or unauthorized) 
have no explicit or implicit expectation of privacy.
						</p>
						<p>
						Any or all use of this system and all files on this system may be intercepted, 
monitored, recorded, copied, audited, inspected, and disclosed to authorized 
site, Food and Drug Administration, and law enforcement personnel, as well as 
authorized officials of other agencies, both domestic and foreign. By using this 
system, the user consents to such interception, monitoring, recording, copying, 
auditing, inspection, and disclosure at the discretion of authorized site or 
Food and Drug Administration personnel.
						</p>
						<p>
						Unauthorized or improper use of this system may result in administrative 
disciplinary action and civil and criminal penalties. By using this system you 
indicate your awareness of and consent to these terms and conditions of use. 
						</p>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
