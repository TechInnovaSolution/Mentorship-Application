using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;


namespace WebApplication1.Admin
{
    public partial class ViewMentor : System.Web.UI.Page
    {
        string mentor;
        protected void Page_Load(object sender, EventArgs e)
        {
            var u = Request.QueryString["id"];
            mentor = u.ToString();
            //Response.Write("jihfjfffh   -" + mentor);
        }


        protected void btnApprove_Click(object sender, EventArgs e)
        {
            if ((IsPostBack))
            {
                try
                {
                    if (IsPostBack)
                    {
                        SqlConnection connect = new SqlConnection();
                        connect.ConnectionString =
                            @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                            "Initial Catalog=MentorshipNetwork;" +
                            "persist security info=true;" +
                            "Integrated Security=SSPI;";
                        connect.Open();

                        string updatePrefQuery = "UPDATE Mentor SET MentorVerifiedStatus='Approved' "
                            + "WHERE MentorUsername = @Fuser";

                        SqlCommand comm = new SqlCommand(updatePrefQuery, connect);
                        comm.Parameters.AddWithValue("@Fuser", mentor);

                        comm.ExecuteNonQuery();
                        Response.Write("Succesful");

                        connect.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error\n" + ex.ToString());
                }
            }
        }

        protected void btnReject_Click(object sender, EventArgs e)
        {
            if ((IsPostBack))
            {
                try
                {
                    if (IsPostBack)
                    {
                        SqlConnection connect = new SqlConnection();
                        connect.ConnectionString =
                            @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                            "Initial Catalog=MentorshipNetwork;" +
                            "persist security info=true;" +
                            "Integrated Security=SSPI;";
                        connect.Open();

                        string updatePrefQuery = "UPDATE Mentor SET MentorVerifiedStatus='Rejected' "
                            + "WHERE MentorUsername = @Fuser";

                        SqlCommand comm = new SqlCommand(updatePrefQuery, connect);
                        comm.Parameters.AddWithValue("@Fuser", mentor);

                        comm.ExecuteNonQuery();
                        Response.Write("Succesful");

                        connect.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error\n" + ex.ToString());
                }
            }
        }

        protected void btnArchive_Click(object sender, EventArgs e)
        {
            if ((IsPostBack))
            {
                try
                {
                    if (IsPostBack)
                    {
                        SqlConnection connect = new SqlConnection();
                        connect.ConnectionString =
                            @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                            "Initial Catalog=MentorshipNetwork;" +
                            "persist security info=true;" +
                            "Integrated Security=SSPI;";
                        connect.Open();

                        string updatePrefQuery = "UPDATE Mentor SET MentorArchivedStatus = 'Inactive' "
                            + "WHERE MentorUsername = @Fuser";

                        SqlCommand comm = new SqlCommand(updatePrefQuery, connect);
                        comm.Parameters.AddWithValue("@Fuser", mentor);

                        comm.ExecuteNonQuery();
                        Response.Write("Succesful");

                        connect.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error\n" + ex.ToString());
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((IsPostBack))
            {
                try
                {
                    if (IsPostBack)
                    {
                        SqlConnection connect = new SqlConnection();
                        connect.ConnectionString =
                            @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                            "Initial Catalog=MentorshipNetwork;" +
                            "persist security info=true;" +
                            "Integrated Security=SSPI;";
                        connect.Open();

                        string updatePrefQuery = "UPDATE Mentor SET MentorArchivedStatus = 'Active' "
                            + "WHERE MentorUsername = @Fuser";

                        SqlCommand comm = new SqlCommand(updatePrefQuery, connect);
                        comm.Parameters.AddWithValue("@Fuser", mentor);

                        comm.ExecuteNonQuery();
                        Response.Write("Succesful");

                        connect.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error\n" + ex.ToString());
                }
            }
        }
    }
}