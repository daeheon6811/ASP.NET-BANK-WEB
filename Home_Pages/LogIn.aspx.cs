using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/////////////////////////////////////////////////////////
using System.Data.SqlClient; //DB사용
/////////////////////////////////////////////////////////

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            TextBox1.Attributes.Add("placeholder", "ID");
            TextBox2.Attributes.Add("placeholder", "Password");
            TextBox3.Attributes.Add("placeholder", "인 증 번 호");
        }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = "";
        try
        {  
            string connectionString = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = con;
            Cmd.CommandText = "SELECT * FROM GeustIdentity where 아이디 = '" + TextBox1.Text + "' AND 비밀번호 = '" + TextBox2.Text + "';";

            con.Open();
            SqlDataReader reader = Cmd.ExecuteReader();

            Label2.Text = "아이디, 비밀번호, 인증번호를 다시 확인하세요.";

            while (reader.Read())
            {
                if (reader["아이디"].ToString().Equals(TextBox1.Text))
                {
                    if (reader["비밀번호"].ToString().Equals(TextBox2.Text))
                    {
                        if (Label1.Text.Equals(TextBox3.Text))
                        {
                            Application["Guest_Login_ID"] = TextBox1.Text;
                            Response.Redirect("~/Main_Pages/Main_Page.aspx");
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
    protected void Button3_Click(object sender, EventArgs e)
    {
         Random random = new Random();
         int Random_Num = random.Next(100000, 1000000);

         Label1.Text = Random_Num.ToString();
    }
    protected void TextBox2_Init(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged1(object sender, EventArgs e)
    {
    
    }
}