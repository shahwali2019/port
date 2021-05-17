using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace CheckList
{
    public partial class register : System.Web.UI.Page
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
                //Server.Transfer("register.aspx");
            }
        }

        protected void Save(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM checklistusers WHERE username = @username", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        con.Open();
                        cmd.Parameters.AddWithValue("@username", this.txtusername.Text.Trim());
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        if (ds.Tables[0].Rows.Count > 0)
                        {

                            this.lblerrormessage.Text = "The Username is already existed! Please try again";
                        }
                        else
                        {
                            using (SqlConnection con2 = new SqlConnection(constr))
                            {
                                using (SqlCommand cmd2 = new SqlCommand("INSERT INTO checklistusers VALUES(@username,@usertype, @CreatedBy, @Date)", con2))
                                {
                                    string fullUsername = User.Identity.Name;
                                    int index_domain = fullUsername.IndexOf("AIB\\");
                                    string CreatedBy = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);

                                    string date = DateTime.Now.ToString();
                                    con2.Open();
                                    cmd2.Parameters.AddWithValue("@username", this.txtusername.Text.Trim());
                                    cmd2.Parameters.AddWithValue("@usertype", this.DropDownList1.SelectedValue.Trim());
                                    cmd2.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                                    cmd2.Parameters.AddWithValue("@Date", date);
                                    cmd2.ExecuteNonQuery();
                                    con2.Close();
                                }
                            }
                            lblMessage.Visible = true;
                            this.lblMessage.Text = "New User Inserted Sucessfully";
                        }

                    }
                }
            }
        }
    }
}