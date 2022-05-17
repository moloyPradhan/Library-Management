using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void signin_Click(object sender, EventArgs e)
    {
        OleDbConnection con;
        OleDbCommand cmd;
        String mySql;

        con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/Library.accdb"));
        con.Open();
        mySql = "INSERT INTO login(uname,pwd,fullname,mail) values('" + uname.Text + "' , '" + cpwd.Text + "' , '" + name.Text + "','" + mail.Text + "')";
        cmd = new OleDbCommand(mySql, con);
        cmd.ExecuteNonQuery();
        Label1.Text = "Your Account is Successfully Created!";
        Label1.ForeColor = System.Drawing.Color.Green;
        
    }
}