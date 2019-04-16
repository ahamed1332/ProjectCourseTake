using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Traning_Course
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Auser"] != null && Session["aid"] != null)
            {
              ///  Response.Write(Session["aid"]);
                Label1.Text = Session["Auser"].ToString();

            }
            else
            {
                Response.Redirect("~/Error.aspx");
            }

            String con = "Server=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();

            SqlCommand comand = new SqlCommand(

           "Select Student.Name,Student.Address,Student.Email,Student.sid as Student_Id,CN as Course_Name from scRelation inner join Student on scRelation.sid=Student.sid", connection);

            SqlDataReader reading = comand.ExecuteReader();

            view1.DataSource = reading;

            view1.DataBind();


           


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("aid");
            Session.Remove("Auser");
            Response.Redirect("~/HomePage.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand com = new SqlCommand();
            sc.ConnectionString = ("Data Source=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC;Integrated Security=True");
            sc.Open();
            com.Connection = sc;

            if (TextBox5.Text.Equals("") || TextBox6.Text.Equals(""))
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Please Fill The Filed');");
                Response.Write("</script>");
            }
            else
            {
                com.CommandText = ("Update Admin set Name = " + "'" + TextBox5.Text + "', Password=" + "'" + TextBox6.Text + "' Where Id=" + "'" + "100321" + "'");
                com.ExecuteNonQuery();
                TextBox5.Text = null;
                TextBox6.Text = null;
                Response.Redirect("~/AdminLogin.aspx");
            }
        }

        public void Refresh()
        {
            srName.Text = null;
            TextBox7.Text = null;
            TextBox8.Text = null;
            Details.Text = null;
        }

        public void updateDetails(String Detail)
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand com = new SqlCommand();
            sc.ConnectionString = ("Data Source=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC;Integrated Security=True");
            sc.Open();
            com.Connection = sc;

            com.CommandText = ("Update Coursetablee set CourseDetails = " + "'" + Details.Text + "' Where cid=" + "'"+ Detail + "'");
            com.ExecuteNonQuery();
            Refresh();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            updateDetails("101");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            updateDetails("102");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            updateDetails("103");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            updateDetails("106");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            updateDetails("105");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            updateDetails("104");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            String con = "Server=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();

            SqlCommand comand = new SqlCommand(

           "Select Student.Name,Student.Address,Student.Email,Student.sid as Student_Id,CN as Course_Name from scRelation inner join Student on scRelation.sid=Student.sid where Student.Name = "+"'"+srName.Text+"'", connection);

            SqlDataReader reading = comand.ExecuteReader();

            view1.DataSource = reading;

            view1.DataBind();
            Refresh();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            String con = "Server=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();

            SqlCommand comand = new SqlCommand(

           "Select Student.Name,Student.Address,Student.Email,Student.sid as Student_Id,CN as Course_Name from scRelation inner join Student on scRelation.sid=Student.sid", connection);

            SqlDataReader reading = comand.ExecuteReader();

            view1.DataSource = reading;

            view1.DataBind();
            Refresh();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand com = new SqlCommand();
            sc.ConnectionString = ("Data Source=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC;Integrated Security=True");
            sc.Open();
            com.Connection = sc;
            if (!(TextBox7.Text.Equals("") || TextBox8.Text.Equals("")))
            {
                com.CommandText = ("Delete from scRelation where sid=" + "'" + TextBox7.Text + "' And CN = " + "'" + TextBox8.Text + "'");
                com.ExecuteNonQuery();
            }
            else
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Please Fill the Field');");
                Response.Write("</script>");
            }
            Refresh();
        }

      
    }
}