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
    string gl_title, gl_context, gl_img, gl_time, gl_showid, gl_tj, img,glid,gl_jj;
    protected void Page_Load(object sender, EventArgs e)
    {
        glid = Request.QueryString["glid"];
        if (!IsPostBack)
        {
            if (glid != ""&&glid!=null)
            {
                selectgl();
                Image1.Visible = true;
                Button1.Visible = true;
                Btn_add.Visible = false;
                RequiredFieldValidator1.ControlToValidate = "TextBox1";
            }
            else {
                Btn_up.Visible = false;
                Image1.Visible = false;
                Button1.Visible = false;
            }
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
            gl_img = img + rarnewext;
            insertnews();
            upimg.PostedFile.SaveAs(Server.MapPath("~" + "/swly/images/upload/" + gl_img));
            Response.Write("<script>alert('成功提交！！！');;history.go(-1);</script>");
       // }
        
 
    }
    protected void getStr() {
        gl_title = title.Text;
        img = DateTime.Now.ToString("yyyyMMddHHmmss");// upimg.PostedFile.FileName;
        gl_time = time.Text;
        gl_showid = show.Text;
        gl_tj = tj.SelectedValue;
        gl_context = context.Value;
        gl_jj = jj.Text;
    }
    protected void insertnews()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_gl (gl_title,gl_context,gl_showid,gl_time,gl_img,gl_tj,gl_jj)" +
            "values('" + gl_title + "','" + gl_context + "','" + gl_showid + "','" + gl_time + "','" + gl_img + "','" + gl_tj + "','"+gl_jj+"')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        // Response.Write("<script>alert('您的信息已提交成功，我们会在一个工作日内与您取得联系！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();
    }
    protected void selectgl() {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        SQLiteCommand cmd1 = new SQLiteCommand();
        cmd.CommandText = "select * from bjygcf_gl where id='" + glid + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        title.Text = sdr["gl_title"].ToString();
        show.Text = sdr["gl_showid"].ToString();
        time.Text = sdr["gl_time"].ToString();
        Image1.ImageUrl ="~/swly/images/upload/" +sdr["gl_img"].ToString();
        TextBox1.Text = sdr["gl_img"].ToString();
        tj.SelectedValue = sdr["gl_tj"].ToString();
        context.Value = sdr["gl_context"].ToString();
        jj.Text = sdr["gl_jj"].ToString();
        sdr.Close();
        conn.Clone();
        conn.Dispose();   
    }
    protected void tj_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select gl_img from bjygcf_gl where id='" + glid + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        string temurl = sdr["gl_img"].ToString();
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

            upimg.PostedFile.SaveAs(Server.MapPath("~" + "/swly/images/upload/" + temurl));
        }
        else
        {
            Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>");
        }
    }
    protected void Btn_up_Click(object sender, EventArgs e)
    {
        getStr();
        gl_img = TextBox1.Text;
        updategl(gl_title, gl_time, gl_showid, gl_tj, gl_context, gl_img,gl_jj);
    }
    protected void updategl(string t,string ti,string s,string j,string c,string mg,string jj) {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_gl set gl_title='" + t + "',gl_showid='" + s + "',gl_jj='"+jj+"',gl_time='" + 
            ti + "',gl_tj='" + j + "',gl_context='"  + c + "' where  id='" + glid + "'";
        cmd.Connection = conn;
         cmd.ExecuteNonQuery();
         Response.Write("<script>alert('提交成功！！！');history.go(-1)</script>");
        /*try
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
        }*/
        conn.Clone();
        conn.Dispose();
    }
}