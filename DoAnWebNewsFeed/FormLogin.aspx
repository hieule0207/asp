<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="FormLogin.aspx.cs" Inherits="DoAnWebNewsFeed.FormLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="assets/css/Ss.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" />
    <link href="assets/css/Ss.css" rel="stylesheet" />
    <link href="assets/css/ss2.css" rel="stylesheet" />
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12" style="height: 600px;">
            <div class="left_content">
                <div class="contact_area">
                    <h2>Đăng nhập</h2>
                    <p></p>
                    <div class="col-lg-4 col-md-4 col-sm-4" style="float: left; height: 250px;"></div>
                    <div class="vui" style="width: 400px; margin: 0px auto; padding: 30px 20px; border-radius: 4px; text-align: center; background-color: rgba(0,0,0,0.5); border: 5px solid rgba(37, 0, 0, 0.22); color: black;">
                        <%--<form action="#" class="contact_form">--%>
                        <asp:TextBox runat="server" CssClass="form-controla" placeholder="Tên tài khoản" ID="txtTK" Width="100%"></asp:TextBox>
                        <asp:TextBox runat="server" CssClass="form-controla" TextMode="Password" placeholder="Mật khẩu" Width="100%" ID="txtMK"></asp:TextBox>
                        <asp:Button runat="server" CssClass="sub" Text="Đăng nhập" ID="btndn" OnClick="btndn_Click" Width="100%" />
                        <%--  </form>--%>
                        <%-----------------------------------------------%>
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
                        <%---------------------------------------------%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
