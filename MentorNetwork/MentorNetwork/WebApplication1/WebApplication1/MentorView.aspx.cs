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
    public partial class MentorView : System.Web.UI.Page
    {
        string user;
        string mentor;
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            user = username;
            lblUsername.Text = user;

            var u = Request.QueryString["Username"];
            mentor = u.ToString();

            if (!(IsPostBack) )
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString =
                                     @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                     "Initial Catalog=MentorshipNetwork;" +
                                     "persist security info=true;" +
                                     "Integrated Security=SSPI;";
                conn.Open();

                string findMentor = "SELECT * from Mentor where MentorUsername='" + mentor+"'";


                SqlCommand com = new SqlCommand(findMentor, conn);
                SqlDataReader reader = com.ExecuteReader();

                if (reader.HasRows)
                {

                    while (reader.Read())
                    {
                        lblName.Text = reader.GetString(2);
                    }
                }
                else
                {

                    Response.Write("else");
                }

                reader.Close();
            }
        }
        

             protected void btnRequest_Click(object sender, EventArgs e)
             {
                 if ((IsPostBack))
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString =
                        @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                        "Initial Catalog=MentorshipNetwork;" +
                        "persist security info=true;" +
                        "Integrated Security=SSPI;";
                    // @"AttachDbFilename=F:\SD\MentorNetwork\MentorshipNetwork.mdf;";
                    con.Open();

                        string checkuser = "select count(*) from Request where MenteeUsername='" + user + "' AND MentorUsername ='"+ mentor+"'";
                        //Warning username is used

                        SqlCommand com = new SqlCommand(checkuser, con);
                        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                        if (temp >= 1)
                        {
                            MsgBox("Request already sent", this.Page, this);
                        }
                        else 
                        {
                         try
                            {
                                SqlConnection connect = new SqlConnection();
                                connect.ConnectionString =
                                    @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                    "Initial Catalog=MentorshipNetwork;" +
                                    "persist security info=true;" +
                                    "Integrated Security=SSPI;";
                                connect.Open();

                                string insertRequestQuery = "insert into Request (MenteeUsername, MentorUsername) values (@FMenteeUName, @FMentor)";

                                SqlCommand comm = new SqlCommand(insertRequestQuery, connect);
                                comm.Parameters.AddWithValue("@FMenteeUname", user);
                                comm.Parameters.AddWithValue("@FMentor", mentor);                        

                                comm.ExecuteNonQuery();
                                Response.Write("Succesful");
             

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

             public void MsgBox(String ex, Page pg, Object obj)
             {
                 string s = "<SCRIPT language = 'javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "');</SCRIPT>";
                 Type cstype = obj.GetType();
                 ClientScriptManager cs = pg.ClientScript;
                 cs.RegisterClientScriptBlock(cstype, s, s.ToString());
             }

             protected void btnSignOut_Click(object sender, EventArgs e)
             {
                 Response.Redirect("Default.aspx");
             }

    }
}