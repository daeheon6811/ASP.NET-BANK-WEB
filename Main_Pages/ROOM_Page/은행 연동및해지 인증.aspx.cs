using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //DB사용

public partial class Main_Pages_PAYMENT_Page_은행_연동및해지_인증 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("placeholder", "이 름");
        TextBox2.Attributes.Add("placeholder", "주 민 등 록 번 호");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string connectionString = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = con;
            Cmd.CommandText = "SELECT * FROM GeustIdentity where 아이디 = '" + Application["Guest_Login_ID"].ToString() + "' AND 이름 = '" + TextBox1.Text + "' AND 주민등록번호 = '" + TextBox2.Text + "';";

            con.Open();
            SqlDataReader reader = Cmd.ExecuteReader();

            Label1.Text = "이름과 주민등록번호를 다시 확인하세요.";

            while (reader.Read())
            {
                if (reader["아이디"].ToString().Equals(Application["Guest_Login_ID"].ToString()))
                {
                    if (reader["이름"].ToString().Equals(TextBox1.Text))
                    {
                        if (reader["주민등록번호"].ToString().Equals(TextBox2.Text))
                        {
                            Response.Redirect("~/Main_Pages/ROOM_Page/연동및해지.aspx");
                        }
                    }
                }
            }
            con.Close();
        }
        catch (SqlException ex)
        {
            Label1.Text = ex.Message;
        }
    }
}