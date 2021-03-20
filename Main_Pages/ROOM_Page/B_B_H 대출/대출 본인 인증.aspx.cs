using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Main_Pages_ROOM_Page_B_B_H_대출_대출_본인_인증 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("placeholder", "이 름");
        TextBox2.Attributes.Add("placeholder", "아 이 디");
        TextBox3.Attributes.Add("placeholder", "비 밀 번 호");
        TextBox4.Attributes.Add("placeholder", "주 민 등 록 번 호 ('-'를 포함하여 입력하십시오.)");
        TextBox5.Attributes.Add("placeholder", "전 화 번 호 ('-'를 포함하여 입력하십시오.)");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        try
        {
            string connectionString = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = con;
            Cmd.CommandText = "SELECT * FROM GeustIdentity where 아이디 = '" + Application["Guest_Login_ID"].ToString() + "'";
            con.Open();
            SqlDataReader reader = Cmd.ExecuteReader();

            while (reader.Read())
            {
                if (reader["이름"].ToString().Equals(TextBox1.Text))
                {
                    if (reader["아이디"].ToString().Equals(TextBox2.Text))
                    {
                        if (reader["비밀번호"].ToString().Equals(TextBox3.Text))
                        {
                            if (reader["주민등록번호"].ToString().Equals(TextBox4.Text))
                            {
                                if (reader["핸드폰번호"].ToString().Equals(TextBox5.Text))
                                {
                                    Response.Redirect("~/Main_Pages/ROOM_Page/B_B_H 대출/대출 하기.aspx");
                                }
                                else
                                    Label1.Text = "전화번호가 옳바르지 않습니다.";
                            }
                            else
                                Label1.Text = "주민등록번호가 옳바르지 않습니다.";
                        }
                        else
                            Label1.Text = "비밀번호가 옳바르지 않습니다..";
                    }
                    else
                        Label1.Text = "아이디가 옳바르지 않습니다.";
                }
                else
                    Label1.Text = "이름이 옳바르지 않습니다.";
            }
            con.Close();
        }
        catch (SqlException ex)
        {
            Label1.Text = ex.Message;
        }
    }
}