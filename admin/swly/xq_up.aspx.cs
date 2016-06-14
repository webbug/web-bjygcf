using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class swly_tjxqts : System.Web.UI.Page
{
    string dyid,days,title,food,hotel,context,img1,img2,text1,text2,xqid;
    protected void Page_Load(object sender, EventArgs e)
    {
        xqid = Request.QueryString["xqid"];
        if (!IsPostBack && xqid != "")
        {
            selectxq();
        } 
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList2.SelectedValue;

    }
    protected void Btn_add_Click(object sender, EventArgs e)
    {
        getStr();
        if (DropDownList3.SelectedValue == "不显示图片")
        {
            updatexq(days, title, food, hotel, context, text1, text2);
            //Response.Write("<script>alert('成功提交！！！');history.go(-1); </script>");  
        }
        else {
            if (text1 == null||text1==""||text2=="" || text2 == null) { Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>"); } else {
                updatexq(days, title, food, hotel, context, text1, text2);
                //Response.Write("<script>alert('成功提交！！！');history.go(-1);</script>");
               
            }
            
        }
       
     

    }
    protected void getStr() {
        days=TextBox1.Text;
        title=TextBox2.Text;
        food=TextBox3.Text;
        hotel=TextBox4.Text;
        context=TextBox5.Text;
        if (DropDownList3.SelectedValue == "显示图片")
        {
            text1 = imgtext1.Text;
            text2 = imgtext2.Text;
        }
        else {
            text1 = ""; text2 = "";
        }

    }
    protected void updatexq(string d,string t,string f,string h,string c,string t1,string t2 ) {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE lyxl_xq set day='" + d + "',title='" + t + "',food='" + f + "',hotel='" + h + "',context='" + c + "',img1='" + t1 + "',img2='" + t2
            + "' where  id='" + xqid + "'";
        cmd.Connection = conn;
        // cmd.ExecuteNonQuery();
        // Response.Write("<script>alert('提交成功！！！');history.go(-1)</script>");
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
 
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName.Length != 0)
        {
            string rarName = FileUpload1.PostedFile.FileName;
            int j = rarName.LastIndexOf(".");
            string rarnewext = rarName.Substring(j);
            if (rarnewext != ".jpg" && rarnewext != ".gif" && rarnewext != ".png" && rarnewext != ".jpeg" && rarnewext != ".PNG" && rarnewext != ".JPG" && rarnewext != ".GIF" && rarnewext != ".JPEG")
            {
                Response.Write("<script>alert('图片格式错误，支持jpg,gif,png,jpeg格式！');history.go(-1)</script>");
                Response.End();
            }
            img1 = imgtext1.Text;
            //Response.Write("<script>alert('"+img1+"')</script>");
            if (img1 == null||img1=="")
            {
                img1 = DateTime.Now.ToString("yyyyMMddHHmmss") + rarnewext;
                imgtext1.Text = img1;
            }
            //Response.Write("<script>alert('" + img1 + "')</script>");
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~" + "/swly/images/upload/" + img1));
            Image1.ImageUrl = "~/swly/images/upload/" + img1;
        }
        else
        {
            Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>");
        }
      
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedValue == "显示图片")
        {

            Panel1.Visible = true;
        }
        else {

            Panel1.Visible = false;
        }
    }
    protected void selectxq(){
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select * from lyxl_xq where id='"+xqid+"'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
         TextBox1.Text = sdr["day"].ToString();
         TextBox2.Text = sdr["title"].ToString();
         TextBox3.Text = sdr["food"].ToString();
         TextBox4.Text = sdr["hotel"].ToString();
         TextBox5.Text = sdr["context"].ToString();
         Image1.ImageUrl="~/swly/images/upload/"+sdr["img1"].ToString();
         Image2.ImageUrl="~/swly/images/upload/"+sdr["img2"].ToString();
         imgtext1.Text = sdr["img1"].ToString();
         imgtext2.Text = sdr["img2"].ToString();
         if (sdr["img1"].ToString() != "" && sdr["img2"].ToString() != "")
         {
             DropDownList3.SelectedValue = "显示图片";
             Panel1.Visible = true;
         }
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (this.FileUpload2.PostedFile != null && FileUpload2.PostedFile.FileName.Length != 0)
        {
            string rarName = FileUpload2.PostedFile.FileName;
            int j = rarName.LastIndexOf(".");
            string rarnewext = rarName.Substring(j);
            if (rarnewext != ".jpg" && rarnewext != ".gif" && rarnewext != ".png" && rarnewext != ".jpeg" && rarnewext != ".PNG" && rarnewext != ".JPG" && rarnewext != ".GIF" && rarnewext != ".JPEG")
            {
                Response.Write("<script>alert('图片格式错误，支持jpg,gif,png,jpeg格式！');history.go(-1)</script>");
                Response.End();
            }
            img2 = imgtext2.Text;
            if (img2 == ""||img2==null)
            {
                img2 = DateTime.Now.ToString("yyyyMMddHHmmss") + rarnewext;
                imgtext2.Text = img2;
            }
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~" + "/swly/images/upload/" + img2));
            Image2.ImageUrl = "~/swly/images/upload/" + img2;
            
        }
        else
        {
            Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>");
        }
    }
}