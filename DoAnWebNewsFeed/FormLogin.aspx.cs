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
    public partial class FormLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btndn_Click(object sender, EventArgs e)
        {
            string TENTK = txtTK.Text;
            string MK = txtMK.Text;

            if (TaiKhoanBUS.DangNhap(TENTK, MK))
            {
                Response.Write("<script>alert('Đăng nhập thành công!')</script>");
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Đăng nhập thất bại!')</script>");
            }
        }
    }
}