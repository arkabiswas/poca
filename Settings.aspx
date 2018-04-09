<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Settings.aspx.vb" Inherits="PPC.Settings" %>
<%@ Register TagPrefix="POCA" TagName="TrackingHeader" Src="TrackingHeader.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>Settings</title>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
		<link rel="stylesheet" href="styles.css" />
		<style type="text/css">
			#settingPageContainer { MARGIN-TOP: 20px; MARGIN-LEFT: 30px }
			
			#settingPageContainer UL { FONT-WEIGHT: bold }
			
			#settingPageContainer UL LI { FONT-WEIGHT: normal; MARGIN-LEFT: 0px; LIST-STYLE-TYPE: none; TEXT-DECORATION: none }
			
			#settingPageContainer UL LI A { TEXT-DECORATION: none }
			
			#settingPageContainer H2 { background-color: navy; color:White; text-align: left; FONT: Verdana, Geneva, Arial, Helvetica, sans-serif; width: 550px; font-weight: bold; font-size:medium; margin-left: 3px; }
			
			#settingPageContainer #leftcolumn { PADDING-RIGHT: 15px; FLOAT: left; TOP: -10px }
			
			#settingPageContainer #rightcolumn { FLOAT: left; TOP: -10px }
		</style>
	</head>
	<body>
		<form id="settingsForm" method="post" runat="server">
			<poca:trackingheader id="trackingHeaderControl" runat="server" location="<a href='Home.aspx' title='Home' style='font-size: 14px; font-weight: bold; '>Return To Home Page</a>"
				title="Personal Settings" />
			<table cellspacing="0" cellpadding="0" width="100%" summary="This table is used for page layout.">
				<tbody>
					<tr>
                        <td style="width:55px; ">
                            &nbsp;
                        </td>
                        <td>
			<div id="settingPageContainer">
				<asp:panel id="Panel1" runat="server">
				<h2>Your Settings</h2>
					<div>
				<ul>
					<li id="lnkChangePassword" runat="server" visible="false">
						<a href="ChangePassword.aspx" title="Click here to change your password">Change your password</a>
                    </li>
					<li id="lnkUpdateEmail" runat="server" visible="false">
						<a href="UpdateEmail.aspx" title="Click here to update your email address">Update your email address</a>
				    </li>
                    <%--<li>
						<a href="DefaultSearchView.aspx" title="Click here to set your default search view">Set your default search view</a>
                    </li>--%>
					<li>
						<a href="SetThreshold.aspx" title="Click here to set a Threshold for returned results">Set your returned results threshold</a>
				    </li>
					<li>
						<a href="PageResults.aspx" title="Click here to set the number of results returned per page">Set your number of results per page</a>
				    </li>
				</ul>
					</div>
				</asp:panel>
                <br/>
				<asp:panel id="advancedSettingsPanel" runat="server" visible="false">
					<h2>Advanced Settings</h2>
					<div id="leftcolumn">
						<ul>
							User
							<li id="userAdminLink" runat="server" visible="false">
								<a title="Click Here to add or edit a user." href="UserAdmin.aspx">Add/Edit a User</a>
                            </li>
							<li>
								<a title="Click here to add or edit a news item" href="NewsActionPage.aspx">Add/Edit News Items</a>
						    </li>
							<li>
								<a title="Click here to open UAR report" href="UARReport.aspx">UAR Report <br/></a>
						    </li>
							<li id="lnkChangePswrdPolicy" runat="server" visible="false">
								<a title="Click here to modify the password policies" href="PasswordPolicies.aspx">Change the Password Policies</a>
							</li>
						</ul>
						<ul> 
							System
							<%--<li>
								<a title="Click here to change the algorithms weights" href="DynamicWeights.aspx">Change Dynamic Weights</a>
						    </li>--%>
							<%--<li>
								<a title="Click here to change the Level of Concern Picklist" href="ModifyPicklist.aspx">Modify Level of Concern Picklist</a>
						    </li>--%>
							<li>
								<a title="Click here to edit the email account that receives account requests" href="ActRequestEmail.aspx">Edit Account Request Email Address</a>
                            </li>
							<li>
								<a title="Click here to edit the email account that receives feedback emails" href="FeedbackEmail.aspx">Edit Feedback Email Address</a>
							</li>
						</ul>
					</div>
					<div id="rightcolumn">
						<%--<ul>
							Consults/Watchlists
							<li>
								<a title="Click here to Add a new consult" href="AddConsult.aspx">Add Consult</a>
						    </li>
							<li>
								<a title="Click here to Edit an existing consult" href="EditConsultSearch.aspx">Edit 
									Consult</a>
						    </li>
							<li>
								<a title="Click here to assign a consult" href="AssignConsult.aspx">Assign a 
									Consult</a>
							</li>
							<li>
								<a title="Click here to consolidate a watchlist" href="ConsolidateWatchList.aspx">Consolidate 
									Watchlist</a>
							</li>
						</ul>--%>
						<ul id="adminList" runat="server">
							Datasources/Records
							<li runat="server" id="lnkDBMaint" visible="false">
								<a title="Click here to refresh the POCA datasources" href="RefreshDatasources.aspx">Datasource Maintenance</a>
							</li>
							<li runat="server" id="lnkModifyDSNames" visible="false">
								<a title="Click here to change the Datasource Names Picklist" href="ModifyDatasource.aspx">Modify Datasource Names</a>
						    </li>
							<li runat="server" id="lnkDeleteDrugName" visible="false">
								<a title="Click here to delete a drug name record" href="DeleteRecord.aspx">Delete Drug Name</a>
							</li>
							<li runat="server" id="lnkViewSEDrugNames" visible="false">
								<a title="Click here to view names entered by safety evaluators" href="SEDrugNames.aspx">View SE Drug Names</a>
							</li>							
                            <li runat="server" id="lnkManageCberBiologicSuffixNames" visible="false">
                                <a title="Click here to Manage Biologic Suffixes Names" href="ManageSuffix.aspx"><br />Manage Biologic Suffixes Data Source</a>
                            </li>
						</ul>
					</div>
				</asp:panel>
			</div>
                        </td>            
					</tr>
				</tbody>
			</table>
		</form>
	</body>
</html>
