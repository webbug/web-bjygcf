using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class swly_ly_gd : System.Web.UI.Page
{
    protected string gjid,dyid;
    protected SQLiteDataReader sdr;
    protected SQLiteDataReader sdr1;
    SQLiteConnection conn;
    SQLiteCommand cmd;
    SQLiteCommand cmd1;
    protected  List<Xq> list = new List<Xq>();
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["gdid"];
        switch (id)
        {
            case "gn":
                gjid = "国内线路";
                SqlDataSource15.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国内线路') ORDER BY [showid] DESC";
                SqlDataSource3.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国内线路') ORDER BY [showid] DESC";
                SqlDataSource4.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国内线路') ORDER BY [showid] DESC limit 0,6";
                SqlDataSource7.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国内线路') ORDER BY [showid] DESC limit 0,4";
                break;
            case "gw":
                gjid = "国外线路";
                SqlDataSource15.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国外线路') ORDER BY [showid] DESC";
                SqlDataSource3.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国外线路') ORDER BY [showid] DESC";
                SqlDataSource4.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国外线路') ORDER BY [showid] DESC limit 0,6";
                SqlDataSource7.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国外线路') ORDER BY [showid] DESC limit 0,4";
               // Response.Write("<script>alert('"+id+"')</script>");
                break;
            case "gat":
                gjid = "港澳台线路";
                SqlDataSource15.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '港澳台线路') ORDER BY [showid] DESC";
                SqlDataSource3.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '港澳台线路') ORDER BY [showid] DESC";
                SqlDataSource4.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '港澳台线路') ORDER BY [showid] DESC limit 0,6";
                SqlDataSource7.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '港澳台线路') ORDER BY [showid] DESC limit 0,4";
                break;
            default:
                gjid = "国内线路";
                SqlDataSource15.SelectCommand = "SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国内线路') ORDER BY [showid] DESC";

                break;
        } 
      
    }

}