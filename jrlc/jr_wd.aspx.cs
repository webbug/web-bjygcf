using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class jrlc_jr_wd : System.Web.UI.Page
{
    string title, phone, name, time,isshow,ques;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Tijiao(object sender, EventArgs e)
    {
        title = wd_title.Text;
        phone=wd_phone.Text;
        name = wd_name.Text;
        time = DateTime.Now.ToString("yyyy年MM月dd日 HH:mm:ss");
        isshow = "否";
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_wenda (title,phone,name,time,isshow)" +
            "values('" + title + "','" + phone + "','" + name + "','" + time + "','"+isshow+"')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('您的问题已提交成功，我们会尽快为您解答！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();
    }
    protected void sousou(object sender, EventArgs e)
    {
     
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ques=question.Text;
        SqlDataSource1.SelectCommand = "SELECT * FROM [bjygcf_wenda] WHERE [isshow] = '是' and title like '%" + ques + "%' ORDER BY [showid] DESC";
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [bjygcf_wenda] WHERE [isshow] = '是' and id='"+e.CommandName+"'";
    }
}