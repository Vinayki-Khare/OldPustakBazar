<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="ViewOrders.aspx.cs" Inherits="ADMIN_ViewOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1220px">
        <AlternatingRowStyle BackColor="White" />  
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
            <asp:BoundField DataField="BookId" HeaderText="BookId" SortExpression="BookId" />
            <asp:BoundField DataField="Id" HeaderText="UserId" SortExpression="UserId" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:CheckBoxField DataField="IsDone" HeaderText="IsDone" SortExpression="IsDone" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [OrderTable]"></asp:SqlDataSource>
</asp:Content>

