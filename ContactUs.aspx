<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="main">
        <br />
        <div class="container">
            <!-- BEGIN SIDEBAR & CONTENT -->
            <div class="row margin-bottom-40 ">
                <!-- BEGIN CONTENT -->
                <div class="col-md-12">
                    <div class="content-page">
                        <div class="row">
                            <div class="col-md-9 col-sm-9">
                                <h2>Contact US</h2>
                                <!-- BEGIN FORM-->
                                <%--<form action="#" role="form" method="POST">--%>
                                <div class="form-group">
                                    <label for="contacts-name">Name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" required></asp:TextBox>
                                    <%--<input type="text" class="form-control" id="contacts-name" name="name" required>--%>
                                </div>
                                <div class="form-group">
                                    <label for="contacts-email">Email</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" required></asp:TextBox>
                                    <%--<input type="email" class="form-control" id="contacts-email" name="email" required>--%>
                                </div>
                                <div class="form-group">
                                    <label for="contacts-message">Message</label>
                                    <%--<asp:TextBox ID="TextBox3" class="form-control" runat="server" rows="5" required></asp:TextBox>--%>
                                    <textarea class="form-control" rows="5" id="contacts-message" name="message" required></textarea>
                                </div>
                                <asp:Button ID="sendmail" runat="server" Text="Send"  class="btn btn-default" OnClick="sendmail_Click" />
                                <asp:Label ID="lblmail" runat="server" ></asp:Label>
<%--                                <button type="submit" class="btn btn-primary"><i class="icon-ok"></i>Send</button>--%>
                                <%--<button type="button" class="btn btn-default">Cancel</button>--%>
                                <%--</form>--%>
                                <!-- END FORM-->
                            </div>

                            <div class="col-md-3 col-sm-3 sidebar2">
                                <h2>Our Contacts</h2>
                                <address>
                                    <h4>BookResale.com</h4>
                                    <strong>#1218</strong><br />
                                    Sector-15, Satna,<br />
                                    485001-Madhya Pradesh<br />
                                    <abbr title="Phone">P:</abbr>
                                    (+91) 7828300319
                                </address>
                                <address>
                                    <strong>Email</strong><br />
                                    <a href="mailto:abhishekmishra8632@gmail.com">Bookresale.com</a>
                                </address>
                                <%--<ul class="social-icons margin-bottom-40">
                    <li><a href="https://www.facebook.com/bookchor" data-original-title="facebook" class="facebook"></a></li>
                  </ul>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END CONTENT -->
            </div>

        </div>
         <br />
    </div>
    <%--<div class="container">
        <h1> Connet With Us</h1>
        <P>We would love to respond to your queries and help you succeed.Feel free to get in touch with us.<br /> </P>
        <div class="contact-box">
            <div class="contact-left">
                <h3>Sent your request</h3>
                <form>
                    <div class="input-row">
                        <div class="input-group">
                            <label>Name</label>
                            <input type="text" placeholder="jaykumar" />

                        </div>
                        <div class="input-group">
                            <label>Phone</label>
                            <input type="text" placeholder="=+1 412 333  4444" />

                        </div>
                    </div>
                    <div class="input-row">
                        <div class="input-group">
                            <label>Email</label>
                            <input type="text" placeholder="jaykumar45@gmail.com" />

                        </div>
                        <div class="input-group">
                            <label>Suject</label>
                            <input type="text" placeholder="=Product Demo" />

                        </div>
                    </div>
                    <label>Message</label>
                    <textarea rows="5" placeholder="Your Message"></textarea>
                    <button type="submit">Send</button>
                </form>

            </div>
            <div class="contact-right">
                <h3>Reach Us</h3>
                <table>
                    <tr>
                        <td>Email</td>
                        <td>contactus@example.com</td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td>+918888888888</td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>vard no.2 sohawal satna<br />
                        lane no.1 side of police station satna 
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>--%>
</asp:Content>

