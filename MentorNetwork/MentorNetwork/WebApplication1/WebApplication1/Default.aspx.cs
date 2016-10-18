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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string user = txtUserType.Text;
            string password;

            lblIncorrect.Visible = false;
            
        bool isValid = true;
        isValid = IsValid(isValid);

        if ((IsPostBack)&&(isValid==true))
        {
           SqlConnection conn = new SqlConnection();
           conn.ConnectionString =
                                @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                "Initial Catalog=MentorshipNetwork;" +
                                "persist security info=true;" +
                                "Integrated Security=SSPI;";
           conn.Open();

           string findUser;

           if (user == "Mentee"){
             findUser = "select * from Mentee where MenteeUsername='" + txtUserName.Text + "' AND MenteeArchivedStatus = 'Active'"; 
           }
           else if (user == "Mentor")
           {
               findUser = "select * from Mentor where MentorUsername='" + txtUserName.Text + "' AND MentorArchivedStatus = 'Active'"; 
           }
           else
           {
               findUser = "select * from Admin where AdminUsername='" + txtUserName.Text + "' AND AdminArchiveStatus = 'Active'"; 
           }
            

            SqlCommand com = new SqlCommand(findUser, conn);
            SqlDataReader reader = com.ExecuteReader();

            if (reader.HasRows)
            {
                //Response.Write(reader.GetString(2));
                while (reader.Read())
                {
                    
                    password = (reader.GetString(1)).ToString();
                 
                    string pass = txtPassword.Text;
                    /*Response.Write(pass);
                    Response.Write(password);*/
                    if (password == pass)
                    {
                        lblIncorrect.Visible = true;     
                    }
                    else {
                        Session["username"] = reader.GetString(0);
                        
                        if (user == "Mentee")
                        {
                            Response.Redirect("MenteeHome.aspx");
                        }
                        else if (user == "Mentor")
                        {
                            Response.Redirect("MentorHome.aspx");
                        }
                        else
                        {
                            Response.Redirect("~/Admin/AdminHome.aspx");
                        }
                       
                }
                }
            }
            else
            {
                lblIncorrect.Text = "User" + txtUserName.Text + " does not exist.";
                lblIncorrect.Visible = true;
                Response.Write(txtUserName.Text);
            }

            reader.Close();


            conn.Close();
        }
    }

        bool IsValid(bool isValid)
        {
            if (txtUserName.Text == "")
            {
                isValid = false;
                lblIncorrect.Visible = true;
            }

            if ((txtPassword.Text == ""))
            {
                isValid = false;
                lblIncorrect.Visible = true;
            }

            return isValid;
        }

        protected void btnSignUp_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
        
    }
}