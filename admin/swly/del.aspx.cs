using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class admin_about_del : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cz=Request.QueryString["cz"];
        string bm = Request.QueryString["bm"];
        string id = Request.QueryString["id"];
        if (cz == "sc") {
            del(bm, id);
            
        }
    }
    protected void del(string bm,string id)
    {
      
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "delete from "+bm+" where id = '"+id+"'";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('删除成功！');window.location.href= document.referrer;</script>");
        conn.Clone();
        conn.Dispose();
    }
}