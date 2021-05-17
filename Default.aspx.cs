using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Globalization;

namespace CheckList
{
    public partial class _Default : Page
    {

        static string StrCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(StrCon);
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Today;
            string fullUsername = User.Identity.Name;
            int index_domain = fullUsername.IndexOf("AIB\\");
            string username = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);
            lblUser.Text = username;
            
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
                //Response.Redirect("Default.aspx");
            }
            else
            {
                lbl.Text = "Please contact to Admin";
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM DailyCheckListDB WHERE ChechedDate = @ChechedDate", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        con.Open();
                        cmd.Parameters.AddWithValue("@ChechedDate", this.Calendar1.SelectedDate);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            this.lblerror.Text = "sorry, already inserted for today!";
                        }
                        else
                        {
                            using (SqlConnection con2 = new SqlConnection(constr))
                            {
                                string fullUsername = User.Identity.Name;
                                int index_domain = fullUsername.IndexOf("AIB\\");
                                string username = fullUsername.Substring(fullUsername.IndexOf("\\") + 1);
                                //Calendar1.SelectedDate = DateTime.Today;
                                string Swift1 = Chswift_logical_terminal.Checked ? "Y" : "N";
                                string Swift2 = Chmx_file_failed.Checked ? "Y" : "N";
                                string Swift3 = ChMT940_special_character_issue.Checked ? "Y" : "N";
                                string Swift4 = ChDouble_Take_Status_Double_Take_Clink.Checked ? "Y" : "N";
                                string Swift5 = ChTurbo_FTP.Checked ? "Y" : "N";
                                string Swift6 = ChCheck_Emission_Reception_Profile.Checked ? "Y" : "N";
                                string Swift7 = ChNot_hand_off_messages.Checked ? "Y" : "N";
                                string Swift8 = ChAIB_Swift_DAB_Transactions_Gateway.Checked ? "Y" : "N";
                                string Swift9 = ChTelex_Logs.Checked ? "Y" : "N";
                                string Swift10 = ChSending_MT940_statements.Checked ? "Y" : "N";
                                string Swift11 = ChRelease_S2B_files.Checked ? "Y" : "N";
                                string Swift12 = ChAIBSwiftUNPaymentsCombiner.Checked ? "Y" : "N";
                                string Swift13 = ChDormant_Account_Alert_Sender.Checked ? "Y" : "N";
                                string Swift14 = ChDaily_Monthly_statement.Checked ? "Y" : "N";
                                string Swift20 = ChCNS_status.Checked ? "Y" : "N";
                                string Swift15 = ChSMS_job_status.Checked ? "Y" : "N";
                                string Swift16 = ChDB_Updater.Checked ? "Y" : "N";
                                string Swift17 = ChFlexcubesm.Checked ? "Y" : "N";
                                string Swift18 = ChKerio.Checked ? "Y" : "N";
                                string Swift19 = ChStart_STPA.Checked ? "Y" : "N";
                                string Swift21 = ChGodadday.Checked ? "Y" : "N";
                                string Swift22 = ChcheckPDEflag.Checked ? "Y" : "N";
                                string Swift23 = ChRMAN.Checked ? "Y" : "N";
                                using (SqlCommand cmd2 = new SqlCommand("INSERT INTO DailyCheckListDB(swift_logical_terminal,mx_file_failed,MT940_special_character_issue,Double_Take_Status_Double_Take_Clink,Turbo_FTP,Check_Emission_Reception_Profile,Not_hand_off_messages,AIB_Swift_DAB_Transactions_Gateway,Telex_Logs,Sending_MT940_statements,Release_S2B_files,AIBSwiftUNPaymentsCombiner,Dormant_Account_Alert_Sender,Daily_Monthly_statement,CNS_status,SMS_job_status,DB_Updater,Flexcubesm,Check_Kerio,Start_STPA,Godadday,checkPDEflag,RMAN,Employee_Name,ChechedDate,InsertedTime) VALUES(@swift_logical_terminal,@mx_file_failed,@MT940_special_character_issue,@Double_Take_Status_Double_Take_Clink,@Turbo_FTP,@Check_Emission_Reception_Profile,@Not_hand_off_messages,@AIB_Swift_DAB_Transactions_Gateway,@Telex_Logs,@Sending_MT940_statements,@Release_S2B_files,@AIBSwiftUNPaymentsCombiner,@Dormant_Account_Alert_Sender,@Daily_Monthly_statement,@CNS_status,@SMS_job_status,@DB_Updater,@Flexcubesm,@Check_Kerio,@Start_STPA,@Godadday,@checkPDEflag,@RMAN, '" + username + "' ,'" + Calendar1.SelectedDate + "', getdate())"))
                                {
                                    cmd2.Connection = con2;
                                    cmd2.Parameters.AddWithValue("@Employee_Name", username);
                                    cmd2.Parameters.AddWithValue("@ChechedDate", Calendar1.SelectedDate);
                                    cmd2.Parameters.AddWithValue("@swift_logical_terminal", Swift1);
                                    cmd2.Parameters.AddWithValue("@mx_file_failed", Swift2);
                                    cmd2.Parameters.AddWithValue("@MT940_special_character_issue", Swift3);
                                    cmd2.Parameters.AddWithValue("@Double_Take_Status_Double_Take_Clink", Swift4);
                                    cmd2.Parameters.AddWithValue("@Turbo_FTP", Swift5);
                                    cmd2.Parameters.AddWithValue("@Check_Emission_Reception_Profile", Swift6);
                                    cmd2.Parameters.AddWithValue("@Not_hand_off_messages", Swift7);
                                    cmd2.Parameters.AddWithValue("@AIB_Swift_DAB_Transactions_Gateway", Swift8);
                                    cmd2.Parameters.AddWithValue("@Telex_Logs", Swift9);
                                    cmd2.Parameters.AddWithValue("@Sending_MT940_statements", Swift10);
                                    cmd2.Parameters.AddWithValue("@Release_S2B_files", Swift11);
                                    cmd2.Parameters.AddWithValue("@AIBSwiftUNPaymentsCombiner", Swift12);
                                    cmd2.Parameters.AddWithValue("@Dormant_Account_Alert_Sender", Swift13);
                                    cmd2.Parameters.AddWithValue("@Daily_Monthly_statement", Swift14);
                                    cmd2.Parameters.AddWithValue("@CNS_status", Swift20);
                                    cmd2.Parameters.AddWithValue("@SMS_job_status", Swift15);
                                    cmd2.Parameters.AddWithValue("@DB_Updater", Swift16);
                                    cmd2.Parameters.AddWithValue("@Flexcubesm", Swift17);
                                    cmd2.Parameters.AddWithValue("@Check_Kerio", Swift18);
                                    cmd2.Parameters.AddWithValue("@Start_STPA", Swift19);
                                    cmd2.Parameters.AddWithValue("@Godadday", Swift21);
                                    cmd2.Parameters.AddWithValue("@checkPDEflag", Swift22);
                                    cmd2.Parameters.AddWithValue("@RMAN", Swift23);
                                    con2.Open();
                                    cmd2.ExecuteNonQuery();
                                    lbl.Text = "inserted Successfully";
                                    //Chswift_logical_terminal.Text = "";
                                    //Chmx_file_failed.Text = "";
                                    //ChMT940_special_character_issue.Text = "";
                                    //ChDouble_Take_Status_Double_Take_Clink.Text = "";
                                    //ChTurbo_FTP.Text = "";
                                    //ChCheck_Emission_Reception_Profile.Text = "";
                                    //ChNot_hand_off_messages.Text = "";
                                    //ChAIB_Swift_DAB_Transactions_Gateway.Text = "";
                                    //ChTelex_Logs.Text = "";
                                    //ChSending_MT940_statements.Text = "";
                                    //ChRelease_S2B_files.Text = "";
                                    //ChAIBSwiftUNPaymentsCombiner.Text = "";
                                    //ChDormant_Account_Alert_Sender.Text = "";
                                    //ChDaily_Monthly_statement.Text = "";
                                    //ChCNS_status.Text = "";
                                    //ChSMS_job_status.Text = "";
                                    //ChDB_Updater.Text = "";
                                    //ChFlexcubesm.Text = "";
                                    //ChKerio.Text = "";
                                    //ChStart_STPA.Text = "";
                                    //ChGodadday.Text = "";
                                    //Chswift_logical_terminal.Focus();
                                    con2.Close();

                                }
                            }
                            //this.lblMessage.Text = "Data Inserted";
                        }

                    }
                }
            }
        }
    }
}