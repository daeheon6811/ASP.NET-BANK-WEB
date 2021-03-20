using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Main_Pages_PAYMENT_Page_연동및해지 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = Application["Select_Bank_Image"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string conntion = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
            SqlConnection con = new SqlConnection(conntion);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from " + Application["Linked_Bank_Name"].ToString() + " where 아이디 = '" + Application["Guest_Login_ID"].ToString() + "'";

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();

            if ((rowsAffected > 0))
            {
                Application["연동 계정 이름"] = "";
                Application["연동 계정 주민등록번호"] = "";
                Response.Redirect("~/Main_Pages/Main_Page.aspx");
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}