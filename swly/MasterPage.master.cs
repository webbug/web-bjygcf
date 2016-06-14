using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SQLite;

public partial class swly_MasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void hrz_but_Click(object sender, EventArgs e)
    {
        string sstxt=hrz_sou.Value;
        Response.Redirect("ly_sou.aspx?sstxt="+sstxt); 
    }
}
