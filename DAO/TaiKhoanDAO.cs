using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAO
{
    public class TaiKhoanDAO
    {
        public static int ThemTK(string TENTK, string MK)
        {
            string query = "INSERT INTO TAIKHOAN (TENTK, MK) VALUES (@TENTK, @MK)";
            SqlParameter[] parameter = new SqlParameter[2];
            parameter[0] = new SqlParameter("@TENTK", TENTK);
            parameter[1] = new SqlParameter("@MK", MK);          
            return DataProvider.ExecuteInsertQuery(query, parameter);
        }

        public static bool KiemTraTKTonTai(string TENTK)
        {
            string query = "SELECT COUNT(*) FROM TAIKHOAN WHERE TENTK=@TENTK";
            SqlParameter[] parameter = new SqlParameter[1];
            parameter[0] = new SqlParameter("@TENTK", TENTK);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, parameter).Rows[0][0]) == 1;
        }

        public static string LayMatKhau(string TENTK)
        {
            string query = "SELECT MK FROM TAIKHOAN WHERE TENTK=@TENTK";
            SqlParameter[] parameter = new SqlParameter[1];
            parameter[0] = new SqlParameter("@TENTK", TENTK);
            return DataProvider.ExecuteSelectQuery(query, parameter).Rows[0][0].ToString();
        }
    }
}
