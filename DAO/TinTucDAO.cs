using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class TinTucDAO
    {
        public static DataTable gettintucphapluat()
        {
            string query = "SELECT * FROM TINTUC WHERE LOAI_TIN=1";
            SqlParameter[] parameter = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, parameter);
        }
        public static DataTable gettintuctintuc()
        {
            string query = "SELECT * FROM TINTUC WHERE LOAI_TIN=2";
            SqlParameter[] parameter = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, parameter);
        }
        public static DataTable gettintucdoisong()
        {
            string query = "SELECT * FROM TINTUC WHERE LOAI_TIN=3";
            SqlParameter[] parameter = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, parameter);
        }
        public static DataTable gettintucslide1()
        {
            string query = "SELECT * FROM TINTUC WHERE MA_TIN=1";
            SqlParameter[] parameter = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, parameter);
        }
        public static DataTable gettintucslide2()
        {
            string query = "SELECT * FROM TINTUC WHERE MA_TIN=2";
            SqlParameter[] parameter = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, parameter);
        }
        public static DataTable gettintucslide3()
        {
            string query = "SELECT * FROM TINTUC WHERE MA_TIN=3";
            SqlParameter[] parameter = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, parameter);
        }
        public static DataTable gettintucphobien()
        {
            string query = "SELECT * FROM TINTUC WHERE TIN_NOI_BAT=1";
            SqlParameter[] parameter = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, parameter);
        }
        public static DataTable gettintuc(int matin)
        {
            string query = string.Format("SELECT * FROM TINTUC WHERE MA_TIN={0}", matin);
            SqlParameter[] parameter = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, parameter);
        }
    }
}
