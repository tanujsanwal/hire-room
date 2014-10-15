<%@ Page Title="" Language="C#" MasterPageFile="~/master_page1.master" AutoEventWireup="true" CodeFile="search_appart1.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
 
    ENTER YOUR REQUIREMENTS
<br />
<br />

<%--
Category:
<asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="155px" 
        style="margin-left: 46px">
        <asp:ListItem>House Rent:</asp:ListItem>
        <asp:ListItem>others</asp:ListItem>
    </asp:RadioButtonList>
    <br/>
    <br/>--%>

Region:<asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>select</asp:ListItem>
        <asp:ListItem>Subhash nagar</asp:ListItem>
        <asp:ListItem>Mohabewala</asp:ListItem>
        <asp:ListItem>Clementown</asp:ListItem>
        <asp:ListItem>Near Bhudha Temple</asp:ListItem>
        <asp:ListItem>Near Turner Road</asp:ListItem>
        <asp:ListItem>Near Isbt</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    
    Apartment Type:
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Single room</asp:ListItem>
        <asp:ListItem>Double room</asp:ListItem>
        <asp:ListItem>Flat</asp:ListItem>
    </asp:DropDownList>
    <br/><br/>

Facilities:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
<br /><br />


Address:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br/>
    <br />
     Landmark:
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
<br/>
    <br />
Room Rent(Per Month):
    <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem>select</asp:ListItem>
        <asp:ListItem>1000 to 2000</asp:ListItem>
        <asp:ListItem>2000 to 3000</asp:ListItem>
        <asp:ListItem>3000 to 4000</asp:ListItem>
        <asp:ListItem>above 4000</asp:ListItem>
        
    </asp:DropDownList>
    <br/>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" class="greenButton" Text="submit" onclick="Button1_Click" 
        />


    <br />


    <br />
   
</asp:Content>

