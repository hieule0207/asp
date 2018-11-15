using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace DoAnWebNewsFeed
{
    public partial class FormDangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangKi_Click(object sender, EventArgs e)
        {
            if (txtRePassword.Text == txtPassword.Text)
            {
                string TENTK = txtEmail.Text;
                string MK = txtPassword.Text;          
                if (TaiKhoanBUS.DangKi(TENTK,MK))
                {
                    Response.Write("<script>alert('Đăng kí thành công!')</script>");
                    Response.Redirect("FormLogin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Đăng kí thất bại!')</script>");
                }
            }
        }
    }
}