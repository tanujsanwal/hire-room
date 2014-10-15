<%@ Page Title="" Language="C#" MasterPageFile="~/master_page1.master" AutoEventWireup="true" CodeFile="room_register.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="midarea">
    <div class="head">
 Place your advertise here 
 </div>
 </div>

 <table>
 <tr>
 <td>

First Name:
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="enter first name" Display="None" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
</td>
<td>
    <asp:TextBox ID="TextBox1" placeholder="First name" runat="server"></asp:TextBox>
    </td>
    </tr>
   

     <tr>
 <td>

Last Name: 
</td>
<td><asp:TextBox ID="TextBox2" placeholder="Last name"  runat="server"></asp:TextBox>
<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="enter last name" Display="None" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>--%>
   </td>
    </tr>
    
<%--Category:
<asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="155px">
        <asp:ListItem>House Rent:</asp:ListItem>
        <asp:ListItem>others</asp:ListItem>
    </asp:RadioButtonList>
    <br/>
<br/> &nbsp;<br/>--%>
   <tr>
 <td>

Region:
</td>
<td>
<asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>select</asp:ListItem>
        <asp:ListItem>Subhash nagar</asp:ListItem>
        <asp:ListItem>Mohabewala</asp:ListItem>
        <asp:ListItem>Clementown</asp:ListItem>
        <asp:ListItem>Near Bhudha Temple</asp:ListItem>
        <asp:ListItem>Near Turner Road</asp:ListItem>
        <asp:ListItem>Near Isbt</asp:ListItem>
        <asp:ListItem>others</asp:ListItem>





        <asp:ListItem>Andhra Pradesh</asp:ListItem>
        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
        <asp:ListItem>Assam</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Chhattisgarh</asp:ListItem>
        <asp:ListItem>Goa</asp:ListItem>
        <asp:ListItem>Gujarat</asp:ListItem>
        <asp:ListItem>Haryana</asp:ListItem>
        <asp:ListItem>Himachal Pradesh</asp:ListItem>
        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
         <asp:ListItem>Jharkhand</asp:ListItem>
        <asp:ListItem>Karnataka</asp:ListItem>
        <asp:ListItem>Kerala</asp:ListItem>
        <asp:ListItem>Manipur</asp:ListItem>
        <asp:ListItem>Meghalaya</asp:ListItem>
         <asp:ListItem>Mizoram</asp:ListItem>
        <asp:ListItem>Nagaland</asp:ListItem>
        <asp:ListItem>Orissa</asp:ListItem>
         <asp:ListItem>Poschim Bongo</asp:ListItem>
        <asp:ListItem>Punjab</asp:ListItem>
        <asp:ListItem>Rajasthan</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
         <asp:ListItem>Sikkim</asp:ListItem>
        <asp:ListItem>Tamil Nadu</asp:ListItem>
        <asp:ListItem>Tripura</asp:ListItem>
         <asp:ListItem>Uttarakhand</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        








    </asp:DropDownList>
   
   </td>
    </tr>

      <tr>
 <td>
    Apartment Type:
    </td>
<td>
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Single Room</asp:ListItem>
        <asp:ListItem>Double Room</asp:ListItem>
        <asp:ListItem>Flat</asp:ListItem>
    </asp:DropDownList>
    
      
      
      </td>
    </tr>

        <tr>
 <td>
Facilities:
 </td>
<td>

<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="enter facilites" Display="None" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="TextBox6" placeholder="Facilities"  runat="server"></asp:TextBox>





 </td>
    </tr>

        <tr>
 <td>


Address:
 </td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="enter address" Display="None" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox3" placeholder="Address"  runat="server"></asp:TextBox>
    
    </td>
    </tr>

        
         <tr>
 <td>


City:
 </td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="enter address" Display="None" ControlToValidate="city"></asp:RequiredFieldValidator>
    <asp:TextBox ID="city" placeholder="city"  runat="server"></asp:TextBox>
    
    </td>
    </tr>

        <tr>
 <td>

Contactno:
 </td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ErrorMessage="mobile number can not be field empty" Display="None" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    
    <asp:TextBox ID="TextBox4" placeholder="contact no"  runat="server"></asp:TextBox>

  </td>
    </tr>

        <tr>
 <td>
E-Mail:
 </td>
<td>
   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="enter land mark" Display="None">
    </asp:RequiredFieldValidator>--%>
    <asp:TextBox ID="TextBox5" placeholder="E Mail"  runat="server"></asp:TextBox>

</td>
    </tr>

        <tr>
 <td>
Room Rent(Per Month):
    </td>
    <td>
    <asp:DropDownList ID="DropDownList3" runat="server">
         <asp:ListItem>select</asp:ListItem>
        <asp:ListItem>1000 to 2000</asp:ListItem>
        <asp:ListItem>2000 to 3000</asp:ListItem>
        <asp:ListItem>3000 to 4000</asp:ListItem>
        <asp:ListItem>above 4000</asp:ListItem>
    </asp:DropDownList>
    
    </td>
    </tr>

        <tr>
 <td>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="false" ShowMessageBox="true"/>
   
    <asp:Button ID="Button1" runat="server" class="greenButton" Text="submit" onclick="Button1_Click" />
        </td>
        <td>
        </td>
        </tr>
   
    </table>
    <br />
</asp:Content>

