using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string mentee;
        protected void Page_Load(object sender, EventArgs e)
        {
            var u = Request.QueryString["id"];
            mentee = u.ToString();
            Response.Write("jihfjfffh   -" + mentee);
        }

        protected void btnAcceptRequest_Click(object sender, EventArgs e)
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

                                 string updatePrefQuery = "UPDATE Request SET RequestStatus='Accepted' "
                                     + "WHERE MenteeUsername = @Fuser";

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

        protected void btnRejectRequest_Click(object sender, EventArgs e)
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

                        string updatePrefQuery = "UPDATE Request SET RequestStatus='Rejected' "
                            + "WHERE MenteeUsername = @Fuser";

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
}