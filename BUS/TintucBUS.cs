using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Data;

namespace BUS
{
    public class TintucBUS
    {
        public static DataTable gettintucphapluat()
        {
            return TinTucDAO.gettintucphapluat();
        }
        public static DataTable gettintuctintuc()
        {
            return TinTucDAO.gettintuctintuc();
        }
        public static DataTable gettintucdoisong()
        {
            return TinTucDAO.gettintucdoisong();
        }
        public static DataTable gettintucslide1()
        {
            return TinTucDAO.gettintucslide1();
        }
        public static DataTable gettintucslide2()
        {
            return TinTucDAO.gettintucslide2();
        }
        public static DataTable gettintucslide3()
        {
            return TinTucDAO.gettintucslide3();
        }
        public static DataTable gettintucphobien()
        {
            return TinTucDAO.gettintucphobien();
        }
        public static DataTable gettintuc(int matin)
        {
            return TinTucDAO.gettintuc(matin);
        }

    }
}
