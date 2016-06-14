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
    string dyid,days,title,food,hotel,context,img1,img2,text1,text2;
    protected void Page_Load(object sender, EventArgs e)
    {
        dyid = Request.QueryString["dyid"];

        //Response.Write("<script>alert('" + img1 + "')</script>");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList2.SelectedValue;

    }
    protected void Btn_add_Click(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedValue == "不显示图片")
        {
            getStr();
            insertday();
            Response.Write("<script>alert('成功提交！！！'); </script>");
            
        }
        else {
            if (imgtext1.Text == "" || imgtext2.Text == "") { Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>"); } else {

                getStr();
                insertday();
                Response.Write("<script>alert('成功提交！！！')</script>");
               
            }
            
        }
     

    }
    protected void getStr() {
        days=TextBox1.Text;
        title=TextBox2.Text;
        food=TextBox3.Text;
        hotel=TextBox4.Text;
        context=TextBox5.Text;
        text1 = imgtext1.Text;
        text2 = imgtext2.Text;

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
            img1 = DateTime.Now.ToString("yyyyMMddHHmmss") + rarnewext;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~" + "/swly/images/upload/" + img1));
            Image1.ImageUrl = "~/swly/images/upload/" + img1;
            imgtext1.Text = img1;
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
    protected void insertday(){
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into lyxl_xq (day,title,food,hotel,context,dyid,img1,img2)" +
            "values('" + days + "','" + title + "','" + food + "','" + hotel + "','" + context + "','" + dyid +"','"+text1+"','"+text2+ "')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        // Response.Write("<script>alert('您的信息已提交成功，我们会在一个工作日内与您取得联系！');history.go(-1)</script>");
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
            img2 = DateTime.Now.ToString("yyyyMMddHHmmss") + rarnewext;
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~" + "/swly/images/upload/" + img2));
            Image2.ImageUrl = "~/swly/images/upload/" + img2;
            imgtext2.Text = img2;
        }
        else
        {
            Response.Write("<script>alert('请先上传图片！');history.go(-1)</script>");
        }
    }
}