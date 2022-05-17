using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class history : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            refreshdata();
        }  
    }

    public void refreshdata()
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Library.accdb"));
        OleDbDataAdapter da = new OleDbDataAdapter("select * from issuebook", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "issuebook");

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}