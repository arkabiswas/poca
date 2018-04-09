<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ManageSuffix.aspx.vb" Inherits="PPC.ManageSuffix" EnableEventValidation="true" %>
<%@ Register TagPrefix="uc1" TagName="TrackingHeader" Src="TrackingHeader.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="PPC.FDA.Controls" Assembly="PPC.FDA.Controls.FDAGrid" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
    <title>Manage Biologic Suffixes Name</title>
    <link href="Styles.css" type="text/css" rel="stylesheet" />
</head>


<body>
<style type="text/css">
    .SearchBox {
	    FONT: 10px Verdana, Geneva, Arial, Helvetica, sans-serif; WIDTH: 510px; margin-left: 85px; margin-top:20px;
    }
    #SearchTable {
	    WIDTH: 500px
    }
    #SearchTable TD {
	    VERTICAL-ALIGN: top
    }
    #SearchTable TH {
	    BACKGROUND: navy; COLOR: white; TEXT-ALIGN: left
    }
</style>

<script language="javascript" src="scripts.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof String.prototype.trim !== 'function') {
        String.prototype.trim = function () {
            return this.replace(/^\s+|\s+$/g, '');
        }
    }

    function verifyAdd() {
        document.getElementById("lblAddValidate").innerText = ""
        //document.getElementById("lblDeleteValidate").innerText = ""

        var nameToAdd = document.getElementById("txtAddSuffixName").value;
        var nameToAddStr = nameToAdd.trim();
        if (nameToAddStr == "") {
            document.getElementById("lblAddValidate").innerText = "Please enter biologic suffix to add.";
            return false;
        }
        if (nameToAddStr.length < 4) {
            document.getElementById("lblAddValidate").innerText = "Please enter 4 characters in biologic suffix textbox.";
            return false;
        }

        var appNumber = document.getElementById("txtApplicationNumber").value;
        var appNumber = appNumber.trim();
        if (appNumber == "") {
            document.getElementById("lblAddValidate").innerText = "Please enter application number.";
            return false;
        }

        var resp = confirm("Are you sure you want to add this biologic suffix to the database?");
        if (resp)
            return true;
        return false;
    }

</script>

    <form id="Form1" method="post" runat="server">
		<uc1:trackingheader id="TrackingHeader1" title="User Administration" runat="server" location="<a href='Settings.aspx' style='font-size: 14px; font-weight: bold; '>Return to Settings</a>" />

        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"  />

        <div class="SearchBox">
	        <table id="SearchTable">
		        <tr>
			        <th colspan="4">
				        <asp:label id="lblAddTitle" Runat="server">Add Suffix Name To Biologic Suffixes Data Source</asp:label>
                    </th>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
		        <tr>
			        <td id="PageContentSkip" style="width: 150px;"><asp:Label ID="lblAddSuffixName" runat="server" AssociatedControlID="txtAddSuffixName" Text="Biologic Suffix:"/></td>
			        <td><asp:textbox id="txtAddSuffixName" runat="server" MaxLength="4" Columns="10"></asp:textbox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
			        <td><asp:Label ID="lblApplicationNumber" runat="server" AssociatedControlID="txtApplicationNumber" Text="Application Number:"/></td>
			        <td><asp:textbox id="txtApplicationNumber" runat="server" Columns="20"></asp:textbox></td>
                    <td>&nbsp;</td>
			    </tr>
                <tr>
			        <td><asp:Label ID="lblStatus" runat="server" AssociatedControlID="rdoStatus" Text="Status:"/></td>
                    <td>
                        <asp:RadioButtonList ID="rdoStatus" runat="server">
                            <asp:ListItem Value="1" Selected="True">Under Review</asp:ListItem>
                            <asp:ListItem Value="2" >Approved</asp:ListItem>
                            <asp:ListItem Value="3" >Denied/Withdrawn</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="3">
                        <asp:button id="btnAddSuffix" runat="server" text="Add" causesvalidation="false" style="padding: 2px 15px;"/>
                        <asp:button id="btnAddClear" runat="server" text="Clear" causesvalidation="false" style="padding: 2px 15px;"/>
                    </td>
		        </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="3"><asp:Label id="lblAddValidate" runat="server" ForeColor="Red" Visible="True" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
		        <tr>
			        <th colspan="4">
				        <asp:label id="lblViewTitle" Runat="server">View Suffix Names From Biologic Suffixes Data Source</asp:label>
                    </th>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:label id="lblViewSuffixName" runat="server">Select the Date Range you would like to view from the list below.</asp:label>
                        <br />
                        <asp:DropDownList ID="ddlDateRange" runat="server" AutoPostBack="True" Width="180px">
                            <asp:ListItem Selected="True" Value="1">Show Last Week</asp:ListItem>
                            <asp:ListItem Value="2">Show Last Two Weeks</asp:ListItem>
                            <asp:ListItem Value="3">Show Last Month</asp:ListItem>
                            <asp:ListItem Value="4">Show Last Year</asp:ListItem>
                            <asp:ListItem Value="5">Show All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label id="lblUpdateValidate" runat="server" ForeColor="Red" Visible="True" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
						<asp:imagebutton id="btnExportToExcel" onmouseover="Swap(this, exporttoexcel2)" onmouseout="Swap(this, exporttoexcel1)"
							Runat="server" ImageUrl="~/images/exporttoexcel.jpg" AlternateText="Export Results To Excel" causesvalidation="False">
						</asp:imagebutton>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Total Found: "></asp:Label>
                        <asp:Label runat="server" ID="lblTotalResults" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <div style="width:750px;">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="gvSuffixNames" runat="server"  Width = "750px"
                                                datakeyfield="ui_mr_product_name_uid"
                                                AutoGenerateColumns = "false" Font-Names = "Arial"
                                                Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B" 
                                                HeaderStyle-BackColor = "green" HeaderStyle-ForeColor = "White"
                                                AllowPaging ="false"  ShowFooter = "false" AllowSorting = "false"
                                                OnPageIndexChanging = "OnPaging" onrowediting="EditSuffixName" OnSorting = "OnSorting"
                                                onrowupdating="UpdateSuffixName"  onrowcancelingedit="CancelEdit"
                                                OnRowDataBound="RowDataBound" PageSize = "10" >
                                    <Columns>
                                        <asp:TemplateField ItemStyle-Width="60px" HeaderText="Biologic Suffix" SortExpression="U_NAME">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSuffixName" runat="server" Text='<%# Eval("U_NAME")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:Label ID="lblSuffixName2" Width="60px" runat="server" Text='<%# Eval("U_NAME")%>'></asp:Label>
                                            </EditItemTemplate> 
                                            <%--<FooterTemplate>
                                                <asp:TextBox ID="txtSuffixName" Width="60px" MaxLength="4" runat="server"></asp:TextBox>
                                            </FooterTemplate>--%>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-Width="100px" HeaderText="Application Number" SortExpression="APP_NUMBER">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAppNumber" runat="server" Text='<%# Eval("APP_NUMBER") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAppNumber" runat="server" Text='<%# Eval("APP_NUMBER") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <%--<FooterTemplate>
                                                <asp:TextBox ID="txtAppNumber" runat="server"></asp:TextBox>
                                            </FooterTemplate>--%>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-Width="125px" HeaderText="Status" SortExpression="STATUS">
                                            <ItemTemplate>
                                                <asp:Label ID="lblStatus" runat="server" Text='<%# If(Eval("STATUS").ToString() = "1", "Under Review", If(Eval("STATUS").ToString() = "2", "Approved", "Denied/Withdrawn") ) %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:RadioButtonList ID="rblStatus" runat="server" RepeatDirection="Vertical">
                                                    <asp:ListItem Value="1" Selected="True">Under Review</asp:ListItem>
                                                    <asp:ListItem Value="2" >Approved</asp:ListItem>
                                                    <asp:ListItem Value="3" >Denied/Withdrawn</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </EditItemTemplate>
                                            <%--<FooterTemplate>
                                                <asp:RadioButtonList ID="rblStatus" runat="server" RepeatDirection="Vertical">
                                                    <asp:ListItem Value="1" Selected="True">Under Review</asp:ListItem>
                                                    <asp:ListItem Value="2" >Approved</asp:ListItem>
                                                    <asp:ListItem Value="3" >Denied/Withdrawn</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </FooterTemplate>--%>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-Width="140px" HeaderText="Date Entered" SortExpression="DT_CREATED">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDateEntered" runat="server" Text='<%# Eval("DT_CREATED")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-Width="125px" HeaderText="Entered By" SortExpression="USER_NAME">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEnteredBy" runat="server" Text='<%# Eval("USER_NAME")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-Width="60px">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument = '<%# Eval("ui_mr_product_name_uid")%>'
                                                                OnClientClick = "return confirm('Are you sure you want to delete the selected biologic suffix?')"
                                                                Text="Delete" OnClick = "DeleteSuffixName">
                                                 </asp:LinkButton>
                                            </ItemTemplate>
                                            <%--<FooterTemplate>
                                                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="AddNewSuffixName" />
                                            </FooterTemplate>--%>
                                        </asp:TemplateField>
                                        <asp:CommandField  ShowEditButton="True" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="#C2D69B"  />
                                </asp:GridView>
                            </ContentTemplate>
                            <%--<Triggers>
                            <asp:AsyncPostBackTrigger ControlID = "gvSuffixNames" />
                            </Triggers>--%>
                            </asp:UpdatePanel>
                        </div>
                    </td>
                </tr>
            </table>

        </div>

    </form>
</body>
</html>
