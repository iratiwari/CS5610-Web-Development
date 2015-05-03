using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class project_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected static readonly string IraCS = ConfigurationManager.ConnectionStrings["IraCS"].ConnectionString;
    protected void login_button_Click(object sender, EventArgs e)
    {
        //searches for a user in the db, if existing, goes to profile
        try
        {
            using (SqlConnection connection = new SqlConnection(IraCS))
            {
                SqlCommand cmd = new SqlCommand("select * from ira025.users where email_sign =@email and pass_sign=@password");
                cmd.Parameters.AddWithValue("@email", email_sign.Text);
                cmd.Parameters.AddWithValue("@password", pass_sign.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("Profile.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                }
            }
        }
    }
