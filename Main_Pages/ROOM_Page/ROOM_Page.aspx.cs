using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main_Pages_ROOM_Page_ROOM_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "신한_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/신한은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "국민_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/국민은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "하나_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/하나은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "기업_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/IBK기업은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "대구_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/DGB대구은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "시티_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/CITYBANK.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "전북_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/JB전북은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "경남_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/BMK경남은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "우리_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/우리은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "광주_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/우리은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "수협_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/KJB광주은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "부산_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/수협은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "농협_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/NH농협은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "외환_Bank";
        Application["Select_Bank_Image"] = "/image/BANK_MARK/KEB외환은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "제일_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/SC제일은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "제주_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/제주은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
    {
        Application["Linked_Bank_Name"] = "산업_Bank";
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/KDB산업은행.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/은행 연동및해지 인증.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Application["Select_Bank_Image"] = "~/image/BANK_MARK/B.B.H대출.jpg";
        Response.Redirect("~/Main_Pages/ROOM_Page/B.B.H대출.aspx");
    }
}