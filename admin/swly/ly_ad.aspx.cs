using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class admin_swly_ly_ad : System.Web.UI.Page
{
    protected string xq = System.Guid.NewGuid().ToString();
    protected string abc;
    string id,name,price,hprice,zdays,ztimes,zhotel,dq,country,ts,yh,yhx,lx,showid,zst,zsti,days,title,food,hotel,context;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack) {
            guid.Text = xq;
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
        zsti = zst + rarnewext;
        insertly();
        upimg.PostedFile.SaveAs(Server.MapPath("~" + "/swly/images/upload/" + zsti));
        Response.Write("<script>alert('成功提交！！！');;history.go(-1);</script>");
    }
    protected void getStr(){
        //
        name = lname.Text;
        price = scj.Text;
        hprice = hyj.Text;
        zdays = xcday.Text;
        zhotel = zsbz.Text;
        ztimes = ftrq.Text;
        showid = xswz.Text;
        abc = guid.Text;
        zst = DateTime.Now.ToString("yyyyMMddHHmmss");
        dq = ssdq.Text;
        country = ssgj.Text;
        lx = dropdown.SelectedValue;
        if (lx == "优惠线路")
        {
            yh = yh1.Text;
            yhx = yh2.Text;
        }
        else { yh = ""; yhx = ""; }
       
        ts = xcts.Value;
       /* days = TextBox1.Text;
        title = TextBox2.Text;
        food = TextBox3.Text;
        hotel = TextBox3.Text;
        context = xlxq.Value;
        */
    }
    protected void insertly (){
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "insert into bjygcf_lyxl (name,price,hprice,hotel,days,times,dq,country,ts,xq,lx,showid,yh,zst,yh2)" +
            "values('" + name + "','" + price + "','" + hprice + "','" + zhotel+"','"+zdays + "','" + ztimes + "','" + dq + "','" + country + "','" + ts + "','" 
            + abc + "','" + lx + "','" + showid + "','"+yh+"','"+zsti+"','"+yhx+"')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
      /*  SQLiteCommand cmd1 = new SQLiteCommand();
        cmd1.CommandText = "insert into ly_xlxq (day,title,food,hotel,context)"+" values('"+days+"','"+title+"','"+food+"','"+hotel+"','"+context+"')";
        cmd1.ExecuteNonQuery();*/
        // Response.Write("<script>alert('您的信息已提交成功，我们会在一个工作日内与您取得联系！');history.go(-1)</script>");
        conn.Clone();
        conn.Dispose();
        
    }
    protected void selectzp()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        SQLiteCommand cmd1 = new SQLiteCommand();
        cmd.CommandText = "select * from bjygcf_lyxl ";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        lname.Text = sdr["name"].ToString();
        scj.Text = sdr["price"].ToString();
        hyj.Text = sdr["hprice"].ToString();
        xcday.Text = sdr["days"].ToString();
        zsbz.Text = sdr["hotel"].ToString();
        ftrq.Text = sdr["times"].ToString();
        xswz.Text = sdr["showid"].ToString();
        ssdq.Text = sdr["dq"].ToString();
        ssgj.Text = sdr["country"].ToString();
        dropdown.SelectedValue = sdr["lx"].ToString();
        yh1.Text = sdr["yh"].ToString();
        yh2.Text = sdr["yh2"].ToString();
       // Image1.ImageUrl = sdr["zst"].ToString();
        xcts.Value = sdr["ts"].ToString();
        cmd1.CommandText = "select * from lyxl_xq where id='" +sdr["xq"] + "'";
        cmd1.Connection = conn;
        SQLiteDataReader sdr1 = cmd1.ExecuteReader();
       /* TextBox1.Text = sdr1["day"].ToString();
        TextBox2.Text = sdr1["title"].ToString();
        TextBox3.Text = sdr1["food"].ToString();
        TextBox4.Text = sdr1["hotel"].ToString();
        xlxq.Value = sdr1["context"].ToString();*/
        
        sdr.Close();
        conn.Clone();
        conn.Dispose();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ssdq.Text = DropDownList1.SelectedValue;
    }
    protected void dropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dropdown.SelectedValue == "优惠线路")
        {
            Panel1.Visible = true;
        }
        else {
            Panel1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "select zst from bjygcf_lyxl where id='" + id + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        string temurl = sdr["news_img"].ToString();
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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //TextBox1.Text = DropDownList2.SelectedValue;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
    }
}