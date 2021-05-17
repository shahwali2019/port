<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CheckList.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3 style="color: #0000FF">Open PDF files using ASP.NET</h3>  
   <table>
       <tr>
           <td>
        <asp:Button ID="bttnpdf" runat="server" Text="Click for open PDF" Font-Bold="True" OnClick="bttnpdf_Click" />  
              
           </td>
       </tr>
   </table>
    
    </form>
</body>
</html>
