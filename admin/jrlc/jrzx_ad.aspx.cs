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
    string title,zjj,img,context,showid,zxid,imgd;
    protected void Page_Load(object sender, EventArgs e)
    {
        zxid = Request.QueryString["zxid"];
        if (!IsPostBack)
        {
            if (zxid != "" && zxid != null)
            {
                selectgl();
                Button1.Visible = true;
                Btn_add.Visible = false;
                RequiredFieldValidator1.ControlToValidate = "TextBox1";
                zx_img.Visible = true;
            }
            else {
                Btn_up.Visible = false;
                Button1.Visible = false;
            }
        }  
    }
    protected void Btn_add_Click(object sender, EventArgs e)
    {     
        getStr();
        string rarName = upimg.PostedFile.FileName;
            int j = rarName.LastIndexOf(".");
            string rarnewext = rarName.Substring(j);
            if (rarnewext != ".jpg" && rarnewext != ".gif" && rarnewext != ".png" && rarnewext != ".jpeg" && rarnewext != ".PNG" && rarnewext != ".JPG" && rarnewext != ".GIF" && rarnewext != ".JPEG")
            {
                Response.Write("<script>alert('图片格式错误，支持jpg,gif,png,jpeg格式！');history.go(-1)</script>");
                Response.End();
            }
            img = imgd + rarnewext;
            insertzx();
            Response.Write("<script>alert('提交成功！');history.go(-1)</script>");
            upimg.PostedFile.SaveAs(Server.MapPath("~" + "/jrlc/images/upload/" + img));
 
    }
    protected void getStr() {
        title=zx_title.Text;
        zjj = zx_jj.Text;
        showid = zx_showid.Text;
        imgd = DateTime.Now.ToString("yyyyMMddHHmmss");
        context = zx_context.Value;
    }
    protected void insertzx()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_jrzx (title,zjj,img,context,showid)" +
            "values('" + title + "','" + zjj + "','" + img + "','" + context + "','" + showid + "')";
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
        cmd.CommandText = "select * from bjygcf_jrzx where id='" + zxid + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        zx_title.Text = sdr["title"].ToString();
        zx_jj.Text = sdr["zjj"].ToString();
        zx_showid.Text = sdr["showid"].ToString();
        zx_img.ImageUrl = "~/jrlc/images/upload/" + sdr["img"].ToString();
        TextBox1.Text = sdr["img"].ToString();
        zx_context.Value = sdr["context"].ToString();
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
        cmd.CommandText = "select img from bjygcf_jrzx where id='" + zxid + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        string temurl = sdr["img"].ToString();
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

            upimg.PostedFile.SaveAs(Server.MapPath("~" + "/jrlc/images/upload/" + temurl));
        }
        else
        {
            Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>");
        }
    }
    protected void Btn_up_Click(object sender, EventArgs e)
    {
        getStr();
        img = TextBox1.Text;
        updatezx(title,showid,zjj,context,img);
    }
    protected void updatezx(string na,string sid,string j,string c,string im) {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_jrzx set title='" + na + "',showid='" + sid + "',zjj='" + 
            j + "',context='" + c + "',img='"  + im + "' where  id='" + zxid + "'";
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