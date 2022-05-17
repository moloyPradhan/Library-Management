using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class DeleteBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void search_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Library.accdb"));
        OleDbDataAdapter da = new OleDbDataAdapter("select * from books where isbn='" + TextBox1.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "books");

        GridView1.DataSource = ds;
        GridView1.DataBind();
        Label1.Text = "";
    }
    protected void del_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Library.accdb"));
        OleDbDataAdapter da = new OleDbDataAdapter("select * from books where isbn='" + TextBox1.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "books");

        GridView1.DataSource = ds;
        GridView1.DataBind();

        OleDbDataAdapter da2 = new OleDbDataAdapter("DELETE * from books where isbn='" + TextBox1.Text + "'", con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2, "student");

        Label1.Text = "This Record is Deleted...";
        Label1.ForeColor = System.Drawing.Color.Red;
    }
}