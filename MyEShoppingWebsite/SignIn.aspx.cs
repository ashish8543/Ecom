using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null) 
            {
                txtUsername.Text = Request.Cookies["UNAME"].Value;
                txtPass.Text = Request.Cookies["UPWD"].Value;
                CheckBox1.Checked = true;
            }
        }

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and Password=@pwd",con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@pwd", txtPass.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count!=0)
            {
                if(CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = txtUsername.Text;
                    Response.Cookies["UPWD"].Value = txtPass.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);

                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["Username"] = txtUsername.Text;
                Response.Redirect("~/UserHome.aspx");
            }
            else
            {
                lblError.Text = "Invalid Username Or Password";
            }

            //Response.Write("<script>alert ('Registration successfully done');</script>");
            clr();
            con.Close();
            //lblMsg.Text = "Registration successfully done";
            //lblMsg.ForeColor = System.Drawing.Color.Red;
        }

    }

    private void clr()
    {
        txtPass.Text = string.Empty;
        txtUsername.Text = string.Empty;
        txtUsername.Focus();
    }
}