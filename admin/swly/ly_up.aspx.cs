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
    protected string xq;
    string id,name,price,hprice,zdays,ztimes,zhotel,dq,country,ts,yh,yhx,lx,showid,zst,zsti,days,title,food,hotel,context,lyid;
    protected void Page_Load(object sender, EventArgs e)
    {
        lyid=Request.QueryString["lyid"];
        if (!IsPostBack && lyid != "")
        {
            selectly();
        }   
      
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
        xq = guid.Text;
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
    protected void updately(string l,string p,string h,string zd,string zh,string zt,string sh,string dq,string c,string lx,string ts,string y1,string y2){

        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        cmd.CommandText = "UPDATE bjygcf_lyxl set name='" + l + "',price='" + p + "',hprice='" + h + "',hotel='" + zh + "',days='" + zd + "',times='"+zt+"',dq='"+dq
            +"',country='"+c+"',ts='"+ts+"',lx='"+lx+"',showid='"+sh+"',yh='"+y1+"',yh2='"+y2+"' where  id='" + lyid + "'";
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
    protected void selectly()
    {
        SQLiteConnection.ClearAllPools();
        SQLiteConnection conn = new SQLiteConnection("Data Source=" + Server.MapPath("~" + "/App_Data/bjygcf.db"));
        conn.Open();
        SQLiteCommand cmd = new SQLiteCommand();
        SQLiteCommand cmd1 = new SQLiteCommand();
        cmd.CommandText = "select * from bjygcf_lyxl where id='"+lyid+"'";
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
        if (sdr["lx"].ToString() == "优惠线路") {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
        guid.Text = sdr["xq"].ToString();
        xq = guid.Text;
        yh1.Text = sdr["yh"].ToString();
        yh2.Text = sdr["yh2"].ToString();
        Image1.ImageUrl = "~/swly/images/upload/"+sdr["zst"].ToString();
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
        cmd.CommandText = "select zst from bjygcf_lyxl where id='" + lyid + "'";
        cmd.Connection = conn;
        SQLiteDataReader sdr = cmd.ExecuteReader();
        string temurl = sdr["zst"].ToString();
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
        updately(name, price,hprice,zdays,zhotel,ztimes,showid,dq,country,lx,ts,yh,yhx);
    }
}