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
    string title, context, img, ht_time, url, cate,img_n;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void time_TextChanged(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        time.Text = this.Calendar1.SelectedDate.ToLongDateString();
    }
    protected void dropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        //dropdown.SelectedValue;
    }
    protected void Btn_add_Click(object sender, EventArgs e)
    {     
        getStr();
       // if (this.upimg.PostedFile != null && upimg.PostedFile.FileName.Length != 0)
       // {
           // Response.Write("<script>alert('rarName');history.go(-1)</script>");
        string rarName = upimg.PostedFile.FileName;
            int j = rarName.LastIndexOf(".");
            string rarnewext = rarName.Substring(j);
            if (rarnewext != ".jpg" && rarnewext != ".gif" && rarnewext != ".png" && rarnewext != ".jpeg" && rarnewext != ".PNG" && rarnewext != ".JPG" && rarnewext != ".GIF" && rarnewext != ".JPEG")
            {
                Response.Write("<script>alert('图片格式错误，支持jpg,gif,png,jpeg格式！');history.go(-1)</script>");
                Response.End();
            }
            img_n = img + rarnewext;
            insertnews();
            upimg.PostedFile.SaveAs(Server.MapPath("~" + "/about/images/upload/" + img_n));
            Response.Write("<script>alert('成功提交！！！');;history.go(-1);</script>");
       // }
        
 
    }
    protected void getStr() {
        title = news_title.Text;
        img = DateTime.Now.ToString("yyyyMMddHHmmss");// upimg.PostedFile.FileName;
        ht_time = time.Text;
        url = tzurl.Text;
        cate = dropdown.SelectedValue;
        context = news_context.Value;
        if (url == "" && context == "")
        {
            Response.Write("<script>alert('URL和详细内容必须输入一个！');history.go(-1)</script>");

        }
    }
    protected void insertnews()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_news (news_title,news_context,news_img,news_time,news_url,news_cate)" +
            "values('" + title + "','" + context + "','" + img_n + "','" + ht_time + "','" + url + "','" + cate + "')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        // Response.Write("<script>alert('您的信息已提交成功，我们会在一个工作日内与您取得联系！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();
    }

}