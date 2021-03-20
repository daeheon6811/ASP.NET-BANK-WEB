using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;  

public partial class Main_Pages_PAYMENT_Page_PAYMENT_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            TextBox2.Text = "0";

        string connectionString = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = con;
        Cmd.CommandText = "SELECT 이름, 아이디 FROM GeustIdentity";

        con.Open();
        SqlDataReader reader = Cmd.ExecuteReader();
        while (reader.Read())
        {
            string name = reader["이름"].ToString() + " (" + reader["아이디"].ToString() + ")";
            string id = reader["아이디"].ToString();
            ListItem order = new ListItem(name, id);
            DropDownList3.Items.Add(order);
        }
        con.Close(); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Label1.Text = "";
            Label2.Text = "";
            int Minus_Money = 0, Plus_Money = 0; //마이너스머니 = 보낸이의 잔액 - textbox3의 금액 , 플러스머니 = 받는이의 잔액 + textbox3의 금액
            int TnF = 1;

            Session["beginTime"] = DateTime.Now;

            string connectionString = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand Cmd_minus = new SqlCommand(); // 보낸사람의 계정에서의 돈 차감
            Cmd_minus.Connection = con;
            Cmd_minus.CommandText = "select 계좌금액, 아이디 from " + DropDownList1.SelectedItem.Value.ToString() + " where 아이디 = '" + Application["Guest_Login_ID"].ToString() + "'";

            con.Open();
            SqlDataReader reader_minus_1 = Cmd_minus.ExecuteReader();
            if (reader_minus_1.Read() == false)
            {
                Label2.Text = "* 고객님의 계정과 해당 은행이 연동되지 않았습니다.";
                TnF = 0;
            }
            con.Close();
            con.Open();
            SqlDataReader reader_minus = Cmd_minus.ExecuteReader();
            while (reader_minus.Read())
                Minus_Money = int.Parse(reader_minus["계좌금액"].ToString()) - int.Parse(TextBox2.Text);

            con.Close();




            SqlCommand Cmd_plus = new SqlCommand(); // 보낸사람의 계정에서의 돈 증가
            Cmd_plus.Connection = con;
            Cmd_plus.CommandText = "select 계좌금액, 아이디 from " + DropDownList2.SelectedItem.Value.ToString() + " where 아이디 = '" + DropDownList3.SelectedItem.Value.ToString() + "'";

            con.Open();
            SqlDataReader reader_plus_1 = Cmd_plus.ExecuteReader();
            if (reader_plus_1.Read() == false)
            {
                Label2.Text = "* 상대방의 계정과 해당 은행이 연동되지 않았습니다.";
                TnF = 0;
            }
            con.Close();
            con.Open();
            SqlDataReader reader_plus = Cmd_plus.ExecuteReader();
            while (reader_plus.Read())
                Plus_Money = int.Parse(reader_plus["계좌금액"].ToString()) + int.Parse(TextBox2.Text);
            con.Close();


            if (TnF == 1)
            {
                if (Minus_Money >= 0)
                {
                    SqlCommand Cmd_1 = new SqlCommand(); // 보낸사람의 계정에서의 차감 된 돈 업데이트
                    Cmd_1.Connection = con;
                    Cmd_1.CommandText = "UPDATE " + DropDownList1.SelectedItem.Value.ToString() + " SET 계좌금액 = " + Minus_Money + " where 아이디 = '" + Application["Guest_Login_ID"] + "'";

                    con.Open();
                    int rowsAffected_1 = Cmd_1.ExecuteNonQuery();
                    con.Close();

                    SqlCommand Cmd_2 = new SqlCommand(); // 보낸사람의 계정에서의 증가된 돈 업데이트
                    Cmd_2.Connection = con;
                    Cmd_2.CommandText = "UPDATE " + DropDownList2.SelectedItem.Value.ToString() + " SET 계좌금액 = " + Plus_Money + " where 아이디 = '" + DropDownList3.SelectedItem.Value.ToString() + "'";

                    con.Open();
                    int rowsAffected_2 = Cmd_2.ExecuteNonQuery();
                    con.Close();

                    SqlCommand Cmd = new SqlCommand(); // 거래내역
                    Cmd.Connection = con;
                    Cmd.CommandText = "insert into " + Application["Guest_Login_ID"].ToString() + "_Trancsactional (보낸은행, 받은은행, 받는이, 송금금액, 거래날짜) values ('" + DropDownList1.SelectedItem.Text + "', '" + DropDownList2.SelectedItem.Text + "', '" + DropDownList3.SelectedItem.Text + "', '" + TextBox2.Text + "', '" + Session["beginTime"].ToString() + "')";

                    con.Open();
                    int rowsAffected = Cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                        Label1.Text = "성공적으로 송금되었습니다.";
                    else
                        Label1.Text = "송금에 실패했습니다. 가입된 은행과 받으실 고객님의 이름을 재확인하시기 바랍니다.";
                }
                else
                    Label1.Text = "고객님의 계좌에 잔액이 부족합니다.";
            }
            else
            {
                Label1.Text = "[실패] 은행이 연동되어 있지 않습니다";
                if ((DropDownList1.SelectedItem.Value.ToString().Equals(DropDownList2.SelectedItem.Value.ToString())) && (DropDownList3.SelectedItem.Value.ToString().Equals(Application["Guest_Login_ID"].ToString())))
                {
                    Label1.Text = "[실패] 본인에게 같은 은행으로 송금 하실 수 없습니다.";
                    Label2.Text = "";
                }
            }                
        }
        catch
        {
            Label1.Text = "송금은 최대 1억원 까지만 가능합니다.";
        }
    }
}