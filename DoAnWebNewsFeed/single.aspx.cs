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
    public partial class single : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               if(Request.QueryString["matin"] != null)
                {
                    int matin = Convert.ToInt32(Request.QueryString["matin"]);
                    //rptsingle.DataSource = loadtintucsingle(matin);
                    //rptsingle.DataBind();
                    rptsingle.DataSource = TintucBUS.gettintuc(matin);
                    rptsingle.DataBind();
                }
            }
        }
        //private DataTable loadtintucsingle(int matin)
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["QLWEBTINTUC"].ConnectionString;

        //    // Tạo đối tượng kết nối (cần thêm thư viện)
        //    SqlConnection connect = new SqlConnection(connectionString);

        //    // Mở kết nối
        //    connect.Open();

        //    // Xây dựng câu truy vấn tìm thông tin khách hàng bằng EMAIL (email) và mật khẩu (password)
        //    string sql = string.Format("SELECT * FROM TINTUC WHERE MA_TIN={0}",matin);

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