<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="Add_Books.aspx.cs" Inherits="ADMIN_Add_Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="box-shadow: 3px 3px 3px 3px #d6d4d4; background-color: white; margin: 2%; padding: 5%; align-content: center;">
            <div class="container">
                <h1 style="color: Black;">Add Book</h1>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Book Name</span>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Book Name" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Book Price</span>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Book Price" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Select Category</span>
                            <asp:DropDownList ID="drdcategory" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryId"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CategoryId], [CategoryName] FROM [CategoryTable]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <br />
                <br />

                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <span>Choose Book Image</span>
                            <asp:FileUpload ID="Pimage" runat="server" />
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Button ID="Add_Button" runat="server" Text="Add" class="form-control" CssClass="danger" OnClick="Add_Button_Click"  Width="80px" Height="25px" style="background:#27ae60;"/>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

