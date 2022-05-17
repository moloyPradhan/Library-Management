using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class UpdateBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Library.accdb"));
        OleDbDataAdapter da = new OleDbDataAdapter("select * from books where isbn='" + TextBox1.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "books");

        GridView1.DataSource = ds;
        GridView1.DataBind();
        MultiView1.ActiveViewIndex = 1;
    }
   
    protected void back_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        GridView1.DataSource="";
        GridView1.DataBind();
        Label1.Text = "";
    }
    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void modifybook_Click(object sender, EventArgs e)
    {
        OleDbConnection con;
        OleDbCommand cmd;
        String mySql;

        con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/Library.accdb"));
        con.Open();
        mySql = "UPDATE books SET bookname='" + bookName.Text + "',category='" + bookCat.Text + "',author='" + bookAuth.Text + "',price='" + bookprice.Text + "' where isbn='" + TextBox1.Text + "'";
        cmd = new OleDbCommand(mySql, con);
        cmd.ExecuteNonQuery();

        /*bookName.Text = "";
        bookCat.Text = "";
        bookAuth.Text = "";
        bookprice.Text = "";*/


        Label1.Text = "Record Successfully updated....";

        OleDbDataAdapter da = new OleDbDataAdapter("select * from books where isbn='" + TextBox1.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "books");

        GridView1.DataSource = ds;
        GridView1.DataBind();


    }
}