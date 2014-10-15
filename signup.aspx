<%@ Page Title="" Language="C#" MasterPageFile="~/master_page1.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="midarea">
    <div class="head"> Sign Up </div>
    <div class="body_textarea">
     free for everyone
    </div>
         
		 
		<table style="" cellpadding="0px" cellspacing="0px">
	
	<tr>
		<th style="font-weight:bold;font-size:24px;">Registeration:<br />
        </th>
        <br/>
	</tr>
	<tr><td></td></tr>
	<td style=" margin-top:0px;">&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp; First Name:&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="enter the first name." Display="None"></asp:RequiredFieldValidator>
        
        <asp:TextBox 
            ID="TextBox1" placeholder="first name"  runat="server"></asp:TextBox>
            </td></tr>
	<tr>
	<td><br/></td></tr>
	<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp; Last Name:&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="enter the last name" Display="None"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="TextBox2" placeholder="Last name"  runat="server"></asp:TextBox>
        </td></tr>
	</tr><td></br></td></tr>

	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="enter the password" Display="None"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox3" TextMode="Password" placeholder="password"  runat="server"></asp:TextBox>
        </td>
	</tr>
	<tr><td><br/></td></tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp; RePassword:&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" ControlToValidate="TextBox4" ControlToCompare="TextBox3"
            runat="server" ErrorMessage="enter correct password" Display="None"></asp:CompareValidator>
        <asp:TextBox ID="TextBox4" TextMode="Password" placeholder="confirm password"  runat="server"></asp:TextBox>
        </td>
	<tr><td><br/></td></tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp; ContactNo:&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:TextBox ID="TextBox5" placeholder="contact number"  runat="server"></asp:TextBox>
        </td></tr>
	<tr><td><br/></td></tr>
	<tr><td>&nbsp;&nbsp;&nbsp;&nbsp; EmailAddress:<asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6"
            ErrorMessage="enter correct email id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox6" placeholder="email"  runat="server"></asp:TextBox>
        </td></tr>
	<tr><td><br/></td></tr>
	<tr>
		<td>
        
        
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="false" ShowMessageBox="true" />
        
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
            <asp:Button ID="Button2"   class="greenButton" runat="server" Text="Submit" 
                onclick="Button2_Click" />
        

	
	
	</tr>
</table>
		
        
  </div>



</asp:Content>

