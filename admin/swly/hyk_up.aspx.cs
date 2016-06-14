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
    string kname,kimg,kprice,kjj,kurl,kcontext,id,temurl;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["hykid"];
        if (!IsPostBack && id != "")
        {
            selecthyk();
        }
       
       
    }
    protected void Btn_add_Click(object sender, EventArgs e)
    {     
            getStr();
            updateyhk(kname, kcontext, kjj, kurl, kprice);
 
    }
    protected void updateyhk(string kn,string kc,string kj,string ku,string kp)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_hyk set kname='" + kn +  "',kprice='" + kp + "',kjj='" + kj + "',kurl='" + ku + "',kcontext='" + kc + "' where  id='" + id + "'";
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
        kname =name.Text;
        kjj = jj.Text;
        kurl = url.Text;
        kprice = price.Text;
        kcontext = context.Value;
       
       
    }
    protected void selecthyk()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select * from bjygcf_hyk where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        name.Text = sdr["kname"].ToString();
        jj.Text = sdr["kjj"].ToString();
        price.Text = sdr["kprice"].ToString();
        url.Text = sdr["kurl"].ToString();
        Image1.ImageUrl = "~/swly/images/upload/" + sdr["kimg"].ToString();
        temurl = sdr["kimg"].ToString();
        context.Value = sdr["kcontext"].ToString();
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
        cmd.CommandText = "select kimg from bjygcf_hyk where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        temurl = sdr["kimg"].ToString();
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
        else {
            Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>");
        }
    }

}