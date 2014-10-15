<%@ Page Title="" Language="C#" MasterPageFile="~/master_page1.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
  <div class="midarea">
    <div class="head">

    JUST LOGIN 
    YOU ARE ONE STEP AWAY FROM YOUR NEW HOME..!!!
	  <br/><br/>
	  </div>
      </div>
	   
         
		 
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
                
       <a href="signup.aspx" runat="server"> <asp:button class="greenButton"  ID="btn" runat="server" Text="Sign Up"  /> </a>
               </td>
               <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server"
                ShowSummary="false" ShowMessageBox="true" Height="60px" Width="208px"/>--%>
&nbsp;</tr>
</table>
		
       
  <br />
  <br />
  <br /> <br />
  <br />
  <br /> <br />
  <br />
  <br /> <br />
  <br />
  <br />
<%--  <p>
    <a href="http://validator.w3.org/check?uri=referer"><img
      src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" height="31" width="88" /></a>
  </p>--%>

 <%-- <p>
<a href="http://jigsaw.w3.org/css-validator/check/referer">
    <img style="border:0;width:88px;height:31px"
        src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
        alt="Valid CSS!" />
</a>
</p>--%>
       


</asp:Content>

