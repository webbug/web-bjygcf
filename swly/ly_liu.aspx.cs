using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class swly_ly_liu : System.Web.UI.Page
{
string ly_name, ly_title, ly_context, ly_phone, ly_sex,ly_time;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        getStr();
        insert();
    }
    protected void getStr() {
        ly_name = name.Value;
        ly_title = title.Value;
        ly_context = context.Value;
        ly_phone = phone.Value;
        ly_time = DateTime.Now.ToString();
        if (RadioButton1.Checked)
        {
            ly_sex = "先生";
        }else if(RadioButton2.Checked){ly_sex="女士";}

        
    }
    protected void insert() {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_ly (ly_name,ly_sex,ly_phone,ly_title,ly_context,ly_time)" +
            "values('" + ly_name + "','" + ly_sex + "','" + ly_phone + "','" + ly_title+"','"+ly_context +"','"+ly_time+ "')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('您的意见已提交成功，非常感谢您的宝贵建议！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        getStr();
        insert();
    }
}