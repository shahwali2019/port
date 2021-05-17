using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using ClosedXML.Excel;

namespace CheckList
{
    public partial class About : Page
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
                //Server.Transfer("Report.aspx");
            }

        }
        SqlConnection x;
        SqlCommand y1;
        DataTable dt;
        protected void btnView_Click(object sender, EventArgs e)
        {
            x = new SqlConnection(StrCon);
            x.Open();
            y1 = new SqlCommand();
            y1.Connection = x;
            y1.CommandText = "SP_DailyCheckListDB";

            y1.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter y = new SqlDataAdapter(y1);

            dt = new DataTable();
            y.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            x.Close();
        }

        protected void btngetReport_Click(object sender, EventArgs e)
        {
            //if (GridView1.Visible)
            //{
            //    Response.AddHeader("content-disposition", "attachment; filename=report.xls");
            //    Response.ContentType = "application/excel";
            //    StringWriter sWriter = new StringWriter();
            //    HtmlTextWriter hTextWriter = new HtmlTextWriter(sWriter);
            //    GridView1.RenderControl(hTextWriter);
            //    Response.Write(sWriter.ToString());
            //    Response.End();
            //}

            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM DailyCheckListDB"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            using (XLWorkbook wb = new XLWorkbook())
                            {
                                wb.Worksheets.Add(dt, "DailyCheckListDB");

                                Response.Clear();
                                Response.Buffer = true;
                                Response.Charset = "";
                                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                                Response.AddHeader("content-disposition", "attachment;filename=dailychecklistreport.xlsx");
                                using (MemoryStream MyMemoryStream = new MemoryStream())
                                {
                                    wb.SaveAs(MyMemoryStream);
                                    MyMemoryStream.WriteTo(Response.OutputStream);
                                    Response.Flush();
                                    Response.End();
                                }
                            }
                        }
                    }
                }
            }
        }
        public override void VerifyRenderingInServerForm(Control control) { }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.SearchGrid();
        }


        private void SearchGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT * FROM [DailyCheckListDB] WHERE Employee_Name = @Employee_Name OR @Employee_Name IS NULL", con))
                {
                    if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
                    {
                        cmd.Parameters.AddWithValue("@Employee_Name", txtSearch.Text.Trim());
                        //cmd.Parameters.AddWithValue("@ChechedDate", txtSearch.Text.Trim());
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@Employee_Name", DBNull.Value);
                        //cmd.Parameters.AddWithValue("@ChechedDate", DBNull.Value);
                    }
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        lblTotal.Text = "Total Rows: " + (GridView1.DataSource as DataTable).Rows.Count;
                    }
                }
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.SearchGrid();
        }
    }
}