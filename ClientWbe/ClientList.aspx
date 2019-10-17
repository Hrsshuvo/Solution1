<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientList.aspx.cs" Inherits="ClientWbe.ClientList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h4>Client List</h4>
    <div class="form-group">
        <div class="col-md-10">
            &nbsp;</div>
    </div>
    <div class="form-horizontal">
        <hr />
        <div class="form-group">
            <div class="card" style="border-top-color: red; border-top-style: solid; border-width: 2px">
                <div class="card-body card-block">
                    <div class="form-group">
                        <asp:GridView ID="ClientListGridView" runat="server" Font-Size="Small" 
                            DataKeyNames="Code" EmptyDataText="No Items Available Now" Width="100%" 
                            CssClass="table table-striped table-bordered table-hover" 
                            AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="10" ForeColor="Black" 
                            GridLines="Horizontal" CellSpacing="1" 
                            OnSelectedIndexChanged="ClientListGridView_SelectedIndexChanged" 
                            OnRowCommand="ClientListGridView_RowCommand" 
                            OnRowDeleting="ClientListGridView_RowDeleting">
                            <Columns>
                                <asp:BoundField DataField="Date" HeaderText="Date" />
                                <asp:BoundField DataField="Code" HeaderText="Code" />
                                <asp:BoundField DataField="ClientName" HeaderText="Client Name" />
                                <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                <asp:BoundField DataField="ClientContruct" HeaderText="Client Mobile" />
                                <asp:BoundField DataField="ConpanyContruct" HeaderText="Conpany Mobile" />
                                <asp:BoundField DataField="Address" HeaderText="Address" />
                                <asp:BoundField DataField="ParnamentAddress" HeaderText="Parnament Address" />
                                <asp:CommandField SelectText="Edit" ShowSelectButton="True">
                                    <ItemStyle ForeColor="#CC0000" />
                                </asp:CommandField>
                                <asp:ButtonField CommandName="Code" Text="Details">
                                    <ControlStyle ForeColor="#990099" />
                                </asp:ButtonField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:ImageButton ImageUrl="~/img/delete.png" OnClientClick="return confirm('Are You Sure Delete This Client')" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Id" HeaderText="Id" Visible="False" />
                            </Columns>
                            <PagerStyle Font-Bold="true" Font-Size="Small" ForeColor="#3399FF" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(function () {
            $('[id*=ClientListGridView]').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                "responsive": true,
                "sPaginationType": "full_numbers"
            });
        });
    </script>
</asp:Content>
