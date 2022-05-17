using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class StuAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con;
        OleDbCommand cmd,cmd2;
        String mySql,mysql2;

        con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/Library.accdb"));
        con.Open();
        mySql = "INSERT INTO student(studentid,fullname,email,mobileno,username,pword) values('" + Textid.Text + "' , '" + Textname.Text + "' , '" + Textmail.Text + "','" + Textmobile.Text + "', '" + Textmail.Text + "', '" + Textmobile.Text + "')";

        mysql2 = "INSERT INTO login(uname,pwd,fullname,mail) values('" + Textmail.Text + "' , '" + Textmobile.Text + "' , '" + Textname.Text + "','" + Textmail.Text + "')";
        
        cmd = new OleDbCommand(mySql,con);
        cmd2 = new OleDbCommand(mysql2, con);

        cmd.ExecuteNonQuery();

        cmd2.ExecuteNonQuery();

        Textid.Text = "";
        Textname.Text = "";
        Textmail.Text = "";
        Textmobile.Text = "";
        

        Label1.Text = "Record Successfully Inserted....";
        Label1.ForeColor = System.Drawing.Color.Green;
    }

}