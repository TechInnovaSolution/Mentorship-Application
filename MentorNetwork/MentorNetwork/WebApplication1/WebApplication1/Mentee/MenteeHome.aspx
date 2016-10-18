<%@ Page Title="" Language="C#" MasterPageFile="~/Mentee.Master" AutoEventWireup="true" CodeBehind="MenteeHome.aspx.cs" Inherits="WebApplication1.MenteeHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .newStyle1 {
            display: table-column;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h2 style="text-align: left; " class="auto-style3">Recommended Mentors</h2>
        
        <p style="text-align: right; margin-left: 672px;" class="auto-style3" >
            &nbsp;<asp:ListView ID="ListView2" runat="server" style="text-align: left">
                <ItemTemplate>
                    <tr>
                        <td>
                          
                        <asp:Label Text='<%#Eval("FName")%>' runat="server"></asp:Label>
                                        &nbsp;&nbsp;
                        <asp:Label Text='<%#Eval("LName")%>' runat="server"></asp:Label>
                               
                            </td>
                    </tr>
                    <tr>
                        <td>                          
                        <asp:Button ID="btnStatus"  runat ="server" BackColor="#99CCFF" Text='<%#Eval("RStatus")%>' BorderColor="White" Height="46px" Width="209px" />
                    </tr>  
                </ItemTemplate>
            </asp:ListView>
            </p>

     <p>
            <asp:ListView ID="ListView1" runat="server"  DataKeyNames="Username">
                <ItemTemplate>
                    <tr>
                        <td>
                            <p style="text-align: left">
                        <asp:Label Text='<%#Eval("FName")%>' runat="server"></asp:Label>
                                        &nbsp;&nbsp;
                        <asp:Label Text='<%#Eval("LName")%>' runat="server"></asp:Label>
                                </p>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="text-align: left">
                        <asp:Label Text='<%#Eval("Company")%>' runat="server"></asp:Label>
                                </p>
                            </td>
                    </tr>
                    <tr>
                        <td>
                             <p style="text-align: left">
                        <asp:Button  ID="btnView"  runat ="server" BackColor="#99CCFF" Text="View profile" BorderColor="White" Height="46px" Width="309px" CausesValidation="true" UseSubmitBehavior="false" />
                            <a href="MentorView.aspx?id=<%# Eval("Username") %>" OnClick="ListView1_SelectedIndexChanged1">Mentorview</a>      
                                 </p>                     
                        </td>
                    </tr>
                    
                </ItemTemplate>
                <SelectedItemTemplate>
                    <tr>
                        <td>
                            <p style="text-align: left">
                        <asp:Label Text='<%#Eval("FName")%>' runat="server"></asp:Label>
                                        &nbsp;&nbsp;
                        <asp:Label Text='<%#Eval("LName")%>' runat="server"></asp:Label>
                                </p>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="text-align: left">
                        <asp:Label Text='<%#Eval("Company")%>' runat="server"></asp:Label>
                                </p>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            
                        <asp:Button ID="btnView"   runat ="server" OnClick="ListView1_SelectedIndexChanged1" BackColor="#99CCFF" Text="View profile" BorderColor="White" Height="46px" Width="309px" CausesValidation="true" UseSubmitBehavior="false" />
                            <a href="MentorView.aspx?Username=<%# Eval("Username") %>" OnClick="ListView1_SelectedIndexChanged1">Mentorview</a>
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
       </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
