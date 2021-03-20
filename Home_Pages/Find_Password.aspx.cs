using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class 박대헌_Find_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Attributes.Add("placeholder", "주 민 등 록 번 호");
        TextBox4.Attributes.Add("placeholder", "아 이 디");
        TextBox5.Attributes.Add("placeholder", "핸 드 폰 번 호");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string conntion = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
            SqlConnection con = new SqlConnection(conntion);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select 비밀번호 from GeustIdentity where 주민등록번호 = '" + TextBox3.Text + "' AND 아이디 = '" + TextBox4.Text + "' AND 핸드폰번호 = '" + TextBox5.Text + "';";
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
                Label1.Text = reader["비밀번호"].ToString();

            con.Close();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
}