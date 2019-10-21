<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ClientWbe.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
            <ContentTemplate>
                <asp:AdRotator ID="AdRotator1" runat="server" Height="250px" Width="910px" AdvertisementFile="~/SlidS.xml"></asp:AdRotator>
                <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
            </ContentTemplate>
        </div>     
    </form>
</body>
</html>
