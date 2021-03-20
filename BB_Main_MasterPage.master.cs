using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BB_Main_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "";
        Application["Select_Bank_Image"] = "";
        Application["연동 계정 이름"] = "";
        Application["연동 계정 주민등록번호"] = "";
    }
}
