using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class BookAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addbook_Click(object sender, EventArgs e)
    {
        OleDbConnection con;
        OleDbCommand cmd;
        String mySql;

        con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/Library.accdb"));
        con.Open();
        mySql = "INSERT INTO books(bookname,category,author,isbn,price) values('" + bookName.Text + "' , '" + bookCat.Text + "' , '" + bookAuth.Text + "','" + isbn.Text + "', '" + bookprice.Text + "')";
        cmd = new OleDbCommand(mySql, con);
        cmd.ExecuteNonQuery();

        bookName.Text = "";
        bookCat.Text = "";
        bookAuth.Text = "";
        isbn.Text = "";
        bookprice.Text = "";


        Label1.Text = "Record Successfully Inserted....";
        Label1.ForeColor = System.Drawing.Color.Green;
    }
}