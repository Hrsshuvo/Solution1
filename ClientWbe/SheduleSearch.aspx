<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SheduleSearch.aspx.cs" Inherits="ClientWbe.SheduleSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table align="center" cellpadding="5" cellspacing="5" style="width: 72%; height: 266px; border: 1px solid #D58512; background-color: #2E6DA4">
        <tr>
            <td class="text-center" colspan="5">
                <asp:Label ID="Label3" runat="server" Text="Client Next Shedule Search" Font-Size="XX-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="From Date"></asp:Label>
            </td>
            <td class="text-justify">
                <asp:TextBox ID="txtFromDate" runat="server" Width="289px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="To Date"></asp:Label>
            </td>
            <td class="text-justify">
                <asp:TextBox ID="txtToDate" runat="server" Width="252px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"/>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-left: 104px">
                    <Columns>
                        <asp:BoundField DataField="ClientName" HeaderText="Client Name" />
                        <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                        <asp:BoundField DataField="ClientContruct" HeaderText="Client Contruct" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="NextSheduleDate" DataFormatString="{0:dd/MM/yy}" HeaderText="Next Shedule Date" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblMessege" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
