<%@ Page Title="" Language="C#" MasterPageFile="~/master_page1.master" AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="midarea">
    <div class="head">

for searching an apartment just login first and then u can see the details
</div>
</div>

Name:&nbsp &nbsp
<asp:TextBox ID="TextBox1" placeholder="name"  runat="server"></asp:TextBox>
<br />

Email:&nbsp&nbsp&nbsp&nbsp
<asp:TextBox ID="TextBox2" placeholder="email"  runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="please enter email id" Display="none"></asp:RequiredFieldValidator>
<br />

Number:
    <asp:TextBox ID="TextBox3" placeholder="phone number"  runat="server"></asp:TextBox>
<br />

    Comment:
    <br />
    &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <textarea runat="server" placeholder="comment"  id="ta" rows="6" cols="40"></textarea>

    <br />
    <asp:Button  ID="Button1" runat="server" Text="Send" class="greenButton" onclick="Button1_Click" />
 <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                ShowSummary="false" ShowMessageBox="true" Height="60px" Width="208px"/>
 <br /><br /><br />

</asp:Content>

