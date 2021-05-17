using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckList
{
    public partial class AafterRestart : System.Web.UI.Page
    {
        static string StrCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(StrCon);
        protected void Page_Load(object sender, EventArgs e)
        {
            string fullUsername = User.Identity.Name;
            int index_domain = fullUsername.IndexOf("AIB\\");
            string username = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);
            string qry = string.Empty;
            qry = "select usertype from checklistusers where username='" + username + "'";
            SqlConnection con = new SqlConnection(StrCon);
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);

            string userType = Convert.ToString(cmd.ExecuteScalar());

            if (string.IsNullOrEmpty(userType))
            {
                Response.Redirect("error.aspx?ReturnPath=" + Server.UrlEncode(Request.Url.AbsoluteUri));
            }
            if (userType == "application")
            {
                //Server.Transfer("restart.aspx");
            }

        }
    }
}