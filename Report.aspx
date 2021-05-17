<%@ Page Title="Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="CheckList.About" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        table
{
    max-width:none;
    background-color:transparent;
    border-collapse:collapse;
    border-spacing:0;
}

.table
{
    width:100%;
    height:auto;
    margin-bottom:20px;

}

div {

  padding: 2px;
  font-size: small;
}

.table th,.table td
{
    width:auto;
    height:auto;
    padding:2px;
    line-height:20px;
    text-align:left;
    vertical-align:top;
    border-top:1px solid #dddddd;
    padding: .6rem;
}

.table th 
{
    width:auto;
    height:auto;
    font-weight:bold;
}

.table thead th
{
    vertical-align:bottom;
}

  table tr {
    margin-bottom: 20px;
  }
    </style>
    <br />
    <br />
                    <asp:Label ID="lblerrormessage" runat="server" EnableViewState="False" ForeColor="#ff0000"></asp:Label>

    <h2>Generate Report.</h2>
    <div>  
        <asp:Button ID="btnView" runat="server" class="btn btn-info" Text="View" OnClick="btnView_Click" />
        <asp:Button ID="btngetReport" runat="server" class="btn btn-info" Text="Report" OnClick="btngetReport_Click" /> 
        <asp:TextBox ID="txtSearch" placeholder="Search by Name" TextMode="Date" runat="server" Width="200px"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server"  class="btn btn-info" Text="Search" OnClick="btnSearch_Click" />

        <br />  
                          <asp:Label ID="lblTotal" runat="server"  style="text-align:left; padding-bottom: 40px"/>

        <br />  
        	<table class="table table-responsive">
		<tr>
			<td>
        <asp:GridView ID="GridView1" runat="server" OnPageIndexChanging="GridView1_PageIndexChanging" Height="5px"  AllowPaging="true" EmptyDataText="No Record Found" BackColor="White" BorderColor="#999999" BorderStyle="None" CellPadding="4">  
            <AlternatingRowStyle BackColor="White" Font-Size="XX-Small" HorizontalAlign="Left" VerticalAlign="Middle" />  
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />  
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />  
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />  
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />  
            <SortedAscendingCellStyle BackColor="#F1F1F1" />  
            <SortedAscendingHeaderStyle BackColor="#0000A9" />  
            <SortedDescendingCellStyle BackColor="#CAC9C9" />  
            <SortedDescendingHeaderStyle BackColor="#000065" />  
            <PagerStyle BackColor="#2461BF" ForeColor="white" Font-Size="XX-Small" />
            <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="First" PreviousPageText="Previous" NextPageText="Next" LastPageText="Last" />
            <RowStyle BackColor="white" Font-Size="XX-Small" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="XX-Small" HorizontalAlign="Left" VerticalAlign="Middle" />
        </asp:GridView>  
                </td>
            </tr>
                </table>

        
    </div> 
</asp:Content>
