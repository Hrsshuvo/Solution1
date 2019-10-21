<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientList.aspx.cs" Inherits="ClientWbe.ClientList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="SeaGreen" Width="997px">
        <asp:Label ID="Label1" runat="server" Text="Net Soft BD Client Info" Font-Size="XX-Large"></asp:Label>

          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 9px" HorizontalAlign="Center" Width="972px">
              <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ClientName" HeaderText="Name" SortExpression="ClientName" />
            <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
            <asp:BoundField DataField="ClientContruct" HeaderText="Contruct" SortExpression="ClientContruct" />
            <asp:BoundField DataField="ConpanyContruct" HeaderText="ConpanyContruct" SortExpression="ConpanyContruct" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="VisitingPurpose" HeaderText="Purpose" SortExpression="VisitingPurpose" />
            <asp:BoundField DataField="NextSheduleDate" DataFormatString="{0:dd/MM/yy}" HeaderText="Shedule" SortExpression="NextSheduleDate" />
            <asp:BoundField DataField="ProposalSubmissionDate" DataFormatString="{0:dd/MM/yy}" HeaderText="Proposal" SortExpression="ProposalSubmissionDate" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
              <EditRowStyle BackColor="#7C6F57" />
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" BorderStyle="Dotted" HorizontalAlign="Center" VerticalAlign="Middle" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" />
              <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#F8FAFA" />
              <SortedAscendingHeaderStyle BackColor="#246B61" />
              <SortedDescendingCellStyle BackColor="#D4DFE1" />
              <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClintDBConnectionString %>" DeleteCommand="DELETE FROM [tbl_ClientInfo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tbl_ClientInfo] ([Date], [ClientName], [CompanyName], [ClientContruct], [ConpanyContruct], [Address], [VisitingPurpose], [ProposalSubmissionDate], [NextSheduleDate]) VALUES (@Date, @ClientName, @CompanyName, @ClientContruct, @ConpanyContruct, @Address, @VisitingPurpose, @ProposalSubmissionDate, @NextSheduleDate)" SelectCommand="SELECT [Id], [Date], [ClientName], [CompanyName], [ClientContruct], [ConpanyContruct], [Address], [VisitingPurpose], [ProposalSubmissionDate], [NextSheduleDate] FROM [tbl_ClientInfo]" UpdateCommand="UPDATE [tbl_ClientInfo] SET [Date] = @Date, [ClientName] = @ClientName, [CompanyName] = @CompanyName, [ClientContruct] = @ClientContruct, [ConpanyContruct] = @ConpanyContruct, [Address] = @Address, [VisitingPurpose] = @VisitingPurpose, [ProposalSubmissionDate] = @ProposalSubmissionDate, [NextSheduleDate] = @NextSheduleDate WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="ClientName" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="ClientContruct" Type="String" />
            <asp:Parameter Name="ConpanyContruct" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="VisitingPurpose" Type="String" />
            <asp:Parameter DbType="Date" Name="ProposalSubmissionDate" />
            <asp:Parameter Name="NextSheduleDate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="ClientName" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="ClientContruct" Type="String" />
            <asp:Parameter Name="ConpanyContruct" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="VisitingPurpose" Type="String" />
            <asp:Parameter DbType="Date" Name="ProposalSubmissionDate" />
            <asp:Parameter Name="NextSheduleDate" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Panel>
    <%--<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>--%>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
<%--<script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>--%>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
<%--<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>--%>
<script type="text/javascript">
    $(function () {
        $('[id*=GridView1]').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
            "responsive": true,
            "sPaginationType": "full_numbers"
        });
    });
</script>
</asp:Content>
