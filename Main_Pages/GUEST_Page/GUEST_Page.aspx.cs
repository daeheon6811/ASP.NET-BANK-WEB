using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class 정하성_GUEST_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
        SqlConnection con = new SqlConnection(connectionString);

        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = con;
        Cmd.CommandText = "SELECT*FROM GeustIdentity where 아이디 = '" + Application["Guest_Login_ID"].ToString() + "'";

        con.Open();

        SqlDataReader reader = Cmd.ExecuteReader();

        while (reader.Read())
        {

            TextBox1.Text = reader["이름"].ToString();

            TextBox2.Text = reader["아이디"].ToString();

            TextBox3.Text = reader["핸드폰번호"].ToString();

            TextBox4.Text = reader["전화번호"].ToString();

            TextBox5.Text = reader["주소"].ToString();

        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Application["Guest_Login_ID"] = "";
    }
}