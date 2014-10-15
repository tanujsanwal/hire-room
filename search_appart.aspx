<%@ Page Title="" Language="C#" MasterPageFile="~/master_page1.master" AutoEventWireup="true" CodeFile="search_appart.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




   <asp:Panel ID="Panel1" runat="server" Height="500px" 
        HorizontalAlign="Justify" Width="100%" ScrollBars="Horizontal">
    <div class="body_textarea">
    SELECT AREA OR APARTMENT TYPE
    <br />
    </div>   
    <br /> 
<table style="width: 90%; padding-left:20px; line-height:29px;">

 
 <tr>
<%-- <td style="font-size: medium">
 city 
 </td>
 <td>
 <asp:TextBox  ID="textbox1" runat="server"  Columns="4" Width="119px">only for dehradun </asp:TextBox>
 </td>--%>
 
 <td style="font-size: medium">
 area 
 </td>
 <td>
<asp:DropdownList  ID="DropdownList2" runat="server" Height="18px" Width="126px" 
         AutoPostBack="true" onselectedindexchanged="DropdownList2_SelectedIndexChanged">
          <asp:ListItem Value="">Select</asp:ListItem>
<asp:ListItem>Subhash nagar</asp:ListItem>
        <asp:ListItem>Mohabewala</asp:ListItem>
        <asp:ListItem>Clementown</asp:ListItem>
        <asp:ListItem>Near Bhudha Temple</asp:ListItem>
        <asp:ListItem>Near Turner Road</asp:ListItem>
        <asp:ListItem>Near Isbt</asp:ListItem>
        <asp:ListItem>others</asp:ListItem>
 </asp:DropdownList>
 </td>

 <td style="font-size: medium">
 Apartment Type:
 </td>
 <td>
 <asp:DropdownList  ID="DropdownList3" runat="server" Height="21px" Width="123px" 
         onselectedindexchanged="DropdownList3_SelectedIndexChanged" AutoPostBack="true">
           <asp:ListItem Value="0">Select</asp:ListItem>
             <asp:ListItem>Single room</asp:ListItem>
        <asp:ListItem>Double room</asp:ListItem>
        <asp:ListItem>Flat</asp:ListItem>
 </asp:DropdownList>
 </td>
 </tr>



    


<asp:GridView ID="grdmcl" runat="server" AutoGenerateColumns="False" AllowPaging="false"
             
             
              CellPadding="10" CellSpacing="4"
        GridLines="None" DataKeyNames="id" Width="400px">
        

       


        <Columns>
      
     <asp:TemplateField HeaderText="First name">
     <ItemTemplate>
     <%#Eval ("fname")%>
     </ItemTemplate>    
     </asp:TemplateField >

     <asp:TemplateField HeaderText="Last name">
     <ItemTemplate>
     <%#Eval ("lname") %>
     </ItemTemplate>
     </asp:TemplateField>

     <asp:TemplateField HeaderText="Region">
     <ItemTemplate>
     <%#Eval ("region") %>
     </ItemTemplate>
     
     
     </asp:TemplateField>

   
     <asp:TemplateField HeaderText="Facility">
     <ItemTemplate>
     <%#Eval("facility")%>
     </ItemTemplate>  
     </asp:TemplateField>
           
     <asp:TemplateField HeaderText="Apartment Type">
     <ItemTemplate>
     <%#Eval("apartment_type")%>
     </ItemTemplate>  
     </asp:TemplateField>
     
        <asp:TemplateField HeaderText="Address">
     <ItemTemplate>
     <%#Eval("address")%>
     </ItemTemplate>  
     </asp:TemplateField>

     <asp:TemplateField HeaderText="City">
     <ItemTemplate>
     <%#Eval("city")%>
     </ItemTemplate>  
     </asp:TemplateField>
     
        <asp:TemplateField HeaderText="Number">
     <ItemTemplate>
     <%#Eval("number")%>
     </ItemTemplate>  
     </asp:TemplateField>
       
        <asp:TemplateField HeaderText="Email">
     <ItemTemplate>
     <%#Eval("landmark")%>
     </ItemTemplate>  
     </asp:TemplateField>
     
        <asp:TemplateField HeaderText="Room Rent">
     <ItemTemplate>
     <%#Eval("room_rent")%>
     </ItemTemplate>  
     </asp:TemplateField>
           </Columns>
  

 
        




        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />


 </asp:GridView>       
  
        
 </table>
</asp:Panel>

</asp:Content>

