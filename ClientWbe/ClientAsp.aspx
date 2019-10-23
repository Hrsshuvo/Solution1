<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientAsp.aspx.cs" Inherits="ClientWbe.ClientAsp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--    <form id="form1" runat="server">--%>
    <asp:Panel ID="Panel1" runat="server" BackColor="RoyalBlue" Height="1004px">
         <div>

            <table align="center" cellpadding="6" cellspacing="5" class="auto-style1" style="height: 334px">
                <tr>
                    <td class="text-center">
                        &nbsp;</td>
                    <td class="text-center" colspan="4">
                        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#FFFF66" Text="Net Soft Bd Client Info"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21" style="align-content:center">&nbsp;</td>
                    <td class="auto-style21" style="align-content:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Code:<asp:TextBox ID="txtCode" runat="server" AutoPostBack="true" CssClass="auto-style9" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style7">Date:<br /> <asp:TextBox ID="txtDate" runat="server" AutoPostBack="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
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
                    <td class="auto-style9">&nbsp;</td>
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
                    <td class="auto-style9">&nbsp;</td>
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
                    <td class="auto-style9">Visiting Purpose</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="dropVisitingPurpose" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Web</asp:ListItem>
                            <asp:ListItem>Software</asp:ListItem>
                            <asp:ListItem>Domain &amp; Hosting</asp:ListItem>
                            <asp:ListItem>Server</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10">Next Shedule Date</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="dropNextShedule" runat="server" Height="17px" Width="135px" OnSelectedIndexChanged="dropMathod_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Selected="False" Value="0" >Next Shedule</asp:ListItem>
                                    <asp:ListItem Value="1"> Yes </asp:ListItem>
                                    <asp:ListItem Value="2"> No </asp:ListItem>
                                </asp:DropDownList>
                        <asp:TextBox ID="txtNextShedule" runat="server" MaxLength="11" Width="261px" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">Proposal Submission</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="dropProposalSubmission" runat="server" Height="17px" Width="135px" AutoPostBack="true" OnSelectedIndexChanged="dropProposalSubmission_SelectedIndexChanged">
                                    <asp:ListItem Selected="False" Value="0" >Proposal</asp:ListItem>
                                    <asp:ListItem Value="1"> Yes </asp:ListItem>
                                    <asp:ListItem Value="2"> No </asp:ListItem>
                                </asp:DropDownList>
                        <asp:TextBox ID="txtProposalSubmissionDate" runat="server" MaxLength="11" TextMode="Date" Width="261px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">Note</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" Width="259px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblMessage" runat="server" BackColor="Red" Text=""></asp:Label>
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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="ClientId" HeaderText="Id" />
                            <asp:BoundField DataField="Name" HeaderText="FileName" />
                        <asp:TemplateField HeaderText="ImagePreview">
                        <FooterStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="20%" Height="25PX"></ItemStyle>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="31px" Width="32px" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
         <div class="text-center">
             <br />
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" style="margin-left: 43px" Width="1060px">
                 <Columns>
                     <asp:BoundField DataField="Id" HeaderText="Id" />
                     <asp:BoundField DataField="ClientName" HeaderText="Client Name" />
                     <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                     <asp:BoundField DataField="ClientContruct" HeaderText="Client Contruct" />
                     <asp:BoundField DataField="Address" HeaderText="Address" />
                     <asp:BoundField DataField="ParnamentAddress" HeaderText="Parnament Address" />
                     <asp:BoundField DataField="VisitingPurpose" HeaderText="Visiting Purpose" />
                     <asp:BoundField DataField="NextShedule" HeaderText="NextShedule" />
                     <asp:BoundField DataField="NextSheduleDate" HeaderText="NextSheduleDate" />
                     <asp:BoundField DataField="ProposalSubmission" HeaderText="ProposalSubmission" />
                     <asp:BoundField DataField="ProposalSubmissionDate" HeaderText="ProposalSubmissionDate" />
                     <asp:BoundField DataField="Note" HeaderText="Note" />
                     <asp:BoundField DataField="ConpanyContruct" HeaderText="Conpany Contruct" />
                     <asp:CommandField HeaderText="Edit" ShowSelectButton="True" />
                 </Columns>
             </asp:GridView>
         </div>
    </asp:Panel>
<%--    </form>--%>
</asp:Content>
