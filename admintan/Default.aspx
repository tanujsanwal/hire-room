<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admintan_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>hello tanuj</title>
    <link href="sty.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   
    <div class="midarea">
    <div class="head">

   Hello admin please login..!!!
	  <br/><br/>
	  </div>
      </div>
	   
         <center>
		 
		&nbsp;<table>
	
	<tr>
		<th style="font-weight:bold;"> LOGIN</th>
	</tr>
    <tr>
    </tr>
    <tr>
	<td>&nbsp;&nbsp;&nbsp; Email:</td>
	<td><asp:TextBox ID="TextBox1" placeholder="E MAIL"  runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server"  ControlToValidate="TextBox1"
            ErrorMessage="please enter correct email" Display="None" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      
            </td>
            </tr>
            <tr>
            <td></td>
            <td></td></tr>
            <tr>
	<td>&nbsp;&nbsp;&nbsp;Password:</td>
	<td>
        <asp:TextBox ID="TextBox2" TextMode="Password" placeholder="PASSWORD"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="please enter password" Display="none"></asp:RequiredFieldValidator>
       
            </td>
</tr>
	<tr>
	

		<td>
       
            
      
        <label id="lable1">
        <asp:Button  class="greenButton"  ID="Button1" runat="server" Text="Log In"  onclick="Button1_Click" /></label>
               </td>
               <td>
                
       <a id="A1" href="signup.aspx" runat="server"> <asp:button class="greenButton"  ID="btn" runat="server" Text="Sign Up"  /> </a>
               </td>
               <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server"
                ShowSummary="false" ShowMessageBox="true" Height="60px" Width="208px"/>--%>
&nbsp;</tr>
</table>
		</center>


    </form>
</body>
</html>
