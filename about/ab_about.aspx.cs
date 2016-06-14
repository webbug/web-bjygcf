using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class ab_about : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ly_context, mail, telephone;
        ly_context=jy.Text;
        mail = email.Value;
        telephone = phone.Value;
        string time;
        time = DateTime.Now.ToString();
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_jyfk (ly_context,email,phone,time)" +
            "values('" + ly_context + "','" + mail + "','" + telephone + "','"+time+"')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('您的意见已提交成功，非常感谢您的宝贵建议！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();
    }
}