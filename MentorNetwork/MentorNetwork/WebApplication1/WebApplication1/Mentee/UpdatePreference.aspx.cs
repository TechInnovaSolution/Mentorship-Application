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
    public partial class UpdatePreference : System.Web.UI.Page
    {
        string user ;
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            user = username;
        }

        protected void btnSave_Click(object sender, EventArgs e)
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
       
                con.Open();

                    string checkuser = "select count(*) from PreferenceList where MenteeUsername='" +user + "'";
                    //User has a preference list

                    SqlCommand com = new SqlCommand(checkuser, con);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp >= 1)
                    {
                        Response.Write("User already exists.");

                        try
                        {
                            if ((IsPostBack) && (isValid == true))
                            {
                                SqlConnection connect = new SqlConnection();
                                connect.ConnectionString =
                                    @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                    "Initial Catalog=MentorshipNetwork;" +
                                    "persist security info=true;" +
                                    "Integrated Security=SSPI;";
                                connect.Open();

                                string updatePrefQuery = "UPDATE PreferenceList SET PrefGender=@FGen, PrefLocation = @FLoc, PrefUni=@FUni,"
                                    + "PrefQualification=@FQual, PrefIndustry=@FInd, PrefCompany=@FCom, PrefOccupation=@FOcc,"
                                    + "PrefYearsExp=@FYE, PrefMentorExp=@FMenExp WHERE MenteeUsername = @Fuser";

                                SqlCommand comm = new SqlCommand(updatePrefQuery, connect);
                                comm.Parameters.AddWithValue("@FGen", txtGender.Text);
                                comm.Parameters.AddWithValue("@FLoc", txtLocation.Text);
                                comm.Parameters.AddWithValue("@FUni", txtUni.Text);
                                comm.Parameters.AddWithValue("@FQual", txtQualification.Text);
                                comm.Parameters.AddWithValue("@FInd", txtIndustry.Text);
                                comm.Parameters.AddWithValue("@FCom", txtCompany.Text);
                                comm.Parameters.AddWithValue("@FOcc", txtOccupation.Text);
                                comm.Parameters.AddWithValue("@FYE", txtWorkExp.Text);
                                comm.Parameters.AddWithValue("@FMenExp", txtMentorExp.Text);
                                comm.Parameters.AddWithValue("@Fuser", user);

                                comm.ExecuteNonQuery();
                                Response.Write("Succesful");

                                Session["username"] = user;
                                Response.Redirect("Mentee_Home.aspx");

                                connect.Close();
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Error\n" + ex.ToString());
                        }
                    }
                    else if (isValid == true)
                    {
                        /*lblIncUsername.Visible = false;
                        lblInvalidEmail.Visible = false;
                        lblInvalidPass.Visible = false;
                        lblInvalidPass0.Visible = false;*/

                        try
                        {
                            SqlConnection connect = new SqlConnection();
                            connect.ConnectionString =
                                @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                "Initial Catalog=MentorshipNetwork;" +
                                "persist security info=true;" +
                                "Integrated Security=SSPI;";
                            connect.Open();

                            string insertPrefQuery = "insert into PreferenceList (MenteeUsername, PrefGender, PrefLocation, PrefQualification, PrefUni, PrefIndustry, PrefCompany, PrefOccupation, PrefYearsExp, PrefMentorExp) "
                                      + "values (@Fuser, @FGen, @FLoc, @FQual, @FUni, @FInd, @FCom, @FOcc,@FYE, @FMenExp)";

                            SqlCommand comm = new SqlCommand(insertPrefQuery, connect);
                            comm.Parameters.AddWithValue("@FGen", txtGender.Text);
                            comm.Parameters.AddWithValue("@FLoc", txtLocation.Text);
                            comm.Parameters.AddWithValue("@FUni", txtUni.Text);
                            comm.Parameters.AddWithValue("@FQual", txtQualification.Text);
                            comm.Parameters.AddWithValue("@FInd", txtIndustry.Text);
                            comm.Parameters.AddWithValue("@FCom", txtCompany.Text);
                            comm.Parameters.AddWithValue("@FOcc", txtOccupation.Text);
                            comm.Parameters.AddWithValue("@FYE", txtWorkExp.Text);
                            comm.Parameters.AddWithValue("@FMenExp", txtMentorExp.Text);
                            comm.Parameters.AddWithValue("@Fuser", user);

                            comm.ExecuteNonQuery();
                            Response.Write("Succesful");
                            Session["username"] = user;
                            Response.Redirect("Mentee_Home.aspx");

                            connect.Close();
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Error\n" + ex.ToString());
                        }
                    
                    }
                    con.Close();
                
            }
        }

        bool IsValid(bool isValid)
    {
        /*if (txtUserName.Text == "")
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
        }*/

        return isValid;
    }
    }
}