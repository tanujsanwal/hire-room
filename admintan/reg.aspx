<%@ Page Title="" Language="C#" MasterPageFile="~/admintan/MasterPage.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="admintan_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



   <asp:Panel ID="Panel1" runat="server" Height="500px" 
        HorizontalAlign="Justify" Width="100%" ScrollBars="Horizontal">
    <div class="body_textarea">



    


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


   <asp:TemplateField HeaderText="Delete">
   <ItemTemplate> 
   <asp:LinkButton ID="LinkButton1" CommandName="delete1" Text="Delete" OnClientClick="return confirm('Are you sure')" CommandArgument='<%# Eval("id") %>'  runat="server" /> 
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
  
        
</asp:Panel>



</center>





</asp:Content>

