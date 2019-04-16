using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Traning_Course
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        string sid,lsid;



        public string EnryptString(string strEncrypted)
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
            string encrypted = Convert.ToBase64String(b);
            return encrypted;
        }




        protected void Page_Load(object sender, EventArgs e)
        {
            String con = "Server=.;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();

            SqlCommand comand = new SqlCommand(

           "Select max(sid) from Student", connection);

            SqlDataReader reading = comand.ExecuteReader();

            while (reading.Read())
            {

                 sid = (string)reading[0];
            }
            if(Session["user"]!=null && Session["s_id"] != null)
            {
                Response.Redirect("~/profileStudent.aspx");
            }
        }

        public void sentToSystem()
        {
            if (Name.Text.Equals("") || Name.Text.Contains(" ") || Address.Text.Equals("") || Address.Text.Contains(" ") || PhoneNum.Text.Equals("") || PhoneNum.Text.Contains(" ") || Email.Text.Equals("") || Email.Text.Contains(" ") || Password.Text.Equals("") || Password.Text.Contains(" "))
            {

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Please Fill All the Field');");
                Response.Write("</script>");
            }

            else
            {
                try
                {
                    SqlConnection sc = new SqlConnection();
                    SqlCommand com = new SqlCommand();
                    sc.ConnectionString = ("Data Source=.;Database=OTC;Integrated Security=True");
                    sc.Open();
                    com.Connection = sc;
                    double y = Convert.ToDouble(sid) + 1;
                    string x = Convert.ToString(y);
                    com.CommandText = ("INSERT INTO Student (Name, PhoneNum, Email, Address, Password, sid ) VALUES ('" + Name.Text + "','" + PhoneNum.Text + "','" + Email.Text + "'," + "'" + Address.Text + "'," + "'" + EnryptString(Convert.ToString(Password.Text)) + "'," + "'" + x + "')");
                    com.ExecuteNonQuery();
                    sc.Close();

                    Response.Write("<script type='text/javascript'>");
                    Response.Write("alert('Registration Complete');");
                    Response.Write("</script>");

                    Name.Text = null;
                    Email.Text = null;
                    Address.Text = null;
                    Password.Text = null;
                    PhoneNum.Text = null;


                }
                catch (Exception ex)
                {
                    //  Response.Write(ex);
                    Response.Write("<script type='text/javascript'>");
                    Response.Write("alert('Something Went Wrong');");
                    Response.Write("</script>");
                }


            }
        }

        public void mailTest()
        {
           
        }
    


        protected void Button2_Click(object sender, EventArgs e)
        {
           
            sentToSystem();
         
        }

        public string EnryptString()
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(Convert.ToString(lpass.Text));
            string encrypted = Convert.ToBase64String(b);
            return encrypted;
        }



        bool IsValidEmail()
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(Convert.ToString(Email.Text));
                return addr.Address == Convert.ToString(Email.Text);
            }
            catch
            {
                return false;
            }
        }




        public void login()
        {
            String con = "Server=.;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();

            SqlCommand cmd = new SqlCommand(

           "Select count(*) from Student where Name=" + "'" + lname.Text + "' And Password=" + "'" + EnryptString() + "'", connection);

            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                Session["user"] = lname.Text;

                SqlCommand cmd1 = new SqlCommand(
                "Select sid from Student where Name=" + "'" + lname.Text + "'", connection);

                SqlDataReader reading = cmd1.ExecuteReader();

                while (reading.Read())
                {

                    lsid = (string)reading[0];
                }

                int encrpytId = Convert.ToInt16(lsid) * 26;

                Session["s_id"] = Convert.ToString(encrpytId);
                

                Response.Redirect("~/profileStudent.aspx");

            }
            else
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Invalid Name/Password');");
                Response.Write("</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            login();
        }
    }
}