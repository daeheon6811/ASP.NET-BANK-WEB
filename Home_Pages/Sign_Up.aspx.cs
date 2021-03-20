using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Sign_Up : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("placeholder", "한글 3 ~ 4 글자 내외로 입력하십시오.");
        TextBox2.Attributes.Add("placeholder", "'-'를 포함하여 입력하십시오.");
        TextBox3.Attributes.Add("placeholder", "영문 대/소문자와 숫자의 조합으로 4 ~ 10자 내외로 입력하십시오.");
        TextBox4.Attributes.Add("placeholder", "영문 대/소문자와 숫자의 조합으로 8 ~ 20자 내외로 입력하십시오.");
        TextBox6.Attributes.Add("placeholder", "'-'를 포함하여 입력하십시오.");
        TextBox7.Attributes.Add("placeholder", "'-'를 포함하여 입력하십시오.");
        TextBox8.Attributes.Add("placeholder", "도로명 주소를 입력하십시오.");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!(TextBox1.Text == "" && TextBox2.Text == "" && TextBox3.Text == "" && TextBox4.Text == "" && TextBox5.Text == "" && TextBox6.Text == "" && TextBox7.Text == "" && TextBox8.Text == ""))
        {
            try
            {
                string conntion = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
                SqlConnection con = new SqlConnection(conntion);

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "INSERT INTO GeustIdentity(이름,주민등록번호,아이디,비밀번호,핸드폰번호,전화번호,주소) VALUES('" + TextBox1.Text + "'," + "'" + TextBox2.Text + "'," + "'" + TextBox3.Text + "'," + "'" + TextBox4.Text + "'," + "'" + TextBox6.Text + "'," + "'" + TextBox7.Text + "'," + "'" + TextBox8.Text + "')";

                SqlCommand CMD = new SqlCommand();
                CMD.Connection = con;
                CMD.CommandText = "create table " + TextBox3.Text + "_Trancsactional (보낸은행 varchar(30), 받은은행 varchar(30), 받는이 varchar(20), 송금금액 int, 거래날짜 varchar(40))";

                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                int rowsAffected_1 = CMD.ExecuteNonQuery();
                con.Close();

                if (rowsAffected > 0)
                {
                    Label1.Text = "회원가입이 완료되었습니다!";
                }

                Response.Redirect("SignUp_Check.aspx");

            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}