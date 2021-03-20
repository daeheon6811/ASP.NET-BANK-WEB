using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Main_Pages_ROOM_Page_B_B_H_대출_대출_하기 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
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

            SqlCommand Cmd = new SqlCommand(); // 찾는다 로그인된 아이디의 계좌 금액과 대출금액을 찾아서 계좌금액을 상승시키고 대출금액을 감소 시킨다.
            Cmd.Connection = con;
            Cmd.CommandText = "select 계좌금액, 대출금액 from " + DropDownList1.SelectedItem.Value.ToString() + " where 아이디 = '" + Application["Guest_Login_ID"].ToString() + "'";

            con.Open();
            SqlDataReader reader = Cmd.ExecuteReader(); // 없을때
            if (reader.Read() == false)
            {
                Label2.Text = "* 고객님의 계정과 해당 은행이 연동되지 않았습니다.";
                TnF = 0;
            }
            con.Close();

            con.Open();
            SqlDataReader reader_1 = Cmd.ExecuteReader(); //있으면 원래금액에서 대출한금액이 올라간다.
            while (reader_1.Read())
                Minus_Money = int.Parse(reader_1["계좌금액"].ToString()) + int.Parse(TextBox1.Text);
            con.Close();

            con.Open();
            SqlDataReader reader_2 = Cmd.ExecuteReader(); //있으면 대출금액에서 대출한금액이 감소된다. (이건 보류 : 서로서로 마이너스 이니까 서로더한뒤 '-'붙이기)
            while (reader_2.Read())
                Plus_Money = int.Parse(reader_2["대출금액"].ToString()) - int.Parse(TextBox1.Text);
            con.Close();


            if (TnF == 1)
            {
                SqlCommand Cmd_1 = new SqlCommand(); // 보낸사람의 계정에서의 차감 된 돈 업데이트
                Cmd_1.Connection = con;
                Cmd_1.CommandText = "UPDATE " + DropDownList1.SelectedItem.Value.ToString() + " SET 계좌금액 = " + Minus_Money + " where 아이디 = '" + Application["Guest_Login_ID"] + "'";

                con.Open();
                int rowsAffected_1 = Cmd_1.ExecuteNonQuery();
                con.Close();

                SqlCommand Cmd_2 = new SqlCommand(); // 보낸사람의 계정에서의 증가된 돈 업데이트
                Cmd_2.Connection = con;
                Cmd_2.CommandText = "UPDATE " + DropDownList1.SelectedItem.Value.ToString() + " SET 대출금액 = " + Plus_Money + " where 아이디 = '" + Application["Guest_Login_ID"] + "'";

                con.Open();
                int rowsAffected_2 = Cmd_2.ExecuteNonQuery();
                con.Close();

                SqlCommand Cmd_3 = new SqlCommand(); // 거래내역
                Cmd_3.Connection = con;
                Cmd_3.CommandText = "insert into " + Application["Guest_Login_ID"].ToString() + "_Trancsactional (보낸은행, 받은은행, 받는이, 송금금액, 거래날짜) values ('본 은행 대출', '" + DropDownList1.SelectedItem.Text + "', '본 인', '" + TextBox1.Text + "', '" + Session["beginTime"].ToString() + "')";

                con.Open();
                int rowsAffected = Cmd_3.ExecuteNonQuery();
                con.Close();

                if (rowsAffected > 0)
                    Label1.Text = "성공적으로 대출이 되었습니다.";
                else
                    Label1.Text = "송금에 실패했습니다. 가입된 은행과 받으실 고객님의 이름을 재확인하시기 바랍니다.";
            }
            else
                Label1.Text = "[실패] 은행이 연동되어 있지 않습니다.";
        }
        catch
        {
            Label1.Text = "대출 최대 한도 금액을 넘었습니다.";
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        int Random_Num = random.Next(100000, 1000000);

        Label1.Text = Random_Num.ToString();
    }
}