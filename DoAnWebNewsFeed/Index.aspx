<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DoAnWebNewsFeed.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <section id="sliderSection">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="slick_slider">
                        <asp:Repeater ID="rptslide1" runat="server">
                            <ItemTemplate>
                                <div class="single_iteam">
                                    <a href="single.aspx?matin=<%#Eval("MA_TIN") %>">
                                        <img src="<%#Eval("HINHANH") %>" alt="" /></a>
                                    <div class="slider_article">
                                        <h2><a class="slider_tittle" href="single.aspx?matin=<%#Eval("MA_TIN") %>">
                                            <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                        </a></h2>
                                        <%--<p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui...</p>--%>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:Repeater ID="rptslide2" runat="server">
                            <ItemTemplate>
                                <div class="single_iteam">
                                    <a href="single.aspx?matin=<%#Eval("MA_TIN") %>">
                                        <img src="<%#Eval("HINHANH") %>" alt="" /></a>
                                    <div class="slider_article">
                                        <h2><a class="slider_tittle" href="single.aspx?matin=<%#Eval("MA_TIN") %>">
                                            <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                        </a></h2>
                                        <%--<p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui...</p>--%>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:Repeater ID="rptslide3" runat="server">
                            <ItemTemplate>
                                <div class="single_iteam">
                                    <a href="single.aspx?matin=<%#Eval("MA_TIN") %>">
                                        <img src="<%#Eval("HINHANH") %>" alt="" /></a>
                                    <div class="slider_article">
                                        <h2><a class="slider_tittle" href="single.aspx?matin=<%#Eval("MA_TIN") %>">
                                            <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                        </a></h2>
                                        <%--<p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a pharetra urna. Morbi dui...</p>--%>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="latest_post">
                        <h2><span style="font-family: 'Times New Roman';">Latest post</span></h2>
                        <div class="latest_post_container">
                            <div id="prev-button"><i class="fa fa-chevron-up"></i></div>
                            <ul class="latest_postnav">
                                <li>
                                    <div class="media">
                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="media-left">
                                            <img alt="" src="images/11.jpg">
                                        </a>
                                        <div class="media-body">
                                            <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="catg_title">
                                                <p style="font-family: 'Times New Roman';">Cháy tầng 25 toà cao ốc ở Hà Nội</p>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="media-left">
                                            <img alt="" src="images/12.jpg">
                                        </a>
                                        <div class="media-body">
                                            <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="catg_title">
                                                <p style="font-family: 'Times New Roman';">Cuộc sống của những người Thủ Thiêm cố giữ đất</p>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="media-left">
                                            <img alt="" src="images/14.jpg">
                                        </a>
                                        <div class="media-body">
                                            <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="catg_title">
                                                <p style="font-family: 'Times New Roman';">Hai nhà khoa học đoạt giải Nobel tới Việt Nam</p>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="media-left">
                                            <img alt="" src="images/15.jpg">
                                        </a>
                                        <div class="media-body">
                                            <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="catg_title">
                                                <p style="font-family: 'Times New Roman';">Việt Nam cần tránh bài học tiền không có nhưng muốn tăng lương</p>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="media-left">
                                            <img alt="" src="images/13.jpg">
                                        </a>
                                        <div class="media-body">
                                            <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="catg_title">
                                                <p style="font-family: 'Times New Roman';">Nguyên Phó​ bí thư Đồng Nai xin thôi nhiệm vụ đại biểu Quốc hội</p>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div id="next-button"><i class="fa  fa-chevron-down"></i></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="contentSection">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="left_content">
                        <div class="single_post_content">
                            <h2><span style="font-family: 'Times New Roman';">Pháp luật</span></h2>
                            <div class="single_post_content_left">
                                <asp:Repeater ID="rptphapluat1" runat="server">
                                    <ItemTemplate>
                                        <ul class="business_catgnav  wow fadeInDown">
                                            <li>
                                                <figure class="bsbig_fig">
                                                    <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="featured_img">
                                                        <img alt="" src="<%#Eval("HINHANH") %>">
                                                        <span class="overlay"></span></a>
                                                    <figcaption><a href="single.aspx?matin=<%#Eval("MA_TIN") %>">
                                                        <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                                    </a></figcaption>
                                                    <%--<p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>--%>
                                                </figure>
                                            </li>
                                        </ul>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                            <div class="single_post_content_right">
                                <ul class="spost_nav">
                                    <asp:Repeater ID="rptphapluat2" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <div class="media wow fadeInDown">
                                                    <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="media-left">
                                                        <img alt="" src="<%#Eval("HINHANH") %>">
                                                    </a>
                                                    <div class="media-body">
                                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="catg_title">
                                                            <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </ul>
                            </div>
                        </div>
                        <div class="fashion_technology_area">
                            <div class="fashion">
                                <div class="single_post_content">
                                    <h2><span style="font-family: 'Times New Roman';">Tin tức</span></h2>
                                    <asp:Repeater ID="rpttintuc1" runat="server">
                                        <ItemTemplate>
                                            <ul class="business_catgnav wow fadeInDown">
                                                <li>
                                                    <figure class="bsbig_fig">
                                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="featured_img">
                                                            <img alt="" src="<%#Eval("HINHANH") %>">
                                                            <span class="overlay"></span></a>
                                                        <figcaption><a href="single.aspx?matin=<%#Eval("MA_TIN") %>">
                                                            <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                                        </a></figcaption>
                                                        <%--<p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>--%>
                                                    </figure>
                                                </li>
                                            </ul>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                    <ul class="spost_nav">
                                        <asp:Repeater ID="rpttintuc2" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <div class="media wow fadeInDown">
                                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="media-left">
                                                            <img alt="" src="<%#Eval("HINHANH") %>">
                                                        </a>
                                                        <div class="media-body">
                                                            <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="catg_title">
                                                                <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                            <div class="technology">
                                <div class="single_post_content">
                                    <h2><span style="font-family: 'Times New Roman';">Đời sống</span></h2>
                                    <asp:Repeater ID="rptdoisong1" runat="server">
                                        <ItemTemplate>
                                            <ul class="business_catgnav">
                                                <li>
                                                    <figure class="bsbig_fig wow fadeInDown">
                                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="featured_img">
                                                            <img alt="" src="<%#Eval("HINHANH") %>">
                                                            <span class="overlay"></span></a>
                                                        <figcaption><a href="single.aspx?matin=<%#Eval("MA_TIN") %>">
                                                            <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                                        </a></figcaption>
                                                        <%-- <p>Nunc tincidunt, elit non cursus euismod, lacus augue ornare metus, egestas imperdiet nulla nisl quis mauris. Suspendisse a phare...</p>--%>
                                                    </figure>
                                                </li>
                                            </ul>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                    <ul class="spost_nav">
                                        <asp:Repeater ID="rptdoisong2" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <div class="media wow fadeInDown">
                                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="media-left">
                                                            <img alt="" src="<%#Eval("HINHANH") %>">
                                                        </a>
                                                        <div class="media-body">
                                                            <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="catg_title">
                                                                <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <aside class="right_content">
                                <div class="single_sidebar">
                                    <h2><span style="font-family: 'Times New Roman';">Popular Post</span></h2>
                                    <ul class="spost_nav">
                                        <asp:Repeater ID="rptphobien" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <div class="media wow fadeInDown">
                                                        <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="media-left">
                                                            <img alt="" src="<%#Eval("HINHANH") %>">
                                                        </a>
                                                        <div class="media-body">
                                                            <a href="single.aspx?matin=<%#Eval("MA_TIN") %>" class="catg_title">
                                                                <p style="font-family: 'Times New Roman';"><%#Eval("TIEUDE") %></p>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </aside>
                        </div>
                    </div>
        </section>
    </div>
</asp:Content>
