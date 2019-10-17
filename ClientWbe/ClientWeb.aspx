<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientWeb.aspx.cs" Inherits="ClientWbe.ClientWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 69%;
            border: 1px solid #000000;
            background-color: #008000;
        }
        .auto-style5 {
            width: 230px;
        }
        .auto-style7 {
            width: 278px;
            text-align: center;
        }
        .auto-style9 {
            width: 123px;
        }
        .auto-style10 {
            width: 132px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 230px;
            text-align: center;
        }
        .auto-style13 {
            width: 34%;
            border: 5px solid #FF0000;
            background-color: #00FF00;
            height: 188px;
        }
        .auto-style14 {
            width: 231px;
        }
        .auto-style15 {
            width: 253px;
        }
        .auto-style18 {
            height: 23px;
            text-align: center;
        }
        .auto-style20 {
            height: 44px;
            text-align: center;
        }
        .auto-style21 {
            width: 123px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" cellpadding="6" cellspacing="5" class="auto-style1">
                <tr>
                    <td class="auto-style11" colspan="4">
                        <asp:Label ID="Label1" runat="server" ForeColor="#FFFF66" Text="Net Soft Bd Client Info"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21" style="align-content:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Code:<asp:TextBox ID="txtCode" CssClass="auto-style9" runat="server" AutoPostBack="true" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style7">Date:<asp:TextBox ID="txtDate" runat="server" AutoPostBack="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Client Name</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtClientName" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">Client Contruct:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtClientNumber" runat="server" Width="260px" MaxLength="11"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="Red" ErrorMessage="Please Valid Number Use" ControlToValidate="txtClientNumber" ValidationExpression="^([0-9]{11})$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Company Name:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtcompanyName" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">Cpmpany Mobile</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCompanyNumber" runat="server" Width="261px" MaxLength="11"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" BackColor="Red" ErrorMessage="Please Valid Number Use" ControlToValidate="txtCompanyNumber" ValidationExpression="^([0-9]{11})$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Company Main Address</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtMainAddress" runat="server" Height="16px" Width="211px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style10">Company Parnament Address:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtParnamentAddress" runat="server" Width="259px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblMessage" runat="server" Text="" BackColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>

        </div>
        <table align="center" class="auto-style13">
            <tr>
                <td class="auto-style18" colspan="3">Attach File</td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtFileName" runat="server" Width="140px" Text="File Name"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnAddImage" runat="server" Text="Add" OnClick="btnAddImage_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Image" HeaderText="File" />
                            <asp:BoundField DataField="Name" HeaderText="FileName" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style18">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
