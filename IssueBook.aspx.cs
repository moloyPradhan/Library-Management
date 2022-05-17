using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class IssueBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        OleDbConnection con;
        OleDbCommand cmd;
        String mySql;

        con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/Library.accdb"));
        con.Open();
        mySql = "INSERT INTO issuebook(studentid,uname,isbn,issuedate,returndate) values('" + stuId.Text + "'  , '" + Textuser.Text + "' , '" + isbn.Text + "' , '" + TextBox3.Text + "','" + TextBox4.Text + "')";
        cmd = new OleDbCommand(mySql, con);
        cmd.ExecuteNonQuery();
        Label1.Text = "Transaction Successfully Recorded....";
        Label1.ForeColor = System.Drawing.Color.Green;
    }
    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}