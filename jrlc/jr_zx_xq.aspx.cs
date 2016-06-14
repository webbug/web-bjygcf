using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jrlc_jr_zx_xq : System.Web.UI.Page
{
    string zxxqid;
    protected void Page_Load(object sender, EventArgs e)
    {
        zxxqid=Request.QueryString["zxxqid"];
    }
}