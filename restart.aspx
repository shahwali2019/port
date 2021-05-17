<%@ Page  Title="Restart" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AafterRestart.aspx.cs" Inherits="CheckList.AafterRestart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
$(function () {
	$('#demo').on('hide.bs.collapse', function () {
		$('#button').html('<span class="fa fa-collapse-down"></span> EXPAND ALL');
	}).on('show.bs.collapse', function () {
		$('#button').html('<span class="fa fa-collapse-down"></span> COLLAPSE ALL');
	});
})
$(document).ready(function () {
	// Add minus icon for collapse element which is open by default
	$(".collapse.show").each(function () {
		$(this).prev(".card-header").find(".fa").addClass("fa-minus").removeClass("fa-plus");
	});
	// Toggle plus minus icon on show hide of collapse element
	$(".collapse").on('show.bs.collapse', function () {
		$(this).prev(".card-header").find(".fa").removeClass("fa-plus").addClass("fa-minus");
	}).on('hide.bs.collapse', function () {
		$(this).prev(".card-header").find(".fa").removeClass("fa-minus").addClass("fa-plus");
	});
});
    </script>
    <style>
                .bs-example {
                	margin: 20px;
                }
                table,
                th,
                td {
                	border: 1px solid black;
                	border-collapse: collapse;
                    font-size: 16px;
                }
                th,
                td {
                	padding: 2px;
                }

                p {
                    font-size: 16px;
                }
    </style>

<div>
	<asp:Label ID="lbl" Font-Bold="true" runat="server" Text="" ForeColor="LightGreen" Font-Size="Medium"></asp:Label>
</div>
<button id="button" type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo"> <span class="fa fa-collapse-down"></span>Expand All</button>
<div id="demo" class="collapse">
	<div class="bs-example">
		<div class="accordion" id="accordionExample">
			<div class="card">
				<div class="card-header" id="headingOne">
					<h2 class="mb-0">
                        <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"><i class="fa fa-plus"></i>FlexCube</button>
                    </h2>
				</div>
				<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
					<div class="card-body">
						<table>
							<tr>
								<th>Server</th>
								<th>IP</th>
							</tr>
							<tr>
								<td>Flexcube Application</td>
								<td>192.168.0.58</td>
							</tr>
						</table>
						<br>
						<p><strong>1.</strong> Access server 192.168.0.58 via puTTY and locate the below path:
							<br>cd /u01/SWIG-AIB
							<br>Check the running tasks/processes with following command:</p>
						<p>• ps -ef | grep java | grep com.iflex.sw.server.SWManagerInitializer | tr -s ' ' |cut -f3,4 -d ' '
							<br>• kill it with > kill -9
							<process ID>
								<br>• Then set the environment via command (. set_env.sh)
								<br>• Press Enter
								<br>• nohup ./run.sh > nohup_run.out &
								<br>• two lines generates in path (/u01/SWIG-AIB/nohup_run.out &)
								<br>• for Monitoring the logs type (tail -f nohup_run.out)</p>
						<p>For monitoring the ATM logs login from winSCP (username: asprod)
							<br>Command: /u01/SWIG-AIB/SwitchDbg/INTERFACE/Log</p>
						<p> <strong>2.</strong>	Mock the FT module(FCUBSFTService) if its working or not by taking transaction on<a href="https://digitalbank.aib.af/?module=home">Digital Banking</a>
							(Retail User)</p>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingTwo">
					<h2 class="mb-0">
                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"><i class="fa fa-plus"></i>OBDX</button>
                    </h2>
				</div>
				<div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
					<div class="card-body">
						<table>
							<tr>
								<th>Server</th>
								<th>IP</th>
							</tr>
							<tr>
								<td>Oracle Access Manager (OAM) –OAM DB</td>
								<td>192.168.0.103</td>
							</tr>
							<tr>
								<td>OBDX Application</td>
								<td>192.168.0.102</td>
							</tr>
							<tr>
								<td>OBDX Database</td>
								<td>192.168.0.101</td>
							</tr>
							<tr>
								<td>OBDX OHS (Web gate)</td>
								<td>192.0.0.13</td>
							</tr>
							<tr>
								<td>OBDX OHS (Web Tier – Authentication Server)</td>
								<td>192.0.0.12</td>
							</tr>
						</table>
						<br>
						<p>1. First of all check with DBA team both <strong>OAM</strong> (192.168.0.103) and <strong>OBDX</strong> (192.168.0.101) DBs should be UP and Running.
							<br>
							<br>2. Then Login to <strong> OBDX OHS (Web Tier – Authentication Server)</strong> 192.0.0.12 and <strong> OBDX OHS (Web gate)</strong> 192.0.0.13 via Putty
							<br>Check its status: ./opmnctl status</p>
						<p>3. Browse OBDX Application via URL <a href="https://digitalbank.aib.af/?module=home">Digital Banking</a>
							<br>
							<br>Make sure that you have properly logged in!
							<p>You may find OBDX Manual from here <a href="Manual/OBDX Manual.pdf" target="_blank"> >>>Click Here<<< </a> 
							</p>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingThree">
					<h2 class="mb-0">
                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"><i class="fa fa-plus"></i>SWIFT</button>
                    </h2>
				</div>
				<div id="collapseThree" class="collapse show" aria-labelledby="headingThree" data-parent="#accordionExample">
					<div class="card-body">
						<table>
							<tr>
								<th>Server</th>
								<th>IP</th>
							</tr>
							<tr>
								<td>SWIFT Alliance</td>
								<td>192.168.201.6</td>
							</tr>
						</table>
						<br>
						<p>You may access SWIFT server Via PMP with above details
							<br>
							<br>1. go to Alliance application> Start Alliance (If its already started please ignore this step)
							<br>2. Open IE Browser and login on SWIFT via URL <a href="https://192.168.201.6/swp/group/access/">https://192.168.201.6/swp/group/access/</a>
							<br>3. Check the <strong>Fin Logical Terminal</strong> > Configuration tab> Fin Logical Terminal (Remote_Gateway_1) it should be Enable, selected I/O and Automatic
							<br>4. check/Start <strong>AIB-Swift & DAB Transactions Gateway</strong> ( you may find it from SWIFT server toolbar)
							<br>5. check <strong>TurboFT</strong> application if its not running then go to start menu type turboFT >right click on it > Run it as Different user (swiftprod)
							<br>6. Check <strong>Double-Take Console</strong> > Manage servers > right click on each server > provide Credentials (Swiftprod) 7. Go to control Panel > Devices and Printers ( check if <strong>SwiftRoom</strong> is selected as default)</p>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingFour">
					<h2 class="mb-0">
                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour"><i class="fa fa-plus"></i>Clink</button>
                    </h2>
				</div>
				<div id="collapseFour" class="collapse show" aria-labelledby="headingFour" data-parent="#accordionExample">
					<div class="card-body">
						<table>
							<tr>
								<th>Server</th>
								<th>IP</th>
							</tr>
							<tr>
								<td>Clink Application</td>
								<td>192.168.0.113</td>
							</tr>
							<tr>
								<td>Clink Database</td>
								<td>192.168.0.112</td>
							</tr>
						</table>
						<br>
						<p>1. In order to restart the compliance link and ASM, first the weblogic needs to be restarted.	<strong>Navigate to:</strong> E:\Oracle\Middleware\Oracle_Home\user_projects\domains\ComplianceLink\bin
							<br>StartWeblogic.cmd
							<br>
							<br>2. Open the services manager by pressing (Windows + R) and writing “services.msc”. Restart below mentioned services:
							<br>
							<br>
<strong>&#8594;</strong>	AccuityFileProcessor
							<br>o AccuityFileProcessorIN1
							<br>o AccuityFileProcessorIN2
							<br>o AccuityFileProcessorOUT1
							<br>o AccuityFileProcessorOUT2
							<br>o AccuityFileProcessReconIN
							<br>o AccuityFileProcessReconOUT
							<br>
<strong>&#8594;</strong>	ASM Screening Services
							<br>o ASMScreening371
							<br>o ASMScreening372
							<br>o ASMScreening373
							<br>
<strong>&#8594;</strong>	Import and Export services
							<br>o ASMExport371
							<br>o ASMImport371
							<br>o ASMSubcaseReassignment371
							<br>
<strong>&#8594;</strong>	ElasticSeatch service
							<br>o Elasticsearch 6.2.1 (elasticsearch-service-x64)
							<br>
							<br>3. Check if any payments are stuck in Errorfiles folder.	<strong>Navigate to:</strong> E:\Accuity\DualFileProcessor\FP1_OUT\data\errorfiles
							<br>If any then cut from mentioned folder and paste it at Inbox folder itself <strong>Navigate to:</strong> E:\Accuity\DualFileProcessor\FP1_OUT\data\inbox
							<br>
							<br>4. In case OS restarted > Start (Carbonite Replication Console) run it as Administrator. username: Comacc
							<br>
						</p>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingFive">
					<h2 class="mb-0">
                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive"><i class="fa fa-plus"></i>CAMS</button>
                    </h2>
				</div>
				<div id="collapseFive" class="collapse show" aria-labelledby="headingFive" data-parent="#accordionExample">
					<div class="card-body">
						<table>
							<tr>
								<th>Server</th>
								<th>IP</th>
							</tr>
							<tr>
								<td>CAMS</td>
								<td>192.168.0.135</td>
							</tr>
						</table>
						<br>
                        <p>
						<br>All you need to do is Start <strong>SQL Services </strong> plus <strong>TelexService </strong>from Services.msc (although their services are automatic ) this step is to confirm the same.
						<br>For data validation access CAMS application from AIB portal and try to login.
						<br>in case of not having CAMS user then
						<br>enter your username and a random password if you get (Wrong username and/or password.) So its working fine.
                       </p>
                            </div>
				
                </div>
			</div>
			<div class="card">
				<div class="card-header" id="headingSex">
					<h2 class="mb-0">
                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSex"><i class="fa fa-plus"></i>Advise</button>
                    </h2>
				</div>
				<div id="collapseSex" class="collapse show" aria-labelledby="headingSex" data-parent="#accordionExample">
					<div class="card-body">
						<table>
							<tr>
								<th>Server</th>
								<th>IP</th>
							</tr>
							<tr>
								<td>Advise</td>
								<td>192.168.0.25</td>
							</tr>
						</table>
						<p>
							<br>
							<br>1. Open the services manager by pressing (Windows + R) and writing “services.msc”. check the following services status if not started then start it
							<br>• Transaction Notification Sender
							<br>• SQL Server (MSSQLSERVER)
							<br>• SQL Server Agent (MSSQLSERVER)
							<br>
							<br>2. Open Microsoft SQL Server Management Studio > SQL Server Agent > <strong>Jobs </strong>> Open history for each of jobs</p>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingS">
					<h2 class="mb-0">
                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseS"><i class="fa fa-plus"></i>SMS</button>
                    </h2>
				</div>
				<div id="collapseS" class="collapse show" aria-labelledby="headingS" data-parent="#accordionExample">
					<div class="card-body">
						<table>
							<tr>
								<th>Server</th>
								<th>IP</th>
							</tr>
							<tr>
								<td>SMS Banking</td>
								<td>192.168.0.132</td>
							</tr>
						</table>
						<br>
						<br>
							<p>1. Open the services manager by pressing (Windows + R) and writing “services.msc”. check the SQL server adn sql agent services status if not started then start it manually.
							<br>2. Start <strong>SMS Banking Application </strong>(AIB_SMPP.exe) Navigate to: D:\AIB_SMPP_SMS_Sender_APP
							<br>3. Checking if SMS Alerts are sending properly by below command
							<br>use sms
							<br>select * from t_Alerts where Alerted
							<>1</p>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingE">
					<h2 class="mb-0">
                        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseE"><i class="fa fa-plus"></i>DAB STPA</button>
                    </h2>
				</div>
				<div id="collapseE" class="collapse show" aria-labelledby="headingE" data-parent="#accordionExample">
					<div class="card-body">
						<table>
							<tr>
								<th>Server</th>
								<th>IP</th>
							</tr>
							<tr>
								<td>DAB STPA</td>
								<td>10.6.0.47</td>
							</tr>
						</table>
					    <p>1. Request appuser in PMP
						<br>2. Login to DAB STPA 10.6.0.47 using appuser
						<br>3. If the adapter is close or not running then start using the below command
						<br> <strong>  .\start_stpa_gw_ws_ow.cmd </strong> 
						<br>Hint: you can use the up arrow key
						<br>
						<br>4. In case the OS got restarted proceed with below steps:
						<br> <strong> In case you are facing an error with executing command .\start_stpa_gw_ws_ow.cmd then </strong> 
						<br>run its certificate > Navigate to: D Drive <strong> AFIBAFKABXXX.pfx </strong> please Enter the password <strong> 
                           
                             <br>
					   5. Open Windows powershell as Administrator And execute below command for DAB - STPA <br> .\start_stpa_gw_ws_ow.cmd
 <br>
					   6. Start Mi-RTGS  Navigate to: PS D:\Mi-RTGS> java -jar .\mxapp-2.2.3-SNAPSHOT.jar <br>
					   7. perform Mi-RTGS web interface to start HTTP SERVER <br>
					   PS D:\Mi-RTGS\mxapp> http-server.cmd -p 3200 -P <a href="Manual/DAB STPA Adapter.pdf" target="_blank">appuser.pdf</a> 
					   <br>
					   8. Login to application using following credentials: <br> <br>
					   
                        Link : 10.6.0.47:3200 <br>
                         </P>
                    </div>
                </div>
            </div>
       
        </div>
</div>

        </div>

         </strong></asp:Content>