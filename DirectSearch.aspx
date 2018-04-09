<%@ Register TagPrefix="cc1" Namespace="PPC.FDA.Controls" Assembly="PPC.FDA.Controls.FDAGrid" %>
<%@ Register TagPrefix="uc1" TagName="TrackingHeader" Src="TrackingHeader.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DirectSearch.aspx.vb" Inherits="PPC.DirectSearch1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
    <title>Direct Search</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
	<meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
	<meta name="vs_defaultClientScript" content="JavaScript" />
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
	<link href="Styles.css" type="text/css" rel="stylesheet" />
	<script language="javascript" src="scripts.js" type="text/javascript"></script>

    <%--<link href="Styles.css" type="text/css" rel="stylesheet" />
    <script language="javascript" src="scripts.js" type="text/javascript"></script>--%>

    <style type="text/css">
    .SearchBox {
	    FONT: 14px Verdana, Geneva, Arial, Helvetica, sans-serif; 
    }
    #DirectSearchTable TD {
	    VERTICAL-ALIGN: top
    }
    #DirectSearchTable TH {
	    BACKGROUND: navy; COLOR: white; TEXT-ALIGN: left
    }
    </style>

</head>

<body MS_POSITIONING="GridLayout">
	<form id="Form1" method="post" runat="server">
		<uc1:trackingheader id="trackingHeaderControl" runat="server" title="Direct Search" location="<a href='Home.aspx' title='Home' style='font-size: 14px; font-weight: bold; '>Return To Home Page</a>" />

        <asp:Panel runat="server" DefaultButton="SearchSubmit" style="left:110px; top:140px; position:absolute;" >
        <div class="SearchBox">
	        <table id="DirectSearchTable">
		        <tr>
			        <th colspan="2">
				        Multiple Name Direct Search
                    </th>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
			        <td>
			            <asp:Label ID="lblCandidateDrug" runat="server" AssociatedControlID="txtCandidateDrug" Text="Candidate Drug:"/>
                    </td>
			        <td>
                        <asp:textbox id="txtCandidateDrug" runat="server" MaxLength="40" Columns="20" style="font-family:Tahoma, Verdana, Arial;"></asp:textbox>
                    </td>
		        </tr>
		        <tr>
			        <td style="vertical-align:top;">
			            <asp:Label ID="lblComparatorDrug" runat="server" AssociatedControlID="txtComparatorDrug" Text="Comparator Drugs:"/>
                    </td>
			        <td>
                        <asp:textbox id="txtComparatorDrug" runat="server" TextMode="MultiLine" Rows="6" Columns="120" style="font-family:Tahoma, Verdana, Arial;"></asp:textbox>
                        &nbsp;
                        <a href="#" onclick="alert('Use commas between drug names in the Comparator Drugs textbox. Do not include drug names that have a comma within the name.');">
                            <img style="vertical-align:top;" border="0" alt="More Information" src="Images/Information_20.png" />
                        </a>
                    </td>
		        </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
			        <td colspan="2">
                        <asp:imagebutton id="SearchReset" onmouseover="Swap(this, reset2);" onmouseout="Swap(this, reset1);" 
					        runat="server" imageurl="images/reset.jpg" alternatetext="Clear Search">
                        </asp:imagebutton> 
   				        <asp:imagebutton id="SearchSubmit" onmouseover="Swap(this, submit2);" onmouseout="Swap(this, submit1);"
					        runat="server" imageurl="images/submit.jpg" alternatetext="Direct search">
                        </asp:imagebutton>
                        &nbsp;&nbsp;
						<asp:imagebutton id="btnExportToExcel" onmouseover="Swap(this, exporttoexcel2)" onmouseout="Swap(this, exporttoexcel1)"
							Runat="server" ImageUrl="~/images/exporttoexcel.jpg" AlternateText="Export Results To Excel" causesvalidation="False">
						</asp:imagebutton>
			        </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label id="lblValidate" runat="server" ForeColor="Red" Visible="False" Text="">							
				        </asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>


                <tr>
                    <td colspan="2">
                        <div class="SearchBox" id="divScoreResults" runat="server">

                            <asp:label id="gridHeaderLabel" runat="server" CssClass="gridHeader" />
					        <cc1:fdagrid id="gridScoreResults" Runat="server" Width="100%" UseAccessibleHeader="True" Font-Size="120%"><AlternatingItemStyle BackColor="#E0E0E0"></AlternatingItemStyle><ItemStyle BackColor="White"></ItemStyle><HeaderStyle HorizontalAlign="Center" BackColor="Blue" Font-Bold="True" ForeColor="White" Font-Size="Larger"></HeaderStyle><columns><asp:boundcolumn HeaderStyle-HorizontalAlign="Left" 
											         HeaderText="Drug Name Pair" 
											         SortExpression="DrugNamePair" 
											         DataField="DrugNamePair" 
											         HeaderStyle-Width="25%" ><HeaderStyle HorizontalAlign="Left" Width="25%"></HeaderStyle></asp:boundcolumn><asp:boundcolumn HeaderStyle-HorizontalAlign="Left" 
											         HeaderText="Orthographic Score %" 
											         SortExpression="OrthoScore" 
											         DataField="OrthoScore" 
											         HeaderStyle-Width="28%" ><HeaderStyle HorizontalAlign="Left" Width="25%"></HeaderStyle></asp:boundcolumn><asp:boundcolumn HeaderStyle-HorizontalAlign="Left" 
											         HeaderText="Phonetic Score %" 
											         SortExpression="PhoneticScore" 
											         DataField="PhoneticScore" 
											         HeaderStyle-Width="22%" ><HeaderStyle HorizontalAlign="Left" Width="25%"></HeaderStyle></asp:boundcolumn><asp:boundcolumn HeaderStyle-HorizontalAlign="Left" 
											         HeaderText="Combined Score %" 
											         SortExpression="CombinedScore" 
											         DataField="CombinedScore" 
											         HeaderStyle-Width="25%" ><HeaderStyle HorizontalAlign="Left" Width="25%"></HeaderStyle></asp:boundcolumn></columns></cc1:fdagrid>

                        </div>
                    </td>
                </tr>
       
            </table>
        </div>
        </asp:Panel>
            
    </form>
</body>
</html>
