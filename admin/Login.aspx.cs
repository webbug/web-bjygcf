using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string username = Login1.UserName;
        string userpwd = Login1.Password;
        if (username == "123" && userpwd == "123")
        {
            FormsAuthentication.RedirectFromLoginPage(username, false);//授权（这里是关键）  
            Response.Redirect("ad_index.aspx");
        }
    }
}