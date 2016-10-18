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
    public partial class MenteeHome : System.Web.UI.Page
    {
        string user;
        string prefGen, prefLoc, prefQual, prefUni, prefInd, prefCom, prefOcc, prefYExp, prefMExp;
        string menGen, menLoc, menQual, menUni, menInd, menCom, menOcc;
        int menYExp, menMExp;

        List<DisplayMentor> prefMentorList = new List<DisplayMentor>();
        List<DisplayRequest> requests = new List<DisplayRequest>();

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            user = username;

            lblUsername.Text = user;
   
            String menFName, menLName, menUsername;
          
            bool isValid = true;
            if (!(IsPostBack) && (isValid == true))
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString =
                                     @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                                     "Initial Catalog=MentorshipNetwork;" +
                                     "persist security info=true;" +
                                     "Integrated Security=SSPI;";
                conn.Open();

                string findMentee = "select * from PreferenceList where MenteeUsername='" + user + "'";


                SqlCommand connect = new SqlCommand(findMentee, conn);
                SqlDataReader reader = connect.ExecuteReader();

                if (reader.HasRows)
                {
                    
                    while (reader.Read())
                    {
                        prefGen = reader.GetString(1);
                        prefLoc = reader.GetString(2);
                        prefQual = reader.GetString(3);
                        prefUni = reader.GetString(4);
                        prefInd = reader.GetString(5);
                        prefCom = reader.GetString(6);
                        prefOcc = reader.GetString(7);
                        prefYExp = reader.GetString(8);
                        prefMExp = reader.GetString(9);

                        
                    }
                }
                else
                {
        
                    Response.Write("else");
                }

                reader.Close();

                int cnt = 0, num =0;
                string selectMentorQuery = "SELECT * FROM Mentor WHERE MentorVerifiedStatus = 'Accepted' AND MentorArchivedStatus = 'Active'";

                SqlCommand comma = new SqlCommand(selectMentorQuery, conn);
                SqlDataReader readerr = comma.ExecuteReader();

                while (readerr.HasRows)
                {
                    while (readerr.Read())
                    {
                        menUsername = readerr.GetString(0);
                        menFName = readerr.GetString(3);
                        menLName = readerr.GetString(2);
                        menGen = readerr.GetString(7);
                        menLoc = readerr.GetString(8);
                        menQual = readerr.GetString(9);
                        menUni = readerr.GetString(10);
                        menInd = readerr.GetString(11);
                        menCom = readerr.GetString(12);
                        menOcc = readerr.GetString(13);
                        menYExp = readerr.GetInt32(14);
                        menMExp = readerr.GetInt32(15);

                        cnt = counter();

                        if (cnt >= 0)
                        {
                            DisplayMentor m = new DisplayMentor {Username=menUsername, FName = menFName, LName = menLName, Company = menCom, Occupation = menOcc };
                            prefMentorList.Add(m);
                            //Response.Write(m.ToString());
                        }
                        Response.Write("\n" + cnt);
                        cnt = 0;
                    }
                    //Response.Write(menCom +menGen + menInd + menLoc + menMExp + menOcc+menUni + menQual + menYExp + "\n");
                    //Response.Write(prefMentorList.ToString());
                    num++;
                    readerr.NextResult();
                }
                readerr.Close();

                //Sent Requests
                string findMentor = "SELECT Mentor.MentorFirstName, Mentor.MentorLastName, Request.RequestStatus " 
                +"FROM Mentor INNER JOIN Request ON Mentor.MentorUsername = Request.MentorUsername INNER JOIN Mentee ON Request.MenteeUsername = Mentee.MenteeUsername "
                    + "WHERE Request.MenteeUsername = '" + user + "'";


                SqlCommand connect2 = new SqlCommand(findMentor, conn);
                SqlDataReader reader2 = connect2.ExecuteReader();

                while (reader2.HasRows)
                {

                    while (reader2.Read())
                    {
                        requests.Add(new DisplayRequest { FName = reader2.GetString(0), LName = reader2.GetString(1), RStatus = reader2.GetString(2) });
                        
                    }
                    reader2.NextResult();
                }
        

                reader2.Close();
                conn.Close();

            }

            BindListView();

            /*Label u = (Label)ListView1.FindControl("lblUsername");

            Session["mentor_user"] = "stuff";
            if (u != null) {
            string m_user = u.Text.ToString();

            Session["mentor_user"] = m_user;*/

                
            

            Session["username"] = user;
        
        }

        protected void BindListView()
        {
            ListView1.DataSource = prefMentorList;
            ListView1.DataBind();

            ListView2.DataSource = requests;
            ListView2.DataBind();
        }

        public class DisplayRequest
        {
            public string FName { get; set; }
            public string LName { get; set; }
            public string RStatus { get; set; }
            }
        
        public class DisplayMentor
        {
            public string FName { get; set; }
            public string LName { get; set; }
            public string Company { get; set; }
            public string Occupation { get; set; }
            public string Username { get; set; }
            public string ToString()
            {
                return FName + "\t" + LName + "\n" + Company + "\n" + Occupation;
            }

            public DisplayMentor() { }
        }

        

        int counter()
        {
            int cnt = 0;

            if ((prefGen == menGen)||(prefGen == "Not important"))
                cnt++;

            if ((prefLoc == menLoc)||(prefLoc == " "))
                cnt++;

            if (prefQual == menQual)
                cnt++;

            if (prefUni == menUni)
                cnt++;

            if (prefInd == menInd)
                cnt++;

            if (prefCom == menCom)
                cnt++;

            if (prefOcc == menOcc)
                cnt++;

            //Preffered Years Experience
            if (prefYExp == "Irrelevant")
                cnt++;
            else if ((prefYExp == "0 - 3") && (menYExp <= 3))
                cnt++;
            else if ((prefYExp == "4 - 7") && (menYExp > 3) && (menYExp <= 7))
                cnt++;
            else if ((prefYExp == "more than 7") && (menYExp > 7))
                cnt++;

            //Preffered mentor experience
            if (prefMExp == "Irrelevant")
                cnt++;
            else if ((prefMExp == "0 - 3") && (menMExp <= 3))
                cnt++;
            else if ((prefMExp == "4 - 7") && (menMExp > 3) && (menMExp <= 7))
                cnt++;
            else if ((prefMExp == "more than 7") && (menMExp > 7))
                cnt++;

            return cnt;
        }

        bool IsValid(bool isvalid)
        {


            return isvalid;
        }

        protected void ListView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

    }
}