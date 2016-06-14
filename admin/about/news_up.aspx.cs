using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SQLite;
using System.Data;

public partial class admin_about_news_ad : System.Web.UI.Page
{
    string title, context, img, ht_time, url, cate,id,temurl;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["newsid"];
        if (!IsPostBack && id != "")
        {
            selectxm();
        }
       
       
    }
    protected void time_TextChanged(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        time.Text = this.Calendar1.SelectedDate.ToLongDateString();
    }
    
    protected void Btn_add_Click(object sender, EventArgs e)
    {     
            getStr();
            if (url == "" && context == "")
            {
                Response.Write("<script>alert('URL和详细内容必须输入一个！');history.go(-1)</script>");

            }
            else
            {
                updatenews(title, context, ht_time, url, cate);
            }
 
    }
    protected void updatenews(string t,string c,string h,string u,string ca)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_news set news_title='" + t +  "',news_context='" + c + "',news_time='" + h + "',news_url='" + u + "',news_cate='" + ca + "' where  id='" + id + "'";
        cmd.Connection = conn;
        try
        {
            int rr = cmd.ExecuteNonQuery();
            if (rr > 0)
            {
                Response.Write("<script>alert('提交成功！！！');history.go(-1)</script>");
            }
            else
            {
                Response.Write("<script>alert('操作失败！！！');history.go(-1)</script>");
            }
        }
        catch
        {
            Response.Write("<script>alert('操作失败！！！');history.go(-1)</script>");
        }
        conn.Clone();
        conn.Dispose();
    }
    protected void getStr() {
        title = news_title.Text;
        img = DateTime.Now.ToString("yyyyMMddHHmmss");// upimg.PostedFile.FileName;
        ht_time = time.Text;
        url = tzurl.Text;
        cate = dropdown.SelectedValue;
        context = news_context.Value;
       
       
    }
    protected void selectxm()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select news_title,news_context,news_img,news_time,news_url,news_cate from bjygcf_news where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        news_title.Text = sdr["news_title"].ToString();
        time.Text = sdr["news_time"].ToString();
        news_context.Value = sdr["news_context"].ToString();
        tzurl.Text = sdr["news_url"].ToString();
        dropdown.SelectedValue = sdr["news_cate"].ToString();
        Image1.ImageUrl = "~/about/images/upload/" + sdr["news_img"].ToString();
        temurl = sdr["news_img"].ToString();
        sdr.Close(); 
        conn.Clone();
        conn.Dispose();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select news_img from bjygcf_news where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        temurl = sdr["news_img"].ToString();
        sdr.Close();
        conn.Clone();
        conn.Dispose();
        if (this.upimg.PostedFile != null && upimg.PostedFile.FileName.Length != 0)
        {
            string rarName = upimg.PostedFile.FileName;
            int j = rarName.LastIndexOf(".");
            string rarnewext = rarName.Substring(j);
            if (rarnewext != ".jpg" && rarnewext != ".gif" && rarnewext != ".png" && rarnewext != ".jpeg" && rarnewext != ".PNG" && rarnewext != ".JPG" && rarnewext != ".GIF" && rarnewext != ".JPEG")
            {
                Response.Write("<script>alert('图片格式错误，支持jpg,gif,png,jpeg格式！');history.go(-1)</script>");
                Response.End();
            }
           
            upimg.PostedFile.SaveAs(Server.MapPath("~" + "/about/images/upload/" + temurl));
        }
        else {
            Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>");
        }
    }

}