using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Traning_Course
{
    public partial class profileStudent : System.Web.UI.Page
    {


        String dycrpt1;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
               

                Name.Text = Session["user"].ToString();
                Id.Text = Session["s_id"].ToString();



                int dycrpt = Convert.ToInt32(Id.Text) / 26;
                 dycrpt1 = Convert.ToString(dycrpt);

                img.ImageUrl = "~/Content/Image/"+dycrpt1 + ".jpg";



                String con = "Server=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC; Integrated Security=true";

                SqlConnection connection = new SqlConnection(con);

                connection.Open();

                SqlCommand comand = new SqlCommand(

               "Select CN as CourseTaken,cid as Course_Id from scRelation where sid=" + "'" + dycrpt1 + "'", connection);

                SqlDataReader reading = comand.ExecuteReader();

                DataTable dt = new DataTable();
               
                dt.Columns.Add("Course");
                dt.Columns.Add("cids");
               
                dt.Columns.Add("delete");

                while (reading.Read())
                {

                    string course = (string)reading[0];
                     string cids = (string)reading[1];

                    //     String update = ((string)reading[3]);

                    DataRow dt1 = dt.NewRow();


                    dt1["Course"] = course;
                    dt1["cids"] = cids;
                    
                    
                    dt1["delete"] = "<a href='update.aspx?sid=" + dycrpt1 + "&cid="+cids+ "' "+ "" + ">drop</a>";
                    dt.Rows.Add(dt1);




                }
                view.DataSource = dt;
                view.DataBind();

                connection.Close();



            }
            else
            {
                Response.Redirect("~/Error.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Session.Remove("s_id");
            Response.Redirect("~/StudentRegistration.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection();
            SqlCommand com = new SqlCommand();
            sc.ConnectionString = ("Data Source=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC;Integrated Security=True");
            sc.Open();
            com.Connection = sc;

            if (TextBox1.Text.Equals(""))
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Please Fill The Filed');");
                Response.Write("</script>");
            }
            else
            {
                com.CommandText = ("Update Student set Name = " + "'" + TextBox1.Text + "' where sid = "+"'"+ dycrpt1 + "'");
                com.ExecuteNonQuery();

                Session.Remove("s_id");
                Session.Remove("user");
              
                Response.Redirect("~/StudentRegistration.aspx");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String con = "Server=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();

            SqlCommand comand = new SqlCommand(

           "Select CN as CourseTaken,cid as Course_Id from scRelation where sid=" + "'" + dycrpt1 + "' And cid="+"'"+ TextBox2.Text  +"'", connection);

            SqlDataReader reading = comand.ExecuteReader();

            DataTable dt = new DataTable();

            dt.Columns.Add("Course");
            dt.Columns.Add("cids");

            dt.Columns.Add("delete");

            while (reading.Read())
            {

                string course = (string)reading[0];
                string cids = (string)reading[1];

                //     String update = ((string)reading[3]);

                DataRow dt1 = dt.NewRow();


                dt1["Course"] = course;
                dt1["cids"] = cids;


                dt1["delete"] = "<a href='update.aspx?sid=" + dycrpt1 + "&cid=" + cids + "' "+ "" + ">drop</a>";
                dt.Rows.Add(dt1);




            }
            view.DataSource = dt;
            view.DataBind();

            connection.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String con = "Server=DESKTOP-ON380RK\\MIJUSQL1332;Database=OTC; Integrated Security=true";

            SqlConnection connection = new SqlConnection(con);

            connection.Open();

            SqlCommand comand = new SqlCommand(

           "Select CN as CourseTaken,cid as Course_Id from scRelation where sid=" + "'" + dycrpt1 + "'", connection);

            SqlDataReader reading = comand.ExecuteReader();

            DataTable dt = new DataTable();

            dt.Columns.Add("Course");
            dt.Columns.Add("cids");

            dt.Columns.Add("delete");

            while (reading.Read())
            {

                string course = (string)reading[0];
                string cids = (string)reading[1];

                //     String update = ((string)reading[3]);

                DataRow dt1 = dt.NewRow();


                dt1["Course"] = course;
                dt1["cids"] = cids;


                dt1["delete"] = "<a href='update.aspx?sid=" + Session["s_id"].ToString() + "&cid=" + cids + "' " + "" + ">drop</a>";
                dt.Rows.Add(dt1);




            }
            view.DataSource = dt;
            view.DataBind();

            connection.Close();
        }

        protected void load_Click(object sender, EventArgs e)
        {
            String img = "";

            var fileName = Path.GetFileName(fload.FileName);

            img = dycrpt1;

            var path = Path.Combine(Server.MapPath("~/Content/Image"), img + ".jpg");

            fload.SaveAs(path);

        }
    }
}