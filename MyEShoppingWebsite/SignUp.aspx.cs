using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtsignup_Click(object sender, EventArgs e)
    //{
    //    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString);
    //    SqlConnection con= new SqlConnection("Data Source=.;Initial Catalog=MyEShoppingDB;Integrated Security=True");
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Email,Name)Values ('" + txtUname.Text+"','"+txtpass.Text+ "','"+txtEmail.Text+ "','"+txtname.Text+"')",con);
    //    cmd.ExecuteNonQuery();
    //    Response.Write("<script>alert ('Registration successfully done');</script>");
    //    con.Close();
    //}
    {
        if (isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Email,Name)Values ('" + txtUname.Text + "','" + txtpass.Text + "','" + txtEmail.Text + "','" + txtname.Text + "')", con);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert ('Registration successfully done');</script>");
                clr();
                con.Close();
                lblMsg.Text = "Registration successfully done";
                lblMsg.ForeColor = System.Drawing.Color.Red;
           }
            Response.Redirect("~/SignIn.aspx");

        }
        else
        {
            Response.Write("<script>alert ('Registration Faild');</script>");
            lblMsg.Text = "*All Field Mandatory";
            lblMsg.ForeColor = System.Drawing.Color.Red;
            

        }

    }

    private bool isformvalid()
    {
        if (txtUname.Text == "")
        {
            Response.Write("<script>alert ('Registration successfully done');</script>");
            txtUname.Focus();
            return false;
            
        }
        else if (txtpass.Text == "")
        {
            Response.Write("<script>alert ('Passsword not valid');</script>");
            txtpass.Focus();
            return false;
        }

        else if (txtpass.Text != txtCpass.Text)
        {
            Response.Write("<script>alert ('Confirm Passsword not valid');</script>");
            txtCpass.Focus();
            return false;
        }
         else if (txtEmail.Text == "")
        {
            Response.Write("<script>alert ('Email not valid');</script>");
            txtEmail.Focus();
            return false;
        }
        else if (txtname.Text == "")
        {
            Response.Write("<script>alert ('Name  not valid');</script>");
            txtname.Focus();
            return false;
        }


        return true;
    }

    private void clr()
        {
        txtname.Text = string.Empty;
        txtpass.Text = string.Empty;
        txtUname.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtCpass.Text = string.Empty;
    }
}