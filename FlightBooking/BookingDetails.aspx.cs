using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlightBooking
{
    public partial class BookingDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["FlightBookingConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select FlightName,DepartureDate,Departuretime from FlightDetail where DepartureDate = '"+TextBox1.Text+ "' and Departuretime = '"+TextBox2.Text+ "' order by FlightName desc", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

        protected void Submit_Click1(object sender, EventArgs e)
        {
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["FlightBookingConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("INSERT INTO FlightDetail (FlightName)Values('" + TextBox3.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Submit_Click2(object sender, EventArgs e)
        {
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["FlightBookingConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("DELETE FROM FlightDetail WHERE FlightName='" + TextBox4.Text+"'");
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}