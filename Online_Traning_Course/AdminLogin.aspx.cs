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
    public partial class AdminLogin : System.Web.UI.Page
    {
        String lsid;
        protected void Page_Load(object sender, EventArgs e)
        {
            var host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (var ip in host.AddressList)
            {
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {
                    Response.Write("IP: "+ip.ToString());
                    String Ip = ip.ToString();
                    ///   Response.Write(Ip);

                  //      if (!Ip.Equals("192.168.88.233"))
                  //      {
                  //           Response.Redirect("~/Error.aspx");
                  //      }
                }
            }
        }


        public void login()
        {
            String con = "Server=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();

            SqlCommand cmd = new SqlCommand(

           "Select count(*) from Admin where Name=" + "'" + TextBox1.Text + "' And Password=" + "'" + TextBox2.Text + "'", connection);

            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {


                Session["Auser"] = TextBox1.Text;

                SqlCommand cmd1 = new SqlCommand(
                "Select Id from Admin where Name=" + "'" + TextBox1.Text + "'", connection);

                SqlDataReader reading = cmd1.ExecuteReader();

                while (reading.Read())
                {

                    lsid = (string)reading[0];
                }

                Session["aid"] = lsid;




                Response.Redirect("~/AdminPage.aspx");

            }
            else
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Invalid Name/Password');");
                Response.Write("</script>");
            }
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            login();
        }
    }
}