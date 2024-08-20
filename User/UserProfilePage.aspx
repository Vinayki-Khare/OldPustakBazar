<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserProfilePage.aspx.cs" Inherits="User_UserProfilePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="jumbrotron">
        <h3>Order List</h3>
    </div>
    <div class="row">
        <div class="col-12">
            <asp:GridView ID="gvlist" runat="server" AutoGenerateColumns="False" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <%# Container.DisplayIndex +1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="BookName" HeaderText="Name" />
                    <asp:BoundField DataField="BookPrice" HeaderText="Price" />
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image alt="" runat="server" ID="Image2" Visible='<%# Eval("BookImage").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("BookImage").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("BookImage")) %> ' class="img-responsive" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

