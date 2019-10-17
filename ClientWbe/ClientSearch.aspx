<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientSearch.aspx.cs" Inherits="ClientWbe.ClientSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table align="center" 
        
        style="width: 54%; height: 238px; border: 1px solid #00FFFF; background-color: #F7ECB5; margin-left: 0px;">
        <tr>
            <td class="text-center" style="height: 151px; width: 14%;">
                <br />
                <br />
            </td>
            <td style="height: 151px; " class="text-center" colspan="3">
                <asp:Image ID="img" runat="server" style="max-height:200px;max-width:100%;height:auto;width:auto;" />
            </td>
            <td style="height: 151px; width: 25%;" class="text-center">
                <asp:TextBox ID="txtkk" runat="server" Text="1" Visible="false"></asp:TextBox>
            </td>
            <td style="height: 151px; width: 3%;" class="text-center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 14%" class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Search By Id"></asp:Label>
                </td>
            <td class="text-center" style="width: 23%">
                <asp:TextBox ID="txtId" runat="server" Width="131px" Text="0"></asp:TextBox>
            </td>
            <td class="text-left" colspan="3">
                <asp:Button ID="btnSeatch" runat="server" Text="Search" 
                    OnClick="btnSeatch_Click" />
            </td>
            <td class="text-left" style="width: 3%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 14%" class="text-right">&nbsp;Code</td>
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
            <td style="width: 14%" class="text-right">Client Name</td>
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
            <td style="width: 14%" class="text-right">Company Name</td>
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
            <td style="width: 14%" class="text-right">Main Adddess</td>
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
            <td style="width: 14%" class="text-right">
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

</asp:Content>
