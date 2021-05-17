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
namespace CheckList
{
    public partial class About : Page
    {
        static string StrCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(StrCon);
        protected void Page_Load(object sender, EventArgs e)
        {

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
            if (GridView1.Visible)
            {
                Response.AddHeader("content-disposition", "attachment; filename=GridViewToExcel.xls");
                Response.ContentType = "application/excel";
                StringWriter sWriter = new StringWriter();
                HtmlTextWriter hTextWriter = new HtmlTextWriter(sWriter);
                GridView1.RenderControl(hTextWriter);
                Response.Write(sWriter.ToString());
                Response.End();
            }
        }
        public override void VerifyRenderingInServerForm(Control control) { }
    }
}