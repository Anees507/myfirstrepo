using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Library_Managemant
{ 
    public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        if (isformvalid())
        {
                string cs = ConfigurationManager.ConnectionStrings["FashionConnectionString"].ConnectionString;
                SqlConnection cn = new SqlConnection(cs);
                cn.Open();
                try
                {
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers(firstname,lastname,email,username,password) Values('" + txtFirstname.Text + "','" + txtLastname.Text + "','" + txtEmail.Text + "','" + txtUsername.Text + "','" + txtpass.Text + "','");
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Registration done Successfully');  </script>");
                    clr();
                }
                catch (Exception ex)
                { 
                    Console.WriteLine(ex.Message); 
                }
                finally
                {
                    cn.Close();
                }
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            Response.Write("<script> alert('Registration failed');  </script>");
        }
    }

    public bool isformvalid()
    {
        if (txtFirstname.Text == "")
        {
            Response.Write("<script> alert('This field is mandatory'); </script>");
            txtFirstname.Focus();

            return false;
        }
        else if (txtLastname.Text == "")
        {
            Response.Write("<script> alert('This field is mandatory'); </script>");
            txtLastname.Focus();

            return false;
        }
        else if (txtEmail.Text == "")
        {
            Response.Write("<script> alert('This field is mandatory'); </script>");
            txtEmail.Focus();
            return false;
        }
        else if (txtUsername.Text == "")
        {
            Response.Write("<script> alert('This field is mandatory');  </script>");
            txtUsername.Focus();
            return false;
        }
        else if (txtpass.Text == "")
        {
            Response.Write("<script> alert('This field is mandatory');  </script>");
            txtpass.Focus();
            return false;
        }

        return true;
    }

    private void clr()
    {
        txtFirstname.Text = string.Empty;
        txtLastname.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtUsername.Text = string.Empty;
        txtpass.Text = string.Empty;
    }
}

}



