using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace DoAnWebNewsFeed
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rptslide1.DataSource = TintucBUS.gettintucslide1();
                rptslide1.DataBind();
                rptslide2.DataSource = TintucBUS.gettintucslide2();
                rptslide2.DataBind();
                rptslide3.DataSource = TintucBUS.gettintucslide3();
                rptslide3.DataBind();
                rptphapluat1.DataSource = TintucBUS.gettintucslide1();
                rptphapluat1.DataBind();
                rptphapluat2.DataSource = TintucBUS.gettintucphapluat();
                rptphapluat2.DataBind();
                rpttintuc1.DataSource = TintucBUS.gettintucslide2();
                rpttintuc1.DataBind();
                rpttintuc2.DataSource = TintucBUS.gettintuctintuc();
                rpttintuc2.DataBind();
                rptdoisong1.DataSource = TintucBUS.gettintucslide3();
                rptdoisong1.DataBind();
                rptdoisong2.DataSource = TintucBUS.gettintucdoisong();
                rptdoisong2.DataBind();
                rptphobien.DataSource = TintucBUS.gettintucphobien();
                rptphobien.DataBind();
            }

        }

        //private DataTable loadtintucphapluat()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["QLWEBTINTUC"].ConnectionString;

        //    // Tạo đối tượng kết nối (cần thêm thư viện)
        //    SqlConnection connect = new SqlConnection(connectionString);

        //    // Mở kết nối
        //    connect.Open();

        //    // Xây dựng câu truy vấn tìm thông tin khách hàng bằng EMAIL (email) và mật khẩu (password)
        //    string sql = "SELECT * FROM TINTUC WHERE LOAI_TIN=1 ";

        //    // Xử lý dữ liệu
        //    SqlDataAdapter command = new SqlDataAdapter(sql, connect);

        //    // Tạo đối tượng DataTable chứa giá trị sau khi truy vân (cần thêm thư viện)
        //    DataTable data = new DataTable();

        //    // Thực thi câu lệnh truy vấn
        //    command.Fill(data);

        //    // Kiểm tra dữ liệu
        //    // Nếu có dòng dữ liệu -> đăng nhập thành công
        //    // Nếu không có dòng dữ liệu -> đăng nhập thất bại
        //    if (data.Rows.Count > 0)
        //    {
        //        return data;
        //    }

        //    // Đóng kết nối
        //    connect.Close();
        //    return new DataTable();
        //}
        //private DataTable loadtintuctintuc()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["QLWEBTINTUC"].ConnectionString;

        //    // Tạo đối tượng kết nối (cần thêm thư viện)
        //    SqlConnection connect = new SqlConnection(connectionString);

        //    // Mở kết nối
        //    connect.Open();

        //    // Xây dựng câu truy vấn tìm thông tin khách hàng bằng EMAIL (email) và mật khẩu (password)
        //    string sql = "SELECT * FROM TINTUC WHERE LOAI_TIN=2 ";

        //    // Xử lý dữ liệu
        //    SqlDataAdapter command = new SqlDataAdapter(sql, connect);

        //    // Tạo đối tượng DataTable chứa giá trị sau khi truy vân (cần thêm thư viện)
        //    DataTable data = new DataTable();

        //    // Thực thi câu lệnh truy vấn
        //    command.Fill(data);

        //    // Kiểm tra dữ liệu
        //    // Nếu có dòng dữ liệu -> đăng nhập thành công
        //    // Nếu không có dòng dữ liệu -> đăng nhập thất bại
        //    if (data.Rows.Count > 0)
        //    {
        //        return data;
        //    }

        //    // Đóng kết nối
        //    connect.Close();
        //    return new DataTable();
        //}
        //private DataTable loadtintucdoisong()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["QLWEBTINTUC"].ConnectionString;

        //    // Tạo đối tượng kết nối (cần thêm thư viện)
        //    SqlConnection connect = new SqlConnection(connectionString);

        //    // Mở kết nối
        //    connect.Open();

        //    // Xây dựng câu truy vấn tìm thông tin khách hàng bằng EMAIL (email) và mật khẩu (password)
        //    string sql = "SELECT * FROM TINTUC WHERE LOAI_TIN=3 ";

        //    // Xử lý dữ liệu
        //    SqlDataAdapter command = new SqlDataAdapter(sql, connect);

        //    // Tạo đối tượng DataTable chứa giá trị sau khi truy vân (cần thêm thư viện)
        //    DataTable data = new DataTable();

        //    // Thực thi câu lệnh truy vấn
        //    command.Fill(data);

        //    // Kiểm tra dữ liệu
        //    // Nếu có dòng dữ liệu -> đăng nhập thành công
        //    // Nếu không có dòng dữ liệu -> đăng nhập thất bại
        //    if (data.Rows.Count > 0)
        //    {
        //        return data;
        //    }

        //    // Đóng kết nối
        //    connect.Close();
        //    return new DataTable();
        //}
        //private DataTable loadtintucphobien()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["QLWEBTINTUC"].ConnectionString;

        //    // Tạo đối tượng kết nối (cần thêm thư viện)
        //    SqlConnection connect = new SqlConnection(connectionString);

        //    // Mở kết nối
        //    connect.Open();

        //    // Xây dựng câu truy vấn tìm thông tin khách hàng bằng EMAIL (email) và mật khẩu (password)
        //    string sql = "SELECT * FROM TINTUC WHERE TIN_NOI_BAT=1 ";

        //    // Xử lý dữ liệu
        //    SqlDataAdapter command = new SqlDataAdapter(sql, connect);

        //    // Tạo đối tượng DataTable chứa giá trị sau khi truy vân (cần thêm thư viện)
        //    DataTable data = new DataTable();

        //    // Thực thi câu lệnh truy vấn
        //    command.Fill(data);

        //    // Kiểm tra dữ liệu
        //    // Nếu có dòng dữ liệu -> đăng nhập thành công
        //    // Nếu không có dòng dữ liệu -> đăng nhập thất bại
        //    if (data.Rows.Count > 0)
        //    {
        //        return data;
        //    }

        //    // Đóng kết nối
        //    connect.Close();
        //    return new DataTable();
        //}
        //private DataTable loadtintucslide1()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["QLWEBTINTUC"].ConnectionString;

        //    // Tạo đối tượng kết nối (cần thêm thư viện)
        //    SqlConnection connect = new SqlConnection(connectionString);

        //    // Mở kết nối
        //    connect.Open();

        //    // Xây dựng câu truy vấn tìm thông tin khách hàng bằng EMAIL (email) và mật khẩu (password)
        //    string sql = "SELECT * FROM TINTUC WHERE MA_TIN=1 ";

        //    // Xử lý dữ liệu
        //    SqlDataAdapter command = new SqlDataAdapter(sql, connect);

        //    // Tạo đối tượng DataTable chứa giá trị sau khi truy vân (cần thêm thư viện)
        //    DataTable data = new DataTable();

        //    // Thực thi câu lệnh truy vấn
        //    command.Fill(data);

        //    // Kiểm tra dữ liệu
        //    // Nếu có dòng dữ liệu -> đăng nhập thành công
        //    // Nếu không có dòng dữ liệu -> đăng nhập thất bại
        //    if (data.Rows.Count > 0)
        //    {
        //        return data;
        //    }

        //    // Đóng kết nối
        //    connect.Close();
        //    return new DataTable();
        //}
        //private DataTable loadtintucslide2()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["QLWEBTINTUC"].ConnectionString;

        //    // Tạo đối tượng kết nối (cần thêm thư viện)
        //    SqlConnection connect = new SqlConnection(connectionString);

        //    // Mở kết nối
        //    connect.Open();

        //    // Xây dựng câu truy vấn tìm thông tin khách hàng bằng EMAIL (email) và mật khẩu (password)
        //    string sql = "SELECT * FROM TINTUC WHERE MA_TIN=5";

        //    // Xử lý dữ liệu
        //    SqlDataAdapter command = new SqlDataAdapter(sql, connect);

        //    // Tạo đối tượng DataTable chứa giá trị sau khi truy vân (cần thêm thư viện)
        //    DataTable data = new DataTable();

        //    // Thực thi câu lệnh truy vấn
        //    command.Fill(data);

        //    // Kiểm tra dữ liệu
        //    // Nếu có dòng dữ liệu -> đăng nhập thành công
        //    // Nếu không có dòng dữ liệu -> đăng nhập thất bại
        //    if (data.Rows.Count > 0)
        //    {
        //        return data;
        //    }

        //    // Đóng kết nối
        //    connect.Close();
        //    return new DataTable();
        //}
        //private DataTable loadtintucslide3()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["QLWEBTINTUC"].ConnectionString;

        //    // Tạo đối tượng kết nối (cần thêm thư viện)
        //    SqlConnection connect = new SqlConnection(connectionString);

        //    // Mở kết nối
        //    connect.Open();

        //    // Xây dựng câu truy vấn tìm thông tin khách hàng bằng EMAIL (email) và mật khẩu (password)
        //    string sql = "SELECT * FROM TINTUC WHERE MA_TIN=8 ";

        //    // Xử lý dữ liệu
        //    SqlDataAdapter command = new SqlDataAdapter(sql, connect);

        //    // Tạo đối tượng DataTable chứa giá trị sau khi truy vân (cần thêm thư viện)
        //    DataTable data = new DataTable();

        //    // Thực thi câu lệnh truy vấn
        //    command.Fill(data);

        //    // Kiểm tra dữ liệu
        //    // Nếu có dòng dữ liệu -> đăng nhập thành công
        //    // Nếu không có dòng dữ liệu -> đăng nhập thất bại
        //    if (data.Rows.Count > 0)
        //    {
        //        return data;
        //    }

        //    // Đóng kết nối
        //    connect.Close();
        //    return new DataTable();
        //}
    }
}