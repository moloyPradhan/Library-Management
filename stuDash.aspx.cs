using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class stuDash : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { refreshdata();
           
        }  
        Label1.Text =  Session["id"].ToString();
        MultiView1.ActiveViewIndex = 0;

    }
    public void refreshdata()
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Library.accdb"));
        OleDbDataAdapter da = new OleDbDataAdapter("select * from student where username='"+Session["id"].ToString() +"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "student");

        GridView1.DataSource = ds;
        GridView1.DataBind();

    }

    protected void edit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void modify_Click(object sender, EventArgs e)
    {
        OleDbConnection con;
        OleDbCommand cmd,cmd2,cmd3;
        String mySql,mysql2,mysql3;

        con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/Library.accdb"));
        con.Open();
        mySql = "UPDATE student SET fullname='" + TextBox1.Text + "',email='" + TextBox2.Text + "',mobileno='" + TextBox3.Text + "',username='" + TextBox4.Text + "',pword='" + TextBox5.Text + "' where username='" + Session["id"].ToString() + "'";
        
        mysql2 = "UPDATE login SET fullname='" + TextBox1.Text + "',mail='" + TextBox2.Text + "',uname='" + TextBox4.Text + "',pwd='" + TextBox5.Text + "' where uname='" + Session["id"].ToString() + "'";

        mysql3 = "UPDATE issuebook SET uname='" + TextBox4.Text + "' where uname='" + Session["id"].ToString() + "'";
        cmd = new OleDbCommand(mySql, con);

        cmd2 = new OleDbCommand(mysql2, con);

        cmd3 = new OleDbCommand(mysql3, con);

        cmd.ExecuteNonQuery();

        cmd2.ExecuteNonQuery();

        cmd3.ExecuteNonQuery();

        Label1.Text = "Record Successfully Updated....";


        OleDbDataAdapter da = new OleDbDataAdapter("select * from student where studentid='" + Session["id"].ToString() + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "student");

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }



    protected void logout_Click1(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
    protected void history_Click(object sender, EventArgs e)
    {      
    }
    protected void first_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void hist_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Library.accdb"));
        OleDbDataAdapter da = new OleDbDataAdapter("select * from issuebook where uname='" + Session["id"].ToString() + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "issuebook");

        GridView2.DataSource = ds;
        GridView2.DataBind();

    }
    protected void return_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}