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
    public partial class MenteeRegister : System.Web.UI.Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            user = username;

            lblUsername.Text = user;

            if (!(IsPostBack))
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString =
                                     @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                     "Initial Catalog=MentorshipNetwork;" +
                                     "persist security info=true;" +
                                     "Integrated Security=SSPI;";
                conn.Open();

                string findUser;

                findUser = "select * from Mentee where MenteeUsername='" + user + "'";

                SqlCommand com = new SqlCommand(findUser, conn);
                SqlDataReader reader = com.ExecuteReader();

                if (reader.HasRows)
                {

                    while (reader.Read())
                    {
                        txtFName.Text = reader.GetString(4);
                        txtLName.Text = reader.GetString(2);
                        txtGender.Text = reader.GetString(3);
                        txtDoB.Text = (reader.GetDateTime(5)).ToString(); 
                        txtPhone.Text = reader.GetString(7);
                        txtLocation.Text = reader.GetString(8);
                        txtLocation.Visible = true;
                        txtQualification.Text = reader.GetString(10);
                        txtUni.Text = reader.GetString(9);
                        txtUni.Visible = true;
                        txtYoS.Text = reader.GetString(11);
                        txtYoS.Visible = true;
    
                    }
                }

                reader.Close();


                conn.Close();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            bool isValid = true;
            isValid = IsValid(isValid);

            lblIncorrect.Visible = false;

            try
            {
            if ((IsPostBack)&&(isValid==true))
                {
                SqlConnection connect = new SqlConnection();
                connect.ConnectionString =
                    @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                    "Initial Catalog=MentorshipNetwork;" +
                    "persist security info=true;" +
                    "Integrated Security=SSPI;";
                connect.Open();

                string updateUserQuery = "UPDATE Mentee SET MenteeLastName=@FLName, MenteeFirstName=@FFName, MenteeDoB=@fDoB, MenteeGender=@FGen, MenteePhone=@FPhone, MenteeLocation = @FLoc, MenteeUni=@FUni, MenteeYearOfStudy = @FYoS, MenteeQualification = @FQual WHERE MenteeUsername = @Fuser";

                SqlCommand comm = new SqlCommand(updateUserQuery, connect);
                comm.Parameters.AddWithValue("@FLName", txtLName.Text);
                comm.Parameters.AddWithValue("@FFName", txtFName.Text);
                comm.Parameters.AddWithValue("@fDoB", txtDoB.Text);
                comm.Parameters.AddWithValue("@FGen", txtGender.Text);
                comm.Parameters.AddWithValue("@FPhone", txtPhone.Text);
                comm.Parameters.AddWithValue("@FLoc", txtLocation.Text);
                comm.Parameters.AddWithValue("@FUni", txtUni.Text);
                comm.Parameters.AddWithValue("@FYoS", txtYoS.Text);
                comm.Parameters.AddWithValue("@FQual", txtQualification.Text);
                comm.Parameters.AddWithValue("@Fuser", user);

                comm.ExecuteNonQuery();
                Response.Write("Succesful");

                Session["username"] = user;
               Response.Redirect("MenteeHome.aspx");

                connect.Close();
            }
            }
            catch (Exception ex)
            {
                Response.Write("Error\n" + ex.ToString());
            }
        }
        
        

    bool IsValid(bool isValid)
    {
        if( (txtFName.Text == "")||(txtLName.Text == "")||(txtDoB.Text == "")||(txtGender.Text == "")||(txtLocation.Text == "")||(txtQualification.Text == "")||(txtUni.Text == "")||(txtYoS.Text == ""))
        {
            isValid = false;
            lblIncorrect.Visible = true;
        }

        return isValid;
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    }
}