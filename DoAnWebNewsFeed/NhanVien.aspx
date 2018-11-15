<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.Master" AutoEventWireup="true" CodeBehind="NhanVien.aspx.cs" Inherits="DoAnWebNewsFeed.NhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <%--<section id="contentSection">--%>
        <link rel="stylesheet" type="text/css" />
        <link href="assets/css/Ss.css" rel="stylesheet" /> 
    <link href="assets/css/ss3.css" rel="stylesheet" />
            <div class="row" style="height:600px;">
              <div class="col-lg-12 col-md-12 col-sm-12">
                  
                    <div class="left_content">
                      <div class="contact_area" style="margin-bottom:0px">
                        <h2 style="margin-bottom:5px">Cập nhật thông tin nhân viên</h2>
                         
                            <div class="col-lg-12 col-md-12 col-sm-12" style="height:300px">
                                <div class="col-lg-4 col-md-4 col-sm-4"></div>
                              <div class="col-lg-4 col-md-4 col-sm-4">
                                  <div class="agile-form">
			<form action="#" method="get">
				<div class="agile-email">
					<p>Họ và Tên</p>
					<asp:TextBox runat="server" ID="txthoten" name="name address" placeholder="Họ và tên nhân viên" required=""/>
				</div>
				<div class="agile-password">
					<p>Bút danh</p>
					<asp:TextBox runat="server" ID="butdanh" name="Butdanh" placeholder="Bút danh" required=""/>
				</div>
				<div class="clear"></div>
				<div class="agile-gender">
					<p>gender</p>
					<div class="agile-mgender">
						<asp:RadioButton ID="rdoNam" runat="server"  Groupame="gender" value="male"/>
						<span>Nam</span>
					</div>
					<div class="agile-fgender">
						<asp:RadioButton ID="rdoNu"  runat="server" GroupName="gender" value="female"/>
						<span>Nữ</span>
					</div>
					<div class="clear"></div>
				</div>

				<div class="agile-fname">
					<p>Ngày sinh</p>
					<asp:TextBox runat="server" ID="txtngsinh" TextMode="Date" name="ngaysinh" Width="100%"/>
				</div>
				<%--<div class="agile-lname">
					<p>last name</p>
					<input type="text" name="username" placeholder="last name">
				</div>--%>
				<div class="clear"></div>
				<div class="agile-fname">
					<p>Địa chỉ</p>
					<asp:TextBox runat="server" ID="txtdiachi" TextMode="MultiLine" name="diachi" Width="100%" />
				</div>

                <div class="agile-fname">
					<p>Ngày làm</p>
					<asp:TextBox runat="server" ID="txtNgaylam" TextMode="Date" name="ngaylam" Width="100%"/>
				</div>
				
				<div class="agile-fname">
					<p>Ngày kết thúc</p>
					<asp:TextBox runat="server" ID="txtNgayehet" TextMode="Date" name="ngayhet" Width="100%"/>
				</div>

				<div class="agile-fname">
					<p>Tên tài khoản</p>
					<asp:TextBox runat="server" ID="txttentaikhoan"  name="ngayhet" Width="100%"/>
				</div>
				<div class="agile-submit">
					<asp:Button runat="server" ID="updatenv" type="submit" value="register"/>
				</div>
			</form>
		</div>
                              </div>
                            </div>
                       
                      </div>
                    </div>
                   
              </div>
            </div>
        
    <%-- </section>--%>

    </span>
</asp:Content>
