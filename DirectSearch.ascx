<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="DirectSearch.ascx.vb" Inherits="PPC.DirectSearch" %>
<script language="javascript" src="scripts.js" type="text/javascript"></script>
<noscript  style="color:Red;font-weight: bold; font-size:medium;">Your browser does not support JavaScript!</noscript>

<style type="text/css">.SearchBox {
	FONT: 10px Verdana, Geneva, Arial, Helvetica, sans-serif; WIDTH: 310px
}
#DirectSearchTable {
	WIDTH: 340px
}
#DirectSearchTable TD {
	VERTICAL-ALIGN: top
}
#DirectSearchTable TH {
	BACKGROUND: navy; COLOR: white; TEXT-ALIGN: left
}
#ResultSearchTable {
	WIDTH: 300px
}
#ResultSearchTable TD {
	VERTICAL-ALIGN: top
}
#ResultSearchTable TH {
	BACKGROUND: navy; COLOR: white; TEXT-ALIGN: left
}
#MultipleDirectSearchTable {
	WIDTH: 340px
}
#MultipleDirectSearchTable TD {
	VERTICAL-ALIGN: top
}
#MultipleDirectSearchTable TH {
	BACKGROUND: navy; COLOR: white; TEXT-ALIGN: left
}
</style>


<div class="SearchBox">
	<table id="MultipleDirectSearchTable">
		<tr>
			<th colspan="2">
				<asp:label id="Label1" Runat="server">Multiple Name Direct Search</asp:label>
            </th>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
			<td colspan="2">
   				<asp:button id="btnMultipleDirectSearch"  Text="Open Direct Search Page" runat="server" >
                </asp:button>
                <%--<asp:imagebutton id="MultipleDirectSearch" onmouseover="Swap(this, submit2);" onmouseout="Swap(this, submit1);"
					runat="server" imageurl="images/submit.jpg" alternatetext="Multiple Direct search">
                </asp:imagebutton>--%>
			</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>

<asp:Panel runat="server" DefaultButton="SearchSubmit">
<div class="SearchBox">
	<table id="DirectSearchTable">
		<tr>
			<th colspan="2">
				<asp:label id="lblTitle" Runat="server">Single Name Direct Search</asp:label>
            </th>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
		<tr>
			<td>
			    <asp:Label ID="lblCandidateDrug" runat="server" AssociatedControlID="txtCandidateDrug" Text="Candidate Drug:"/>
            </td>
			<td>
                <asp:textbox id="txtCandidateDrug" runat="server" MaxLength="40" Columns="20"></asp:textbox>
            </td>
		</tr>
		<tr>
			<td>
			    <asp:Label ID="lblComparatorDrug" runat="server" AssociatedControlID="txtComparatorDrug" Text="Comparator Drug:"/>
            </td>
			<td>
                <asp:textbox id="txtComparatorDrug" runat="server" MaxLength="40" Columns="20"></asp:textbox>
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
    </table>
</div>
</asp:Panel>
<div class="SearchBox" id="divScoreResults" runat="server">
	<table id="ResultSearchTable">
		<tr>
			<td style="width:130px;">
			    <asp:Label ID="lblCombinedScore" runat="server" AssociatedControlID="lblCombinedScoreVal" Text="Combined Score:"/>
            </td>
			<td>
                <asp:Label ID="lblCombinedScoreVal" runat="server" Text="" Font-Bold="true" />
                <%--<asp:textbox id="txtCombinedScore" runat="server" Columns="20" BorderStyle="None" ReadOnly="true" Enabled="false" BackColor="White" ForeColor="Blue" Font-Bold="true" ></asp:textbox>--%>
            </td>
		</tr>
		<tr>
			<td>
			    <asp:Label ID="lblPhoneticScore" runat="server" AssociatedControlID="lblPhoneticScoreVal" Text="Phonetic Score:"/>
            </td>
			<td>
                <asp:Label ID="lblPhoneticScoreVal" runat="server" Text="" Font-Bold="true" />
                <%--<asp:textbox id="txtPhoneticScore" runat="server" Columns="20" BorderStyle="None" ReadOnly="true" Enabled="false" BackColor="White" ForeColor="Blue" Font-Bold="true" ></asp:textbox>--%>
            </td>
		</tr>
		<tr>
			<td>
			    <asp:Label ID="lblOrthoScore" runat="server" AssociatedControlID="lblOrthoScoreVal" Text="Orthographic Score:"/>
            </td>
			<td>
                <asp:Label ID="lblOrthoScoreVal" runat="server" Text="" Font-Bold="true" />
                <%--<asp:textbox id="txtOrthoScore" runat="server" Columns="20" BorderStyle="None" ReadOnly="true" Enabled="false" BackColor="White" ForeColor="Blue" Font-Bold="true" ></asp:textbox>--%>
            </td>
		</tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
<div>&nbsp;</div>
