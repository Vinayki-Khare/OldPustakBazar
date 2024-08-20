<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="ViewBooks.aspx.cs" Inherits="ADMIN_ViewBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:Label ID="lblmsg" runat="server" ></asp:Label>
        <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" DataKeyNames="BookId" ForeColor="#333333" GridLines="None" Width="100%" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="BookId" HeaderText="BookId" InsertVisible="False" ReadOnly="True" SortExpression="BookId" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image  ID="img1" Height="200px" Width="200px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button12" runat="server" CssClass="btn btn-default" Text="Delete" CommandName="DEL" CommandArgument='<%#Eval("BookId") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
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
    </div>
</asp:Content>

