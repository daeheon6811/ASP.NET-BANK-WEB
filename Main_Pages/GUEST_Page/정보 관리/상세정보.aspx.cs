using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Main_Pages_GUEST_Page_정보_관리_상세정보 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /////////////////////////////////////////////////////////////////////////////////////////

        TableRow row_1 = new TableRow();

        TableCell cell_1 = new TableCell();
        cell_1.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_1.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_1.Controls.Add(new LiteralControl("이   름"));
        row_1.Cells.Add(cell_1);

        TableCell cell_2 = new TableCell();
        cell_2.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_2.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_2.Controls.Add(new LiteralControl("주 민 등 록 번 호"));
        row_1.Cells.Add(cell_2);

        TableCell cell_3 = new TableCell();
        cell_3.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_3.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_3.Controls.Add(new LiteralControl("아 이 디"));
        row_1.Cells.Add(cell_3);

        TableCell cell_4 = new TableCell();
        cell_4.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_4.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_4.Controls.Add(new LiteralControl("계 좌 번 호"));
        row_1.Cells.Add(cell_4);

        TableCell cell_5 = new TableCell();
        cell_5.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_5.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_5.Controls.Add(new LiteralControl("계 좌 비 밀 번 호"));
        row_1.Cells.Add(cell_5);

        TableCell cell_6 = new TableCell();
        cell_6.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_6.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_6.Controls.Add(new LiteralControl("계 좌 금 액"));
        row_1.Cells.Add(cell_6);

        TableCell cell_7 = new TableCell();
        cell_7.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_7.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_7.Controls.Add(new LiteralControl("대 출 금 액"));
        row_1.Cells.Add(cell_7);

        Table1.Rows.Add(row_1);

        /////////////////////////////////////////////////////////////////////////////////////////


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

            TextBox3.Text = reader["비밀번호"].ToString();

            TextBox4.Text = reader["주민등록번호"].ToString();

            TextBox5.Text = reader["핸드폰번호"].ToString();

            TextBox6.Text = reader["전화번호"].ToString();

            TextBox7.Text = reader["주소"].ToString();


        }
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int TnF = 0;
        string stringSqlconnetion = "server=(local)\\SqlExpress; Integrated Security =true; database =Guest_Identity;";

        SqlConnection con = new SqlConnection(stringSqlconnetion);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT * FROM " + DropDownList1.SelectedItem.Value.ToString() + " WHERE 아이디 = '" + Application["Guest_Login_ID"] + "' ";

        con.Open();


        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read() == true)
            TnF = 1;
        else
            TnF = 0;
        con.Close();

        con.Open();
        SqlDataReader reader_1 = cmd.ExecuteReader();
        if (TnF == 1)
        {
            while (reader_1.Read())
            {
                TableRow r = new TableRow();

                TableCell c1 = new TableCell();
                c1.Controls.Add(new LiteralControl(reader_1["이름"].ToString()));
                r.Cells.Add(c1);

                TableCell c2 = new TableCell();
                c2.Controls.Add(new LiteralControl(reader_1["아이디"].ToString()));
                r.Cells.Add(c2);

                TableCell c3 = new TableCell();
                c3.Controls.Add(new LiteralControl(reader_1["주민등록번호"].ToString()));
                r.Cells.Add(c3);

                TableCell c4 = new TableCell();
                c4.Controls.Add(new LiteralControl(reader_1["계좌번호"].ToString()));
                r.Cells.Add(c4);

                TableCell c5 = new TableCell();
                c5.Controls.Add(new LiteralControl(reader_1["계좌비밀번호"].ToString()));
                r.Cells.Add(c5);

                TableCell c6 = new TableCell();
                c6.Controls.Add(new LiteralControl(reader_1["계좌금액"].ToString() + " ￦"));
                r.Cells.Add(c6);

                TableCell c7 = new TableCell();
                c7.Controls.Add(new LiteralControl(reader_1["대출금액"].ToString() + " ￦"));
                r.Cells.Add(c7);

                Table1.Rows.Add(r);
            }
        }
        else
            Label1.Text = "고객님의 계정과 해당 은행이 서로 연동되어 있지 않습니다.";

        con.Close();
    }
}