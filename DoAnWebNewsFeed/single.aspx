<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="single.aspx.cs" Inherits="DoAnWebNewsFeed.single" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rptsingle" runat="server">
        <ItemTemplate>
            <div>
                <h1><p style="font-family:'Times New Roman'"><%#Eval("TIEUDE") %></p></h1></br>
            </div>
            <div>
                <img alt="" src="<%#Eval("HINHANH") %>"></br>
            </div>
            <div>
                <h4><p style="font-family:'Times New Roman'"><%#Eval("NOIDUNG") %></></p></h4>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
