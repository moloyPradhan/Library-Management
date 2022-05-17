using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con;
        OleDbCommand cmd;
        String mySql;
        OleDbDataAdapter da;
        con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("~/Library.accdb"));
        mySql = "select * from login where uname=@username and pwd=@word";
        cmd = new OleDbCommand(mySql, con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@word", TextBox2.Text);

        da = new OleDbDataAdapter("select * from login where uname='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'", con);
        DataTable dt = new DataTable();

        da.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (dt.Rows.Count > 0 && TextBox1.Text == "admin")
        {
            Session["id"] = TextBox1.Text;
            Response.Redirect("home.aspx");
            Session.RemoveAll();
        }
        else
        {
            if (dt.Rows.Count > 0 && TextBox1.Text != "admin")
            {
                Session["id"] = TextBox1.Text;
                Response.Redirect("stuDash.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Text = "Username or Password is incorrect..!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
        
    }
}