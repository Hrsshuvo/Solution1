<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ClientWbe.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />
       <table align="center" cellpadding="5" cellspacing="5" style="width: 72%; height: 688px; border: 1px solid #D58512; background-color: #2E6DA4">
        <tr>
            <td class="text-center" colspan="5">
                <asp:Label ID="Label3" runat="server" Text="Marketig  Shedule Today" Font-Size="XX-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="text-justify">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-left: 150px; margin-top: 0px;" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="16px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Number">
                        <ItemTemplate>
                        <%# Container.DisplayIndex+1 %>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ClientName" HeaderText="ClientName" />
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
                        <asp:BoundField DataField="ClientContruct" HeaderText="ClientContruct" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="NextSheduleDate" HeaderText="NextSheduleDate" DataFormatString="{0:dd/MM/yy}" />

                        <asp:BoundField DataField="Id" HeaderText="Id" />

                        <asp:CommandField SelectText="Going / Cencle" ShowSelectButton="True" />

                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                </td>
            <td>
                &nbsp;</td>
            <td class="text-justify">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="5" style="height: 420px">
                <asp:Label ID="Label4" runat="server" Text="Going List Today" Font-Size="XX-Large"></asp:Label>
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" style="margin-left: 169px" Width="558px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Number">
                        <ItemTemplate>
                        <%# Container.DisplayIndex+1 %>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ClientName" HeaderText="ClientName" />
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="ClientContruct" HeaderText="ClientContruct" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:BoundField DataField="NextSheduleDate" HeaderText="SheduleDate" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Time" HeaderText="Time" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblMessege" runat="server" Text=""></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Panel ID="Panel1" runat="server" Height="207px" Style="display:block;">
                    <table style="width: 100%; border: 1px solid #00FFFF; background-color: #66AFE9">
                        <tr>
                            <td style="width: 166px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 166px">ClientName</td>
                            <td>
                                <asp:TextBox ID="txtClientName" runat="server" Width="555px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 166px">Comany Name</td>
                            <td>
                                <asp:TextBox ID="txtCompanyName" runat="server" Width="555px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 166px">Client Contruct</td>
                            <td>
                                <asp:TextBox ID="txtClientContuct" runat="server" Width="555px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 166px">Address</td>
                            <td>
                                <asp:TextBox ID="txtAdress" runat="server" Width="555px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 166px">Next Shedule Date</td>
                            <td>
                                <asp:TextBox ID="txtDate" runat="server" Width="555px" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 166px">Status</td>
                            <td>
                                <asp:DropDownList ID="dropProposalSubmission" runat="server" Height="17px" Width="135px" AutoPostBack="true" OnSelectedIndexChanged="dropProposalSubmission_SelectedIndexChanged">
                                    <asp:ListItem Selected="False" Value="0" >Select</asp:ListItem>
                                    <asp:ListItem Value="1">Going</asp:ListItem>
                                    <asp:ListItem Value="2">Cencle</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="txtTime" runat="server" TextMode="Time"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 166px">Note</td>
                            <td>
                                <asp:TextBox ID="txtNote" runat="server" Width="555px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 166px">
                                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick = "Save" />
                                <asp:Button ID="btnCancle" runat="server" Text="Close" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <td>
           <td>
               <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="btnCancle" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>
           </td>
                </td>
        </tr>
    </table>
       <br />
       </asp:Content>
