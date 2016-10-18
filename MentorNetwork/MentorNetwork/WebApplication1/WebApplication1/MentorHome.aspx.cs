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
    public partial class MentorHome : System.Web.UI.Page
    {
        string username = "Ken";
        List<DisplayRequest> requests = new List<DisplayRequest>();

        protected void Page_Load(object sender, EventArgs e)
        {
           // username = Session["username"].ToString();
            Response.Write(username);

            if (!(IsPostBack))
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString =
                                     @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                     "Initial Catalog=MentorshipNetwork;" +
                                     "persist security info=true;" +
                                     "Integrated Security=SSPI;";
                conn.Open();

                //Sent Requests
                string findMentor = "SELECT Request.MenteeUsername, Mentee.MenteeFirstName, Mentee.MenteeLastName, Request.RequestStatus " 
                +"FROM Mentee INNER JOIN Request ON Mentee.MenteeUsername = Request.MenteeUsername INNER JOIN Mentor ON Request.MentorUsername = Mentor.MentorUsername "
                    + "WHERE Request.MentorUsername = '" + username + "'";


                SqlCommand connect2 = new SqlCommand(findMentor, conn);
                SqlDataReader reader2 = connect2.ExecuteReader();

                while (reader2.HasRows)
                {

                    while (reader2.Read())
                    {
                        requests.Add(new DisplayRequest { Username = reader2.GetString(0), FName = reader2.GetString(1), LName = reader2.GetString(2), RStatus = reader2.GetString(3) });
                        
                    }
                    reader2.NextResult();
                }
        

                reader2.Close();
                conn.Close();

            }

            ListView2.DataSource = requests;
            ListView2.DataBind();
            
        }

        public class DisplayRequest
        {
            public string Username { get; set; }
            public string FName { get; set; }
            public string LName { get; set; }
            public string RStatus { get; set; }
        }

        protected void ListView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}