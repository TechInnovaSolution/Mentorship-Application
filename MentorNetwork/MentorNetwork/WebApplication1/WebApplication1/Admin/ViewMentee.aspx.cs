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
    public partial class ViewMentee : System.Web.UI.Page
    {
        string mentee;
        protected void Page_Load(object sender, EventArgs e)
        {
            var u = Request.QueryString["id"];
            mentee = u.ToString();
            Response.Write("jihfjfffh   -" + mentee);
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

                        string updatePrefQuery = "UPDATE Mentee SET MenteeArchivedStatus = 'Inactive'"
                            + "WHERE MentorUsername = @Fuser";

                        SqlCommand comm = new SqlCommand(updatePrefQuery, connect);
                        comm.Parameters.AddWithValue("@Fuser", mentee);

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

                        string updatePrefQuery = "UPDATE Mentee SET MenteeArchivedStatus = 'Active'"
                            + "WHERE MentorUsername = @Fuser";

                        SqlCommand comm = new SqlCommand(updatePrefQuery, connect);
                        comm.Parameters.AddWithValue("@Fuser", mentee);

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
