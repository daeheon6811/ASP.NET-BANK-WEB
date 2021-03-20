using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Main_Pages_GUEST_Page_정보_관리_회원탈퇴 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("placeholder", "이 름");
        TextBox2.Attributes.Add("placeholder", "비 밀 번 호");
        TextBox3.Attributes.Add("placeholder", "주 민 등 록 번 호");
        TextBox4.Attributes.Add("placeholder", "핸 드 폰 번 호");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string StringConnetion = "server=(local)\\SQLexpress; Integrated Security = true; database=Guest_Identity";
        SqlConnection con = new SqlConnection(StringConnetion);

        SqlCommand Cmd = new SqlCommand(); // 텍스트 박스 정보 DB와 비교
        Cmd.Connection = con;
        Cmd.CommandText = "SELECT * FROM GeustIdentity where 아이디 = '" + Application["Guest_Login_ID"].ToString() + "' AND 주민등록번호 = '" + TextBox3.Text + "';";

        SqlCommand Cmd_1 = new SqlCommand();
        Cmd_1.Connection = con;
        Cmd_1.CommandText = "DROP TABLE " + Application["Guest_Login_ID"].ToString() + "_Trancsactional";

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "DELETE FROM GeustIdentity WHERE 아이디= '" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd1 = new SqlCommand();
        cmd1.Connection = con;
        cmd1.CommandText = "DELETE FROM 하나_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd2 = new SqlCommand();
        cmd2.Connection = con;
        cmd2.CommandText = "DELETE FROM 경남_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd3 = new SqlCommand();
        cmd3.Connection = con;
        cmd3.CommandText = "DELETE FROM 광주_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd4 = new SqlCommand();
        cmd4.Connection = con;
        cmd4.CommandText = "DELETE FROM 국민_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd5 = new SqlCommand();
        cmd5.Connection = con;
        cmd5.CommandText = "DELETE FROM 기업_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd6 = new SqlCommand();
        cmd6.Connection = con;
        cmd6.CommandText = "DELETE FROM 농협_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd7 = new SqlCommand();
        cmd7.Connection = con;
        cmd7.CommandText = "DELETE FROM 대구_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd8 = new SqlCommand();
        cmd8.Connection = con;
        cmd8.CommandText = "DELETE FROM 부산_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd9 = new SqlCommand();
        cmd9.Connection = con;
        cmd9.CommandText = "DELETE FROM 산업_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd10 = new SqlCommand();
        cmd10.Connection = con;
        cmd10.CommandText = "DELETE FROM 수협_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd11 = new SqlCommand();
        cmd11.Connection = con;
        cmd11.CommandText = "DELETE FROM 시티_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd12 = new SqlCommand();
        cmd12.Connection = con;
        cmd12.CommandText = "DELETE FROM 신한_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd13 = new SqlCommand();
        cmd13.Connection = con;
        cmd13.CommandText = "DELETE FROM 외환_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd14 = new SqlCommand();
        cmd14.Connection = con;
        cmd14.CommandText = "DELETE FROM 우리_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd15 = new SqlCommand();
        cmd15.Connection = con;
        cmd15.CommandText = "DELETE FROM 전북_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd16 = new SqlCommand();
        cmd16.Connection = con;
        cmd16.CommandText = "DELETE FROM 제일_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        SqlCommand cmd17 = new SqlCommand();
        cmd17.Connection = con;
        cmd17.CommandText = "DELETE FROM 제주_Bank WHERE 아이디='" + Application["Guest_Login_ID"].ToString() + "'";

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




        con.Open();
        SqlDataReader reader = Cmd.ExecuteReader();


        while (reader.Read())
        {

            if (reader["이름"].ToString().Equals(TextBox1.Text))
            {
                if (reader["비밀번호"].ToString().Equals(TextBox2.Text))
                {
                    if (reader["주민등록번호"].ToString().Equals(TextBox3.Text))
                    {
                        if (reader["핸드폰번호"].ToString().Equals(TextBox4.Text))
                        {
                            con.Close();
                            con.Open();
                            int rowsaffected = cmd.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected1 = cmd1.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected2 = cmd2.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected3 = cmd3.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected4 = cmd4.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected5 = cmd5.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected6 = cmd6.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected7 = cmd7.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected8 = cmd8.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected9 = cmd9.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected10 = cmd10.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected11 = cmd11.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected12 = cmd12.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected13 = cmd13.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected14 = cmd14.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected15 = cmd15.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected16 = cmd16.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            int rowsaffected17 = cmd17.ExecuteNonQuery();
                            con.Close();

                            con.Open();
                            reader = Cmd.ExecuteReader();

                        }
                    }
                }
            }
        }
        con.Close();
        Response.Redirect("~/Main_Pages/Member_Leave_Page.aspx");
    }
}