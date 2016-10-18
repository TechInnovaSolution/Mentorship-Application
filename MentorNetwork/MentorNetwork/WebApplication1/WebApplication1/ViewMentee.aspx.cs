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

            lblUsername.Text = mentee;
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
                                 MsgBox("Request Accepted", this.Page, this);

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
                        MsgBox("Request Rejected", this.Page, this);

                        connect.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error\n" + ex.ToString());
                }
            }
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language = 'javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "');</SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
    }
}