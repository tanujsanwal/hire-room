<%@ Page Title="" Language="C#" MasterPageFile="~/master_page1.master" AutoEventWireup="true" CodeFile="search_result.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="500px" 
        HorizontalAlign="Justify" Width="100%" ScrollBars="Horizontal">
        
<%--<asp:GridView ID="grdmcl" runat="server" AutoGenerateColumns="False" AllowPaging="True"
             
             
              CellPadding="5" CellSpacing="2"
        GridLines="None" DataSourceID="SqlDataSource1" DataKeyNames="id" Width="700px">
        

--%>

    


<asp:GridView ID="grdmcl" runat="server" AutoGenerateColumns="False" AllowPaging="True"
             
             
              CellPadding="5" CellSpacing="2"
        GridLines="None" DataKeyNames="id" Width="700px">
        

       


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
      
        
        <asp:TemplateField HeaderText="Number">
     <ItemTemplate>
     <%#Eval("number")%>
     </ItemTemplate>  
     </asp:TemplateField>
       
        <asp:TemplateField HeaderText="E-Mail">
     <ItemTemplate>
     <%#Eval("landmark")%>
     </ItemTemplate>  
     </asp:TemplateField>
     
        <asp:TemplateField HeaderText="Room Rent">
     <ItemTemplate>
     <%#Eval("room_rent")%>
     </ItemTemplate>  
     </asp:TemplateField>
  
  <asp:TemplateField HeaderText="City">
     <ItemTemplate>
     <%#Eval("city")%>
     </ItemTemplate>  
     </asp:TemplateField>
  
  
           </Columns>
  


 
      
      <%--
      
            <asp:BoundField DataField="fname" HeaderText="fname"  SortExpression="fname" />
       
           <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
            <asp:BoundField DataField="region" HeaderText="region" 
                SortExpression="region" />
            <asp:BoundField DataField="facility" HeaderText="facility" 
                SortExpression="facility" />
            <asp:BoundField DataField="apartment_type" HeaderText="apartment_type" 
                SortExpression="apartment_type" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="number" HeaderText="number" 
                SortExpression="number" />
            <asp:BoundField DataField="landmark" HeaderText="landmark" 
                SortExpression="landmark" />
            <asp:BoundField DataField="room_rent" HeaderText="room_rent" 
                SortExpression="room_rent" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />--%>
        




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
  
        
   <%--     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:tanuj_pro1ConnectionString2 %>" 
            SelectCommand="SELECT [fname], [lname], [region], [facility], [apartment_type], [address], [number], [landmark], [room_rent], [id] FROM [room_register]"></asp:SqlDataSource>
    
        --%>
</asp:Panel>
</asp:content>





