using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Main_Pages_PAYMENT_Page_은행연동 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("placeholder", "'-'를 포함하여 입력하십시오.");
        TextBox2.Attributes.Add("placeholder", "계 좌 비 밀 번 호 (숫자 4자리)");
        TextBox3.Attributes.Add("placeholder", "계 좌 금 액");
        TextBox4.Attributes.Add("placeholder", "대 출 금 액 ex) -50000");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string conntion = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
            SqlConnection con = new SqlConnection(conntion);

            SqlCommand cmd_1 = new SqlCommand();
            cmd_1.Connection = con;
            cmd_1.CommandText = "select 이름, 주민등록번호 from GeustIdentity where 아이디 = '" + Application["Guest_Login_ID"].ToString() + "'";

            con.Open();
            SqlDataReader reader = cmd_1.ExecuteReader();
            while (reader.Read())
            {
                Application["연동 계정 이름"] = reader["이름"].ToString();
                Application["연동 계정 주민등록번호"] = reader["주민등록번호"].ToString();
            }
            con.Close();


            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO " + Application["Linked_Bank_Name"].ToString() + " (이름, 주민등록번호, 계좌번호, 계좌비밀번호, 계좌금액, 대출금액, 아이디) VALUES ('" + Application["연동 계정 이름"].ToString() + "', '" + Application["연동 계정 주민등록번호"].ToString() + "', '" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + Application["Guest_Login_ID"].ToString() + "')";

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();

            if ((rowsAffected > 0))
            {
                Label1.Text = "고객님의 계정과 은행이 연동이 되었습니다.";
                Application["연동 계정 이름"] = "";
                Application["연동 계정 주민등록번호"] = "";
            }
            else
            {
                Label1.Text = "연동에 실패하였습니다. 다시 해주시기 바랍니다.";
            }
        }
        catch
        {
            Label1.Text = "[실패] 이미 있는 계좌일수 있으니 다시 시도해주시기 바랍니다.";
        }
    }
}