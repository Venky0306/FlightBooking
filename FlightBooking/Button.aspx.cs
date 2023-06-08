using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlightBooking
{
    public partial class Button : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["FlightBookingConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("INSERT INTO FlightDetail (FlightName,Departuretime,DepartureDate,ArrivalTime,ArrivalDate)Values('" + TextBox1.Text + "','" + Calendar1.SelectedDate + "','" + Calendar2.SelectedDate + "','" + Calendar3.SelectedDate + "','" + Calendar4.SelectedDate + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}