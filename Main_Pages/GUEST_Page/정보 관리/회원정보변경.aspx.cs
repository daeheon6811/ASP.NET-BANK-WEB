using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Main_Pages_GUEST_Page_정보_관리_회원정보변경 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        TextBox1.Attributes.Add("placeholder", "영문 대/소문자와 숫자의 조합으로 8 ~ 20자 내외로 입력하십시오.");
        TextBox2.Attributes.Add("placeholder", "'-'를 포함하여 입력하십시오.");
        TextBox3.Attributes.Add("placeholder", "'-'를 포함하여 입력하십시오.");
        TextBox4.Attributes.Add("placeholder", "도로명 주소를 입력하십시오.");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (!(TextBox1.Text == ""))
        {
            string stringsqlconnetion = "server=(local)\\SQLExpress; Integrated Security=true; database=Guest_Identity";
            SqlConnection con = new SqlConnection(stringsqlconnetion);
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();

            cmd2.Connection = con;
            cmd2.CommandText = "UPDATE GeustIdentity SET 비밀번호='" + TextBox1.Text + "' where 아이디 = '" + Application["Guest_Login_ID"] + "'";

            con.Open();
            int rowaffect = cmd2.ExecuteNonQuery();
            con.Close();
            Label1.Text = "비밀번호가 변경되었습니다.";
        }
        else
            Label1.Text = "변경하고자 하는 사항에 내용을 정확히 입력하세요.";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (!(TextBox2.Text == ""))
        {
            string stringsqlconnetion = "server=(local)\\SQLExpress; Integrated Security=true; database=Guest_Identity";
            SqlConnection con = new SqlConnection(stringsqlconnetion);
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();

            cmd2.Connection = con;
            cmd2.CommandText = "UPDATE GeustIdentity SET 핸드폰번호='" + TextBox2.Text + "' where 아이디 = '" + Application["Guest_Login_ID"] + "'";

            con.Open();
            int rowaffect = cmd2.ExecuteNonQuery();
            con.Close();
            Label1.Text = "휴대폰 번호가 변경되었습니다.";
        }
        else
            Label1.Text = "변경하고자 하는 사항에 내용을 정확히 입력하세요.";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (!(TextBox3.Text == ""))
        {
            string stringsqlconnetion = "server=(local)\\SQLExpress; Integrated Security=true; database=Guest_Identity";
            SqlConnection con = new SqlConnection(stringsqlconnetion);
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();

            cmd2.Connection = con;
            cmd2.CommandText = "UPDATE GeustIdentity SET 전화번호='" + TextBox3.Text + "' where 아이디 = '" + Application["Guest_Login_ID"] + "'";

            con.Open();
            int rowaffect = cmd2.ExecuteNonQuery();
            con.Close();
            Label1.Text = "집 전화번호가 변경되었습니다.";
        }
        else
            Label1.Text = "변경하고자 하는 사항에 내용을 정확히 입력하세요.";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (!(TextBox4.Text == ""))
        {
            string stringsqlconnetion = "server=(local)\\SQLExpress; Integrated Security=true; database=Guest_Identity";
            SqlConnection con = new SqlConnection(stringsqlconnetion);
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();

            cmd2.Connection = con;
            cmd2.CommandText = "UPDATE GeustIdentity SET 주소='" + TextBox4.Text + "' where 아이디 = '" + Application["Guest_Login_ID"] + "'";

            con.Open();
            int rowaffect = cmd2.ExecuteNonQuery();
            con.Close();
            Label1.Text = "주소가 변경되었습니다.";
        }
        else
            Label1.Text = "변경하고자 하는 사항에 내용을 정확히 입력하세요.";
    }
}