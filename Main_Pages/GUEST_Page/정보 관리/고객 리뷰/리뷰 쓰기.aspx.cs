using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Main_Pages_GUEST_Page_정보_관리_고객_리뷰_리뷰_쓰기 : System.Web.UI.Page
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
            nameTextBox.Text = reader["이름"].ToString();

            idTextBox.Text = reader["아이디"].ToString();
        }
        con.Close();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fn = Server.MapPath("~/App_Data/XMLFile.xml");
        XmlDocument doc = new XmlDocument();
        doc.Load(fn);

        /////////////////////////////////////////////////////////////////////////

        XmlNode root = doc.DocumentElement;
        XmlNode guestnode = doc.CreateElement("guest");
        root.AppendChild(guestnode);

        /////////////////////////////////////////////////////////////////////////

        XmlAttribute name;
        name = doc.CreateAttribute("name");
        name.Value = nameTextBox.Text;
        guestnode.Attributes.Append(name);

        XmlAttribute ID;
        ID = doc.CreateAttribute("ID");
        ID.Value = idTextBox.Text;
        guestnode.Attributes.Append(ID);

        XmlAttribute data;
        data = doc.CreateAttribute("data");
        data.Value = DateTime.Now.ToString();
        guestnode.Attributes.Append(data);

        XmlAttribute title;
        title = doc.CreateAttribute("title");
        title.Value = titleTextBox.Text;
        guestnode.Attributes.Append(title);

        /////////////////////////////////////////////////////////////////////////

        string sbody = bodyTextBox.Text;
        sbody = sbody.Replace("\n", "<br>");

        XmlAttribute body;
        body = doc.CreateAttribute("body");
        body.Value = sbody;
        guestnode.Attributes.Append(body);

        /////////////////////////////////////////////////////////////////////////

        doc.Save(fn);
        doc = null;

        Response.Redirect("~/Main_Pages/GUEST_Page/정보 관리/고객 리뷰/고객 리뷰.aspx");


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Main_Pages/GUEST_Page/정보 관리/고객 리뷰/고객 리뷰.aspx");
    }
}