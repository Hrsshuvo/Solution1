<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientAdded.aspx.cs" Inherits="ClientWbe.ClientAdded" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<%--    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
    <link media="screen" rel="stylesheet" href='http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css' />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
    <script type="text/javascript">
        /* Applied Responsive For Grid View using footable js*/
        $(function () {
            $('[id*=GridView1]').footable();
        });    
    </script>
<!------ Include the above in your HEAD tag ---------->
    <link href="CSS/StyleSheet2.css" rel="stylesheet" />

<div class="container register-form">
            <div class="form">
                <div class="note">
                    <p>Net Soft Client Info</p>
                </div>

                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Name" CssClass="form-control"></asp:Label>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Phone Number *" value=""/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Your Password *" value=""/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Confirm Password *" value=""/>
  
                            </div>
                        </div>
                          <div class="col-md-6">
                            <div class="form-group">
                                <asp:GridView ID="GridView1" CssClass="footable" runat="server" AutoGenerateColumns="False"
        Style="max-width: 500px" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
                                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                                        <asp:BoundField DataField="ClientContruct" HeaderText="ClientContruct" SortExpression="ClientContruct" />
                                        <asp:BoundField DataField="ConpanyContruct" HeaderText="ConpanyContruct" SortExpression="ConpanyContruct" />
                                    </Columns>
    </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ClintDBConnectionString %>" SelectCommand="SELECT [ClientName], [CompanyName], [ClientContruct], [ConpanyContruct] FROM [tbl_ClientInfo]"></asp:SqlDataSource>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=GridView1]').footable();
        });
    </script>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClintDBConnectionString %>" SelectCommand="SELECT [ClientName], [CompanyName], [ConpanyContruct], [ClientContruct] FROM [tbl_ClientInfo]"></asp:SqlDataSource>
                            </div>                           
                        </div>
                    </div>
                    <button type="button" class="btnSubmit">Submittton>
                </div>
            </div>
        </div>
</asp:Content>
