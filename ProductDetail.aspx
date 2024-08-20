<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron text-center">
        <h1>Product Detail</h1>
        <asp:HiddenField ID="hfid" runat="server" />
        <asp:Label ID="hflblmsg" runat="server" Font-Bold="true" Font-Size="Large" ></asp:Label>
    </div>
    <div class="container">
        <div class="row">
            <asp:Image ID="Pimage" runat="server" CssClass="img-responsive"  />
            <br />
            <asp:Label ID="lblBookName" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
            <br />
            <asp:Label ID="lblPrice" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
            <br />
            <%--<asp:Label ID="lblDesc" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
            <br />--%>
            <asp:Button ID="Buybtn" runat="server" Text="Buy" CssClass="btn btn-success" OnClick="Buybtn_Click" />
            <asp:Label ID="buylbl" runat="server" ></asp:Label>
            <br /><br />
            

            

        </div>
    </div>
</asp:Content>

