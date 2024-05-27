using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for XLDL
/// </summary>
public class XLDL
{
    static string StrCnn = ConfigurationManager.ConnectionStrings["QLBanSachConnectionString"].ConnectionString.ToString();

    public static DataTable Docbang(string LenhSQL)
    {
        using(SqlConnection cnn=new SqlConnection(StrCnn))
        {
            SqlDataAdapter bodocgi = new SqlDataAdapter(LenhSQL, cnn);
            DataTable bang = new DataTable();
            bodocgi.Fill(bang);
            return bang;
        }
    }

    public static void ThucHienLenh(string LenSQL)
    {
        using (SqlConnection cnn = new SqlConnection(StrCnn))
        {
            cnn.Open();
            SqlCommand bolenh = new SqlCommand(LenSQL, cnn);
            bolenh.ExecuteNonQuery();
            cnn.Close();
        }
    }

    public static string GetData(string LenSQL)
    {
        using (SqlConnection cnn = new SqlConnection(StrCnn))
        {
            cnn.Open();
            SqlCommand cmd = cnn.CreateCommand();
            cmd.CommandText = LenSQL;
            string result = "" + cmd.ExecuteScalar().ToString();
            cnn.Close();
            return result;
        }
    }

    public XLDL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}