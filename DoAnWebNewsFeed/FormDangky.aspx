<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="FormDangky.aspx.cs" Inherits="DoAnWebNewsFeed.FormDangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="assets/css/Ss.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/ss2.css" rel="stylesheet" />
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12" style="height: 600px">
            <div class="left_content">
                <div class="contact_area" style="margin-bottom: 0px">
                    <h2>Đăng ký</h2>

                    <div class="col-lg-12 col-md-12 col-sm-12" style="height: 300px">
                        <div class="col-lg-2 col-md-2 col-sm-2"></div>
                        <div class="col-lg-8 col-md-8 col-sm-8" style="float: left">
                            <div class="vui" style="width: 400px; margin: 0px auto; padding: 30px 20px; border-radius: 4px; text-align: center; background-color: rgba(0,0,0,0.5); border: 5px solid rgba(37, 0, 0, 0.22); color: black;">
                                <div class="contact_form">

                                    <asp:TextBox runat="server" CssClass="form-controla" placeholder="Tên tài khoản" ID="txtEmail" Width="100%"></asp:TextBox>


                                    <asp:TextBox runat="server" CssClass="form-controla" TextMode="Password" placeholder="Mật khẩu" ID="txtPassword" Width="100%"></asp:TextBox>

                                    <asp:TextBox runat="server" CssClass="form-controla" TextMode="Password" placeholder=" Nhập Mật khẩu" ID="txtRePassword" Width="100%"></asp:TextBox>


                                    <asp:Button ID="btnDangKi" runat="server" CssClass="sub" Text="Đăng ký" OnClick="btnDangKi_Click" Width="100%" />



                                    <%--------------------------------------------%>
                                    <ul class="icon-links">
                                        <li>
                                            <a href="#">
                                                <span class="fa fa-facebook"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="fa fa-twitter"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="fa fa-linkedin"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="fa fa-google-plus"></span>
                                            </a>
                                        </li>
                                    </ul>
                                    <%------------------------------------------%>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--</section>--%>
</asp:Content>
