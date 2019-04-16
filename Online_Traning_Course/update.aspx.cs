using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Traning_Course
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           TextBox1.Text = Request.QueryString["cid"];
            TextBox2.Text = Request.QueryString["sid"];

            
            Button1_Click(null,null);

        ///   

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           

            SqlConnection sc = new SqlConnection();
            SqlCommand com = new SqlCommand();
            sc.ConnectionString = ("Data Source=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC;Integrated Security=True");
            sc.Open();
            com.Connection = sc;
            if (!(TextBox1.Text.Equals("") || TextBox2.Text.Equals("")))
            {
                com.CommandText = ("Delete from scRelation where cid=" + "'" + TextBox1.Text + "' And sid = " + "'" + TextBox2.Text + "'");
                com.ExecuteNonQuery();
            }
            else
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Please Fill the Field');");
                Response.Write("</script>");
            }

            Response.Redirect("~/profileStudent.aspx");

        }
    }
    }
