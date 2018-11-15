using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;


namespace BUS
{
    public class TaiKhoanBUS
    {
        public static bool DangKi(string TENTK, string MK)
        {
            if (!TaiKhoanDAO.KiemTraTKTonTai(TENTK))
            {
                return TaiKhoanDAO.ThemTK(TENTK, MK) == 1;
            }
            else
            {
                return false;
            }
        }

        public static bool DangNhap(string TENTK, string MK)
        {
            if (TaiKhoanDAO.KiemTraTKTonTai(TENTK))
            {
                return MK == TaiKhoanDAO.LayMatKhau(TENTK);
            }
            else
            {
                return false;
            }
        }
    }
}
