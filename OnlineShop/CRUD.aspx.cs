using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class CRUD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\OnlineShopping.mdf; Integrated Security=true";
        SqlConnection sqlcon = new SqlConnection(constring);
        FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
        String link = "images/" + Path.GetFileName(FileUpload1.FileName);
        String query = "Insert into ProductDetails(ProductName,Price,ProductImage) values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + link + "')";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open(); ;
        //cmd.ExecuteNonQuery();
        sqlcon.Close();

        Label2.Text = "Data Has Been Saved Successfully";
        TextBox1.Text = "";
        TextBox2.Text = "";

    }
}