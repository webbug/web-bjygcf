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
    string name, context, img, time, jj, editimg,glid,img1,imgd,imgd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        glid = Request.QueryString["jrglid"];
        if (!IsPostBack)
        {
            if (glid != ""&&glid!=null)
            {
                selectgl();
                gl_img.Visible = true;
                gl_editimg.Visible = true;
                Button1.Visible = true;
                Button2.Visible = true;
                Btn_add.Visible = false;
                RequiredFieldValidator1.ControlToValidate = "TextBox1";
                RequiredFieldValidator2.ControlToValidate = "TextBox2";
            }
            else {
                Btn_up.Visible = false;
                gl_editimg.Visible = false;
                gl_img.Visible = false;
                Button1.Visible = false;
                Button2.Visible = false;
            }
        }  
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
            img = imgd + rarnewext;
            upimg.PostedFile.SaveAs(Server.MapPath("~" + "/jrlc/images/upload/" + img));
        string rarName1 = upimg1.PostedFile.FileName;
            int j1 = rarName1.LastIndexOf(".");
            string rarnewext1 = rarName.Substring(j);
            if (rarnewext1 != ".jpg" && rarnewext1 != ".gif" && rarnewext1 != ".png" && rarnewext1 != ".jpeg" && rarnewext1 != ".PNG" && rarnewext1 != ".JPG" && rarnewext1 != ".GIF" && rarnewext1 != ".JPEG")
            {
                Response.Write("<script>alert('图片格式错误，支持jpg,gif,png,jpeg格式！');history.go(-1)</script>");
                Response.End();
            }
            img1 = imgd1 + rarnewext1;
            insertnews();
            upimg1.PostedFile.SaveAs(Server.MapPath("~" + "/jrlc/images/upload/" + img1));
            Response.Write("<script>alert('成功提交！！！');;history.go(-1);</script>");
       // }
        
 
    }
    protected void getStr() {
        name = gl_name.Text;
        imgd = DateTime.Now.ToString("yyyyMMddHHmmss");
        imgd1 = DateTime.Now.ToString("yyyyMMddHHmmss")+"1";// upimg.PostedFile.FileName;
        jj = gl_jj.Text;
        context = gl_context.Value;
    }
    protected void insertnews()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_jrgl (name,img,jj,context,editimg)" +
            "values('" + name + "','" + img + "','" + jj + "','" + context + "','" + img1 + "')";
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
        cmd.CommandText = "select * from bjygcf_jrgl where id='" + glid + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        gl_name.Text = sdr["name"].ToString();
        gl_jj.Text = sdr["jj"].ToString();
        gl_editimg.ImageUrl = "~/swly/images/upload/" + sdr["editimg"].ToString();
        gl_img.ImageUrl = "~/swly/images/upload/" + sdr["img"].ToString();
        TextBox1.Text = sdr["img"].ToString();
        TextBox2.Text = sdr["editimg"].ToString();
        gl_context.Value = sdr["context"].ToString();
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
        cmd.CommandText = "select img from bjygcf_jrgl where id='" + glid + "'";
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
        img = TextBox1.Text;
        img1 = TextBox2.Text;
        updategl(name,img,jj,context,img1);
    }
    protected void updategl(string na,string im,string j,string c,string ed) {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_jrgl set name='" + na + "',img='" + im + "',jj='" + 
            j + "',context='" + c + "',editimg='"  + ed + "' where  id='" + glid + "'";
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select editimg from bjygcf_jrgl where id='" + glid + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        string temurl = sdr["editimg"].ToString();
        sdr.Close();
        conn.Clone();
        conn.Dispose();
        if (this.upimg1.PostedFile != null && upimg1.PostedFile.FileName.Length != 0)
        {
            string rarName = upimg1.PostedFile.FileName;
            int j = rarName.LastIndexOf(".");
            string rarnewext = rarName.Substring(j);
            if (rarnewext != ".jpg" && rarnewext != ".gif" && rarnewext != ".png" && rarnewext != ".jpeg" && rarnewext != ".PNG" && rarnewext != ".JPG" && rarnewext != ".GIF" && rarnewext != ".JPEG")
            {
                Response.Write("<script>alert('图片格式错误，支持jpg,gif,png,jpeg格式！');history.go(-1)</script>");
                Response.End();
            }

            upimg1.PostedFile.SaveAs(Server.MapPath("~" + "/swly/images/upload/" + temurl));
        }
        else
        {
            Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>");
        }
    }
}