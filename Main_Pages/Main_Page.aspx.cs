using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Main_Pages_Main_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = "server=(local)\\SQLExpress;Integrated Security=true;database=asp";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = con;
        Cmd.CommandText = "SELECT * FROM GeustIdentity where 아이디 = '" + Application["Guest_Login_ID"].ToString() + "';";

        con.Open();
        SqlDataReader reader = Cmd.ExecuteReader();

        while (reader.Read())
        {
            Label1.Text = "Welcome Mr." + reader["이름"].ToString() + "";

        }
        con.Close();

        //Label1.Text = "Welcome Mr." + Application["Guest_Login_ID"].ToString() + "";
    }
}