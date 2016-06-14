using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about_ab_rlzy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string phName = this.Name.Text;
        string phType = this.ypgw.Text;

        if (this.myFile.PostedFile != null && myFile.PostedFile.FileName.Length != 0)
        {
            string photoName1 = myFile.PostedFile.FileName; //获取初始文件名
            int i = photoName1.LastIndexOf("."); //取得文件名中最后一个"."的索引
            string newext = photoName1.Substring(i); //获取文件扩展名
            if (newext != ".doc" && newext != ".jpg" && newext != ".docx" && newext != ".pdf" && newext != ".png")
            {
                Response.Write("<script>alert('操作错误，请重试');history.go(-1)</script>");
                Response.End();
            }
            DateTime now = DateTime.Now; //获取系统时间
            string photoName2 = phType + "_" + phName + newext; //重新为文件命名,时间毫秒部分+文件大小+扩展名
            myFile.PostedFile.SaveAs(Server.MapPath("~" + "/jl/" + photoName2)); // 保存文件到路径,用Server.MapPath()取当前文件的绝对目录.在asp.net里"\"必须用""代替
            Response.Write("<script>alert('您已成功提交，我们会尽快与您联系！！！');history.go(-1)</script>");
        }
        else
        {
            Response.Write("<script>alert('操作错误，请重试');history.go(-1)</script>");
        }
    }
}