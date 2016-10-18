using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            bool isValid = true;
            isValid = IsValid(isValid);

            if ((IsPostBack) && (isValid == true))
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString =
                    @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                    "Initial Catalog=MentorshipNetwork;" +
                    "persist security info=true;" +
                    "Integrated Security=SSPI;";
                // @"AttachDbFilename=F:\SD\MentorNetwork\MentorshipNetwork.mdf;";
                con.Open();

                if (txtUserType.Text == "Mentee")
                {
                    string checkuser = "select count(*) from Mentee where MenteeUsername='" + txtUserName.Text + "'";
                    //Warning username is used

                    SqlCommand com = new SqlCommand(checkuser, con);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp >= 1)
                    {
                        Response.Write("User already exists.");
                    }
                    else if (isValid == true)
                    {
                        lblIncUsername.Visible = false;
                        lblInvalidEmail.Visible = false;
                        lblInvalidPass.Visible = false;
                        lblInvalidPass0.Visible = false;

                        try
                        {
                            SqlConnection connect = new SqlConnection();
                            connect.ConnectionString =
                                @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                "Initial Catalog=MentorshipNetwork;" +
                                "persist security info=true;" +
                                "Integrated Security=SSPI;";
                            connect.Open();

                            string insertMenteeQuery = "insert into Mentee (MenteeUsername, MenteeEmail, MenteePassword) values (@FUName, @FEmail, @FPassword)";

                            SqlCommand comm = new SqlCommand(insertMenteeQuery, connect);
                            comm.Parameters.AddWithValue("@FUname", txtUserName.Text);
                            comm.Parameters.AddWithValue("@FEmail", txtEmail.Text);
                            comm.Parameters.AddWithValue("@FPassword", txtPassword.Text);

                            comm.ExecuteNonQuery();
                            Response.Write("Succesful");
                            Session["username"] = txtUserName.Text;
                            Response.Redirect("MenteeRegister.aspx");

                            connect.Close();
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Error\n" + ex.ToString());
                        }
                    }

                    con.Close();
                }
                else if (txtUserType.Text == "Mentor")
                {

                    string checkuser = "select count(*) from Mentor where MentorUsername='" + txtUserName.Text + "'";
                    //Warning username is used

                    SqlCommand com = new SqlCommand(checkuser, con);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp >= 1)
                    {
                        Response.Write("User already exists.");
                    }
                    else if (isValid == true)
                    {
                        lblIncUsername.Visible = false;
                        lblInvalidEmail.Visible = false;
                        lblInvalidPass.Visible = false;
                        lblInvalidPass0.Visible = false;

                        try
                        {
                            SqlConnection connect = new SqlConnection();
                            connect.ConnectionString =
                                @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                "Initial Catalog=MentorshipNetwork;" +
                                "persist security info=true;" +
                                "Integrated Security=SSPI;";
                            connect.Open();

                            string insertMentorQuery = "insert into Mentor (MentorUsername, MentorEmail, MentorPassword) values (@FUName, @FEmail, @FPassword)";

                            SqlCommand comm = new SqlCommand(insertMentorQuery, connect);
                            comm.Parameters.AddWithValue("@FUname", txtUserName.Text);
                            comm.Parameters.AddWithValue("@FEmail", txtEmail.Text);
                            comm.Parameters.AddWithValue("@FPassword", txtPassword.Text);

                            comm.ExecuteNonQuery();
                            Response.Write("Succesful");
                            Session["username"] = txtUserName.Text;
                            Response.Redirect("MentorRegister.aspx");

                            connect.Close();
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Error\n" + ex.ToString());
                        }
                    }
                }
     
                        con.Close();
                    }
            }
   
     bool IsValid(bool isValid)
    {
        if (txtUserName.Text == "")
        {
            isValid = false;
            lblIncUsername.Text = "Please enter a username";
            lblIncUsername.Visible = true;
        }

        if (txtEmail.Text == "")
        {
            isValid = false;
            lblInvalidEmail.Text = "Please enter your email address";
            lblInvalidEmail.Visible = true;
        }

        if ((txtPassword.Text == ""))
        {
            isValid = false;
            lblInvalidPass.Text = "Please enter a valid password with 8 characters";
            lblInvalidPass.Visible = true;
        }

        if(txtPassword0.Text != txtPassword.Text)
        {
            isValid = false;
            lblInvalidPass0.Text = "Password confirmation does not match Original password";
            lblInvalidPass0.Visible = true;
        }

        return isValid;
    }
        
        
    }
}