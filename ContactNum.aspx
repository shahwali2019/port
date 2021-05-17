<%@ Page Title="ContactNum" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactNum.aspx.cs" Inherits="CheckList.Contact" %>

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
    			<asp:Label ID="lbl" Font-Bold="true" runat="server" Text="" ForeColor="LightGreen" Font-Size="Medium"></asp:Label>

     <h4>Person in charge by order of availability:</h4>
        <table>
            <tr>
                <th>Name:</th>
                <th>Contact Number:</th>
            </tr>
            <tr>
                <td>Fareidon Faizi</td>
                <td>0781521994</td>
            </tr>
            <tr>
                <td>Shahwali Akbari</td>
                <td>0730110413</td>
            </tr>
            <tr>
                <td>Zohra Wali</td>
                <td>0707909491</td>
            </tr>
            <tr>
                <td>Hizbullah Watandost</td>
                <td>0789108575</td>
            </tr>
            <tr>
                <td>Hameed Hossaini</td>
                <td>0700285364</td>
            </tr>
            <tr>
                <td>Ahmadshah Anwari</td>
                <td>0700272818</td>
            </tr>
            <tr>
                <td>Ahmadshah Poyar</td>
                <td>0707178888</td>
            </tr>
        </table>
</asp:Content>
