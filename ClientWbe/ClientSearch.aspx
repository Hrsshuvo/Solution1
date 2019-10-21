<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientSearch.aspx.cs" Inherits="ClientWbe.ClientSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="RosyBrown">
        <table>
        <tr>
            <td class="text-center" style="height: 43px; " colspan="7">
                <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Client Search Detals"></asp:Label>
            </td>
        </tr>
            <tr>
                <td class="text-justify" style="height: 44px; ">&nbsp;</td>
                <td class="text-justify" colspan="5" style="height: 44px; ">
                    <asp:TextBox ID="txtId" runat="server" Text="0" Width="80%"></asp:TextBox>
                    <asp:Button ID="btnSeatch0" runat="server" OnClick="btnSeatch_Click" Text="Search" Width="20%" />
                </td>
                <td class="text-center" style="height: 44px; width: 3%;"></td>
            </tr>
            <tr>
                <td class="text-center" colspan="2" style="height: 151px; width: 14%;">
                    <br />
                    <br />
                </td>
                <td class="text-center" colspan="3" style="height: 151px; ">
                    <asp:Image ID="img" runat="server" style="max-height:200px;max-width:100%;height:auto;width:auto;" />
                </td>
                <td class="text-center" style="height: 151px; width: 25%;">
                    <asp:TextBox ID="txtkk" runat="server" Text="1" Visible="false"></asp:TextBox>
                </td>
                <td class="text-center" style="height: 151px; width: 3%;">&nbsp;</td>
            </tr>
        <tr>
            <td style="width: 14%" class="text-right" colspan="2">
                &nbsp;</td>
            <td class="text-center" style="width: 23%">
                &nbsp;</td>
            <td class="text-left" colspan="3">
                &nbsp;</td>
            <td class="text-left" style="width: 3%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 14%" class="text-right" colspan="2">&nbsp;Code</td>
            <td style="width: 23%">
                <asp:TextBox ID="txtCode" runat="server" Width="133px"></asp:TextBox>
            </td>
            <td style="width: 128px" colspan="2" class="text-right">Date</td>
            <td style="width: 25%">
                <asp:TextBox ID="txtDate" runat="server" Width="133px"></asp:TextBox>
            </td>
            <td style="width: 3%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 14%" class="text-right" colspan="2">Client Name</td>
            <td style="width: 128px" colspan="2">
                <asp:TextBox ID="txtClientName" runat="server" Width="133px"></asp:TextBox>
            </td>
            <td style="width: 12%" class="text-right">Client Mobile</td>
            <td style="width: 25%">
                <asp:TextBox ID="txtClientNobile" runat="server" Width="133px"></asp:TextBox>
            </td>
            <td style="width: 3%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 14%" class="text-right" colspan="2">Company Name</td>
            <td style="width: 128px" colspan="2">
                <asp:TextBox ID="txtCompantName" runat="server" Width="133px"></asp:TextBox>
            </td>
            <td style="width: 12%" class="text-right">Company Mobile</td>
            <td style="width: 25%">
                <asp:TextBox ID="txtCompanyMobile" runat="server" Width="133px"></asp:TextBox>
            </td>
            <td style="width: 3%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 14%" class="text-right" colspan="2">Main Adddess</td>
            <td style="width: 128px" colspan="2">
                <asp:TextBox ID="txtMainAddress" runat="server" Width="133px"></asp:TextBox>
            </td>
            <td style="width: 12%" class="text-right">Parnament Adress</td>
            <td style="width: 25%">
                <asp:TextBox ID="txtParnamentAddress" runat="server" Width="133px"></asp:TextBox>
            </td>
            <td style="width: 3%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 14%" class="text-right" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Previus" OnClick="Button1_Click" />
            </td>
            <td style="width: 128px" colspan="2">&nbsp;</td>
            <td style="width: 12%">&nbsp;</td>
            <td style="width: 25%">
                <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
            </td>
            <td style="width: 3%">
                &nbsp;</td>
        </tr>
    </table>

    </asp:Panel>
    

</asp:Content>
