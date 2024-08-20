<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="vh-100" style="background-color: #eee;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Register</p>



                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example1c">Your Name</label>
                                                <asp:TextBox ID="Uname" runat="server" CssClass="form-control" required></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example3c">Your Email</label>
                                                <asp:TextBox ID="Umail" runat="server" type="email" CssClass="form-control" required></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example1c">Contact Number</label>
                                                <asp:TextBox ID="Unumber" runat="server" CssClass="form-control" MinLength="10" MaxLength="10" required></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example3c">Your Address</label>
                                                <asp:TextBox ID="address" runat="server" CssClass="form-control" required></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example4c">Password</label>
                                                <asp:TextBox ID="Upassword" runat="server" type="password" CssClass="form-control" required></asp:TextBox>

                                            </div>
                                        </div>

                                        <%--<div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example4cd">Confirm password</label>
                                                <asp:TextBox ID="Cpassword" runat="server" type="password" CssClass="form-control" required></asp:TextBox>             
                                            </div>
                                        </div>--%>


                                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                            <asp:Button ID="Button1" runat="server" Text="Register" CssClass="form-control" Style="background-color: #27ae60;" OnClick="Button1_Click" />
                                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                        </div>
                                        <div class="element">
                                            <a href="IndexPage.aspx">Back to home page</a>
                                        </div>

                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                            class="img-fluid" alt="Sample image" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
