<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IndexPage.aspx.cs" Inherits="IndexPage" %>

<%--<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>--%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="slider">
        <figure>
            <img src="Photos/shareimage.jpg" width="600" height="442" alt="#" />
            <img src="Photos/weee.jpg" width="600" height="442" alt="#"/>
            <img src="Photos/lovestory.jpg" width="600" height="442" alt="#" />
            <img src="Photos/horrorhost.jpg" width="600" height="442" alt="#" />
            <img src="Photos/nature1.jpg" width="600" height="442" alt="#" />

        </figure>
    </div>
    <%--    <div class="jumbotron" style="background-color:#ffffff;">--%>

    <div class="container">
        <div class="row">

            <div class="col-md-6 col-lg-offset-3">
                <br />
                <asp:TextBox runat="server" ID="txtsearch" CssClass="form-control" Placeholder="Search here"></asp:TextBox>
            </div>
            <div class="col-md-2" style="margin-top: 10px;">
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-block btn-success" OnClick="txtSearch_Click" Height="34px" />
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <br />
            <asp:Label ID="lgmsg" runat="server"></asp:Label>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <asp:Image ID="Image1" runat="server" Visible='<%# Eval("BookImage").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("BookImage").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("BookImage")) %> ' class="img-responsive" Style="max-width: 300px;" />
                        <%# Eval("BookName") %>
                        <br />
                        <%# Eval("BookPrice") %>
                        <br />
                        <a href="ProductDetail.aspx?ID=<%# Eval("BookId") %>" class="btn btn-default">View</a>
                        <br />
                        <br />
                    </div>


                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <%--<asp:Label ID="lgmsg" runat="server" Text="Label"></asp:Label>--%>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-md-4">
                        <asp:Image ID="Image1" runat="server" Visible='<%# Eval("BookImage").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("BookImage").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("BookImage")) %> ' class="img-responsive" Style="max-width: 300px;" />
                        <%# Eval("BookName") %>
                        <br />
                        <%# Eval("BookPrice") %>
                        <br />
                        <a href="ProductDetail.aspx?ID=<%# Eval("BookId") %>" class="btn btn-default">View</a>
                        <br />
                        <br />
                    </div>


                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [BookId], [BookName], [BookImage], [BookPrice] FROM [Add_Books]"></asp:SqlDataSource>
        </div>
    </div>
    <div class="main">
        <div class="steps-block steps-block-red" style="background-color: #eee;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 steps-block-col">
                        <i class="fa fa-truck"></i>
                        <div>
                            <h2>Free shipping</h2>
                            <em>On order over &#8377;599</em>
                        </div>
                        <span>&nbsp;</span>
                    </div>
                    <div class="col-md-4 steps-block-col">
                        <i class="fa fa-truck"></i>
                        <div>
                            <h2>Replacement</h2>
                            <em>15 days easy replacement</em>
                        </div>
                        <span>&nbsp;</span>
                    </div>
                    <div class="col-md-4 steps-block-col">
                        <i class="fa fa-phone"></i>
                        <div>
                            <h2>+91-7828300319</h2>
                            <em>Customer care available</em>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <center>
			<br/><br/>
			<span class="h1">All Books Pass Our Quality Control Test</span><br/><br/>
			<span class="h4">The Old Pustak Bazar books difference is not just low prices on used books; It’s a Quality Guarantee.</span><br/><br/>
			<p>Between saving books and shipping, a staff member personally handles each and every volume. </p>
			<p>Like you, our team has very high standards. You should know exactly what to expect when your purchase arrives.</p><br/>
			<br/>
			<img src="Content/f3.png" class="img-responsive" alt="Berry Lace Dress"/>
		</center>
    </div>
    <%--    </div>--%>
</asp:Content>




