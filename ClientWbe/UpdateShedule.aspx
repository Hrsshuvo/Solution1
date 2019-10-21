﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateShedule.aspx.cs" Inherits="ClientWbe.UpdateShedule" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <%--  <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>--%>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 150px">
                    <Columns>
                        <asp:BoundField DataField="ClientName" HeaderText="Client Name" />
                        <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                        <asp:BoundField DataField="ClientContruct" HeaderText="Client Contruct" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="NextSheduleDate" HeaderText="Next Shedule Date" DataFormatString="{0:dd/MM/yy}" />

                        <asp:BoundField DataField="Id" HeaderText="Id" />

                        <asp:CommandField SelectText="Edit" ShowSelectButton="True" />

                    </Columns>
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
                <asp:Panel ID="Panel1" runat="server" Height="207px" >
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
                    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="LinkButton1" PopupControlID="Panel1" CancelControlID="btnCancle" BackgroundCssClass="modalBackground"></cc1:ModalPopupExtender>

           </td>
                </td>
        </tr>
    </table>
     
</asp:Content>