<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CheckList._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
      
* {
  box-sizing: border-box;
}

.row {
  margin-left:-5px;
  margin-right:-5px;
}
  
.column {
  float: left;
  width: 50%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

</style>
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" language="javascript" type="text/javascript"></script>
    <script type = "text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=Chswift_logical_terminal.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function ValidateCheckBox1(sender, args) {
            if (document.getElementById("<%=Chmx_file_failed.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function ValidateCheckBox2(sender, args) {
            if (document.getElementById("<%=ChMT940_special_character_issue.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function ValidateCheckBox3(sender, args) {
            if (document.getElementById("<%=ChDouble_Take_Status_Double_Take_Clink.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
         function ValidateCheckBox4(sender, args) {
            if (document.getElementById("<%=ChTurbo_FTP.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
         function ValidateCheckBox5(sender, args) {
            if (document.getElementById("<%=ChCheck_Emission_Reception_Profile.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
         function ValidateCheckBox6(sender, args) {
            if (document.getElementById("<%=ChNot_hand_off_messages.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
         function ValidateCheckBox7(sender, args) {
            if (document.getElementById("<%=ChAIB_Swift_DAB_Transactions_Gateway.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
         function ValidateCheckBox8(sender, args) {
            if (document.getElementById("<%=ChTelex_Logs.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
         function ValidateCheckBox9(sender, args) {
            if (document.getElementById("<%=ChSending_MT940_statements.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
         function ValidateCheckBox10(sender, args) {
            if (document.getElementById("<%=ChDormant_Account_Alert_Sender.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
         function ValidateCheckBox11(sender, args) {
            if (document.getElementById("<%=ChDaily_Monthly_statement.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function ValidateCheckBox12(sender, args) {
            if (document.getElementById("<%=ChCNS_status.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function ValidateCheckBox13(sender, args) {
            if (document.getElementById("<%=ChSMS_job_status.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        } 
        function ValidateCheckBox14(sender, args) {
            if (document.getElementById("<%=ChDB_Updater.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }  
        function ValidateCheckBox15(sender, args) {
            if (document.getElementById("<%=ChFlexcubesm.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function ValidateCheckBox16(sender, args) {
            if (document.getElementById("<%=ChKerio.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function ValidateCheckBox17(sender, args) {
            if (document.getElementById("<%=ChStart_STPA.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function ValidateCheckBox18(sender, args) {
            if (document.getElementById("<%=ChcheckPDEflag.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function ValidateCheckBox19(sender, args) {
            if (document.getElementById("<%=ChRMAN.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        
    </script>

    <style>
        table, td, th {
    border: 1px solid black;
}

table {
    border-collapse: collapse;
    width: 100%;
}

div.table-responsive {
  overflow-x:auto;
}
th {
    text-align: left;
}
</style>

    <div class="">
	<div class="">
		<div>Welcome:
			<asp:Label ID="lblUser" Font-Bold="true" runat="server" Text="" Font-Size="Large"></asp:Label>
			<br />
			<asp:Label ID="lblerror" runat="server" Text="" ForeColor="#ff0000" Font-Size="Medium"></asp:Label>
			<br />
			<asp:Label ID="lbl" Font-Bold="true" runat="server" Text="" ForeColor="LightGreen" Font-Size="Medium"></asp:Label>
		</div>
		<div class="">
			<table class="table table-responsive-lg">
				<tr>
					<th>Server</th>
					<th>Task</th>
					<td>Related Manual</td>
					<th>Check</th>
				</tr>
				<tr>
					<td>SWIFT: 192.168.201.6</td>
					<td>SWIFT Logical Terminal:</td>
					<td><a href="Manual/Swift Daily Procedure.pdf" target="_blank">Swift Daily Procedure.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="Chswift_logical_terminal" runat="server" />
						<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>SWIFT: 192.168.201.6</td>
					<td>MX file failed</td>
					<td><a href="Manual/Swift Daily Procedure.pdf" target="_blank">Swift Daily Procedure.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="Chmx_file_failed" runat="server" />
						<asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox1"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>SWIFT: 192.168.201.6</td>
					<td>MT940 special character issue</td>
					<td><a href="Manual/Swift Daily Procedure.pdf" target="_blank">Swift Daily Procedure.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChMT940_special_character_issue" runat="server" />
						<asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox2"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>SWIFT: 192.168.201.6/192.168.0.13</td>
					<td>Double Take Status/ Double Take Clink</td>
					<td><a href="Manual/Swift Daily Procedure.pdf" target="_blank">Swift Daily Procedure.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChDouble_Take_Status_Double_Take_Clink" runat="server" />
						<asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox3"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>SWIFT: 192.168.201.6</td>
					<td>Turbo FTP</td>
					<td><a href="Manual/Swift Daily Procedure.pdf" target="_blank">Swift Daily Procedure.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChTurbo_FTP" runat="server" />
						<asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox4"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>SWIFT: 192.168.201.6</td>
					<td>Check Emission/ Reception Profile.</td>
					<td><a href="Manual/Checking Emission and Reception Profile.pdf" target="_blank">Checking Emission and Reception Profile.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChCheck_Emission_Reception_Profile" runat="server" />
						<asp:CustomValidator ID="CustomValidator6" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox5"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>SWIFT: 192.168.201.6</td>
					<td>Not hand off messages</td>
					<td><a href="Manual/Checking NOT hand off MT940 messages.pdf" target="_blank">Checking NOT hand off MT940 messages.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChNot_hand_off_messages" runat="server" />
						<asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox6"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>SWIFT: 192.168.201.6</td>
					<td>AIB-Swift and DAB Transactions Gateway</td>
					<td>&nbsp &nbsp &nbsp Stop and Start App</td>
					<td>
						<asp:CheckBox ID="ChAIB_Swift_DAB_Transactions_Gateway" runat="server" />
						<asp:CustomValidator ID="CustomValidator8" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox7"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>Payment Utilities: 192.168.0.135</td>
					<td>Telex Logs</td>
					<td>&nbsp &nbsp &nbsp Check it logs and service</td>
					<td>
						<asp:CheckBox ID="ChTelex_Logs" runat="server" />
						<asp:CustomValidator ID="CustomValidator9" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox8"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>Payment Utilities: 192.168.0.135</td>
					<td>Sending MT940 statements</td>
					<td><a href="Manual/Swift MT 940 Daily statements manual_v2.pdf" target="_blank">Swift MT 940 Daily statements manual_v2.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChSending_MT940_statements" runat="server" />
						<asp:CustomValidator ID="CustomValidator10" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox9"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>Payment Utilities: 192.168.0.135</td>
					<td>Release S2B files/check rejection after releasing S2B</td>
					<td><a href="Manual/Releasing S2B payments.pdf" target="_blank">Releasing S2B payments.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChRelease_S2B_files" runat="server" />
					</td>
				</tr>
				<tr>
					<td>Payment Utilities: 192.168.0.135</td>
					<td>AIBSwiftUNPaymentsCombine</td>
					<td>&nbsp &nbsp &nbsp AIBSwiftUNPaymentsResponseFilesCombinerPro_v2-5</td>
					<td>
						<asp:CheckBox ID="ChAIBSwiftUNPaymentsCombiner" runat="server" />
					</td>
				</tr>
				<tr>
					<td>ADVISES: 192.168.0.25</td>
					<td>Dormant Account Alert Sender</td>
					<td>Run Dormant Account</td>
					<td>
						<asp:CheckBox ID="ChDormant_Account_Alert_Sender" runat="server" />
						<asp:CustomValidator ID="CustomValidator11" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox10"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>ADVISES: 192.168.0.25</td>
					<td>Daily/Monthly statement</td>
					<td><a href="Manual/Sending statement from CAMS.pdf" target="_blank">Sending statement from CAMS.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChDaily_Monthly_statement" runat="server" />
						<asp:CustomValidator ID="CustomValidator12" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox11"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>ADVISES: 192.168.0.25</td>
					<td>CNS status</td>
					<td><a href="Manual/Checking CNS running logs.pdf" target="_blank">Checking CNS running logs.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChCNS_status" runat="server" />
						<asp:CustomValidator ID="CustomValidator13" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox12"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>SMS:</td>
					<td>SMS job status: 192.168.0.132</td>
					<td><a href="Manual/SMS Job Status.pdf" target="_blank">SMS Job Status.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChSMS_job_status" runat="server" />
						<asp:CustomValidator ID="CustomValidator14" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox13"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>Interface srv: 192.168.0.26</td>
					<td>DB Updater 192.168.0.26</td>
					<td><a href="Manual/DB Updater.pdf" target="_blank">DB Updater.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChDB_Updater" runat="server" />
						<asp:CustomValidator ID="CustomValidator15" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox14"></asp:CustomValidator>
					</td>
				</tr>

				<tr>
					<td>FLEXCUBE:</td>
					<td>SMS job status</td>
					<td><a href="Manual/flexcubesms.PNG" target="_blank">flexcubesms.PNG</a>
					</td>
					<td>
						<asp:CheckBox ID="ChFlexcubesm" runat="server" />
						<asp:CustomValidator ID="CustomValidator16" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox15"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>aibonline/bankaib.com: 192.0.0.10/192.0.0.4</td>
					<td>Check Kerio</td>
					<td>&nbsp &nbsp &nbsp aibonline/bankaib.com</td>
					<td>
						<asp:CheckBox ID="ChKerio" runat="server" />
						<asp:CustomValidator ID="CustomValidator17" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox16"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>DAB STPA: 10.6.0.47</td>
					<td>Start STPA</td>
					<td><a href="Manual/DAB STPA Adapter.pdf" target="_blank">appuser.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChStart_STPA" runat="server" />
						<asp:CustomValidator ID="CustomValidator18" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox17"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>check PDE flag</td>
					<td>check PDE flag/PL/SQL</td>
					<td><a href="Manual/check PDE flag.pdf" target="_blank">check PDE flag.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChcheckPDEflag" runat="server" />
						<asp:CustomValidator ID="CustomValidator19" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox18"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>RMAN</td>
					<td>RMAN full backup</td>
					<td><a href="Manual/RMAN Backup.pdf" target="_blank">RMAN full backup</a>
					</td>
					<td>
						<asp:CheckBox ID="ChRMAN" runat="server" />
						<asp:CustomValidator ID="CustomValidator20" runat="server" ErrorMessage="Required" ForeColor="Red" ClientValidationFunction="ValidateCheckBox19"></asp:CustomValidator>
					</td>
				</tr>
				<tr>
					<td>Website:</td>
					<td>Website Restart every saturday</td>
					<td><a href="Manual/AIB Website Server restart.pdf" target="_blank">AIB Website Server restart.pdf</a>
					</td>
					<td>
						<asp:CheckBox ID="ChGodadday" runat="server" />
					</td>
				</tr>
                				<asp:Calendar ID="Calendar1" runat="server" Visible="false" SelectedDate="<%# DateTime.Today.Date %>"></asp:Calendar>
<%--                <asp:TextBox ID="txtdatetime" runat="server" TextMode="DateTime" SelectedDate="<%# DateTime.Today %>"></asp:TextBox>--%>
			</table>
		</div>
		<div style="text-align: left">
			<asp:Button ID="btnsubmit" runat="server" class="btn btn-info" Text="Submit" OnClick="btnsubmit_Click" />
		</div>
	</div>

</div>
</asp:Content>
