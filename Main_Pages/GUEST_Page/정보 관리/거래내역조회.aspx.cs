using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Main_Pages_GUEST_Page_정보_관리_거래내역조회 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /////////////////////////////////////////////////////////////////////////////////////////

        TableRow row_1 = new TableRow();

        TableCell cell_1 = new TableCell();
        cell_1.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_1.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_1.Controls.Add(new LiteralControl("보 낸 은 행"));
        row_1.Cells.Add(cell_1);

        TableCell cell_2 = new TableCell();
        cell_2.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_2.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_2.Controls.Add(new LiteralControl("받 은 은 행"));
        row_1.Cells.Add(cell_2);

        TableCell cell_3 = new TableCell();
        cell_3.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_3.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_3.Controls.Add(new LiteralControl("받 는 이"));
        row_1.Cells.Add(cell_3);

        TableCell cell_4 = new TableCell();
        cell_4.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_4.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_4.Controls.Add(new LiteralControl("송 금 금 액"));
        row_1.Cells.Add(cell_4);

        TableCell cell_5 = new TableCell();
        cell_5.ControlStyle.BackColor = System.Drawing.Color.Black;
        cell_5.ControlStyle.ForeColor = System.Drawing.Color.White;
        cell_5.Controls.Add(new LiteralControl("거 래 날 짜"));
        row_1.Cells.Add(cell_5);

        Table1.Rows.Add(row_1);

        /////////////////////////////////////////////////////////////////////////////////////////
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string connectionString = "server=(local)\\SQLExpress;Integrated Security=true;database=Guest_Identity";
            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = con;
            Cmd.CommandText = "SELECT*FROM " + Application["Guest_Login_ID"].ToString() + "_Trancsactional";

            con.Open();
            SqlDataReader reader = Cmd.ExecuteReader();



            while (reader.Read())
            {
                TableRow r = new TableRow();

                TableCell c1 = new TableCell();
                c1.Controls.Add(new LiteralControl(reader["보낸은행"].ToString()));
                r.Cells.Add(c1);

                TableCell c2 = new TableCell();
                c2.Controls.Add(new LiteralControl(reader["받은은행"].ToString()));
                r.Cells.Add(c2);

                TableCell c3 = new TableCell();
                c3.Controls.Add(new LiteralControl(reader["받는이"].ToString()));
                r.Cells.Add(c3);

                TableCell c4 = new TableCell();
                c4.Controls.Add(new LiteralControl(reader["송금금액"].ToString() + "￦"));
                r.Cells.Add(c4);

                TableCell c5 = new TableCell();
                c5.Controls.Add(new LiteralControl(reader["거래날짜"].ToString()));
                r.Cells.Add(c5);

                Table1.Rows.Add(r);
            }
            con.Close(); // 필수!!! Open으로 열어줬으면 꼭 닫아줘야함!!!
        }
        catch
        {
            Label1.Text = "[ 에러 발생 ] 로그아웃 후 다시 시작하여 주시기 바랍니다.";
        }
    }
}