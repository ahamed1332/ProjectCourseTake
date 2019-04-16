using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Traning_Course
{
    public partial class RegistrationAndLogin : System.Web.UI.Page
    {
        private String c_name;
        private String c_id;
        string Description;

        protected void Page_Load(object sender, EventArgs e)
        {



            c_name = Request.Params["name1"].ToString();




            if (!(c_name.Equals("networking") || c_name.Equals("hardware") || c_name.Equals("projectmanaget") || c_name.Equals("BigData") || c_name.Equals("GameDevolopment") || c_name.Equals("AdvancePrograming")))
            {



             Response.Redirect("RegistrationAndLogin.aspx?name1=" + Request.Params["name1"].ToString());

            }
            else
            {
              //  Response.Write(x);

            }

            if (c_name.Equals("networking"))
            {
                Button2.Text = "Take Course (Networking)";
                Button3.Text = "More Details About Networking";
                c_id = "101";
            }
           else if (c_name.Equals("hardware"))
            {
                Button2.Text = "Take Course (Hardware)";
                Button3.Text = "More Details About Hardware";
                c_id = "102";
            }
          else  if (c_name.Equals("projectmanaget"))
            {
                Button2.Text = "Take Course (Project Managet)";
                Button3.Text = "More Details About Project Managet";
                c_id = "103";
            }
          else  if (c_name.Equals("AdvancePrograming"))
            {
                Button2.Text = "Take Course (Advance Programing)";
                Button3.Text = "More Details About Advance Programing";
                c_id = "105";
            }
         else   if (c_name.Equals("GameDevolopment"))
            {
                Button2.Text = "Take Course (Game Development)";
                Button3.Text = "More Details About Game Development";
                c_id = "104";
            }
         else   if (c_name.Equals("BigData"))
            {
                Button2.Text = "Take Course (Big Data)";
                Button3.Text = "More Details About Big Data";
                c_id = "106";
            }

            if (Session["user"] != null)
            {
                getSName();
                CID.Text = c_id;
            }



            String con = "Server=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();



            //   connection.Close();


        }

        public void getSName()
        {
            SName.Text = Session["user"].ToString();
        }

        public  String getSID()
        {

            
            return Session["s_id"].ToString();
        }

      


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (SName.Text.Equals("") || SName.Text.Contains(" ") || CID.Text.Equals("") || CID.Text.Contains(" "))
            {

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Please Login First');");
                Response.Write("</script>");
            }

            else
            {
                try
                {
                    int dycrpt = Convert.ToInt32(Session["s_id"].ToString()) / 26;
                    String dycrpt1 = Convert.ToString(dycrpt);


                    SqlConnection sc = new SqlConnection();
                    SqlCommand com = new SqlCommand();
                    sc.ConnectionString = ("Data Source=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC;Integrated Security=True");
                    sc.Open();
                    com.Connection = sc;
                    if(!SName.Text.Equals(null))
                    com.CommandText = ("INSERT INTO scRelation (sid,cid,CN ) VALUES ('" + dycrpt1 + "','" + c_id + "',"+"'"+c_name+"')");
                    com.ExecuteNonQuery();
                    sc.Close();

                    Response.Write("<script type='text/javascript'>");
                    Response.Write("alert('Registration Complete');");
                    Response.Write("</script>");

                 //   SID.Text = null;
                   
                //    CID.Text = null;
                   
                  

                }
                catch (Exception ex)
                {
                    Response.Write("<script type='text/javascript'>");
                    Response.Write("alert('Something Went Wrong');");
                    Response.Write("</script>");
                }


            }
        }

        public void Style()
        {
            Response.Write("<html>");
            Response.Write("<head>");
            Response.Write("<style>");
            Response.Write("#content{ ");
           
            Response.Write(" border-color:#FFF;");
            Response.Write("background-color:#2F3033;");
            Response.Write("padding:30px;");
            Response.Write("}");

            Response.Write("a{");

            Response.Write("color:white;");
        //    Response.Write("background-color:white;");
            Response.Write("}");

            Response.Write("</style>");


            Response.Write("<body>");
            Response.Write("<div id = content>");
            Response.Write("<a href= " + "CourseRegistration.aspx?name1=" + c_name + ">" + "back" + "</a> <br/>");
            Response.Write("</div>");
            
            Response.Write("</body>");
            Response.Write("</head>");
            Response.Write("</html>");
        }

        void discription(String Description)
        {


            Response.Write("<html>");
            Response.Write("<head>");
          
            Response.Write("<body>");
           
            Response.Write(Description);
            Response.Write("</body>");
            Response.Write("</head>");
            Response.Write("</html>");


        }

        public void CourseDetails(String x)
        {
            String con = "Server=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();

            SqlCommand cmd = new SqlCommand(
           "Select CourseDetails from Coursetablee where cid=" + "'" + x + "'", connection);

            SqlDataReader reading = cmd.ExecuteReader();

            while (reading.Read())
            {

                Description = (string)reading[0];
            }

           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Page.Visible = false;
            Style();
           
            if (c_name.Equals("networking"))
            {





                CourseDetails("101");

                discription("<br/>");
                discription("<br/>");
                discription(Description);

             //   discription("<h1>Networking</h1></br>");
             //   discription("<p>A <b>computer network </b>is a digital communications network which allows nodes to share recources.</br>");
             //  discription("In computer networks, networked computing devices exchange data with each other using a data link.</br>");
             //   discription("The connection between nodes are established using either cable media or wireless media.");
             //   discription("<p><p>In this course, we'll take a short look about it...</p></p>");

            }



            if (c_name.Equals("hardware"))
            {
               
            //    discription("<h1>Hardware is Important</h1></br>");
            //    discription("<p><b>Commputer Hardware </b>is the physical parts or components of a computer, such as the monitor, <br/> keyboard, computer data storage, graphic card and mother board.</br>");
            //    discription("By contrast, software is instructions that can be stored and ran by the hardware.</p>");
            //    discription("<p><p>In this course, we'll take a short look abouut it...</p></p>");

                CourseDetails("102");

                discription("<br/>");
                discription("<br/>");
                discription(Description);


            }
            if (c_name.Equals("projectmanaget"))
            {
           //     discription("<h1> Project Management is Important </h1>");

                CourseDetails("103");

                discription("<br/>");
                discription("<br/>");
                discription(Description);

            }

            if (c_name.Equals("GameDevolopment"))
            {
               

                CourseDetails("104");

                discription("<br/>");
                discription("<br/>");
                discription(Description);

            }

            if (c_name.Equals("GameDevolopment"))
            {


                CourseDetails("104");

                discription("<br/>");
                discription("<br/>");
                discription(Description);

            }

            if (c_name.Equals("BigData"))
            {


                CourseDetails("106");

                discription("<br/>");
                discription("<br/>");
                discription(Description);

            }

            if (c_name.Equals("AdvancePrograming"))
            {


                CourseDetails("105");

                discription("<br/>");
                discription("<br/>");
                discription(Description);

            }


        }
    }
}

