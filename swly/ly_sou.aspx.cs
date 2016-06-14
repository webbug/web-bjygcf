using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class swly_ly_sou : System.Web.UI.Page
{
    protected string sstxt;
    protected string ssjgtxt;
    int a=0;
    int b=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        sstxt = Request.QueryString["sstxt"];
        ssjgtxt = Request.QueryString["ssjgtxt"];
        
        //Response.Write("<script>alert('" + sstxt + "')</script>");
        if (sstxt != "" && sstxt != null) {
            SqlDataSources.SelectCommand = "select * from bjygcf_lyxl where name like '%" + sstxt + "%' or dq like '%" + sstxt  + "%'";
            SqlDataSourcec.SelectCommand = "select * from bjygcf_lyxl where name like '%" + sstxt + "%' or dq like '%" + sstxt + "%' limit 0,6";
        }
        if (ssjgtxt!= ""&&ssjgtxt!= null)
        {   
             string[] sArray=ssjgtxt.Split('-');  
                 a = System.Int32.Parse(sArray[0].ToString());
                 try { b = System.Int32.Parse(sArray[1].ToString()); }
                 catch { b = 0; };
             Response.Write("<script>alert('" + a+":::::"+b + "')</script>");
             if (b != 0)
             {
                 SqlDataSources.SelectCommand = "select * from bjygcf_lyxl where hprice >=" + a + " and hprice <=" + b;
                 SqlDataSourcec.SelectCommand = "select * from bjygcf_lyxl where name like '%" + sstxt + "%' or dq like '%" + sstxt + "%' limit 0,6";
             }
             else {
                 SqlDataSources.SelectCommand = "select * from bjygcf_lyxl where hprice >=" + a ;
             }

        }
    }
}
