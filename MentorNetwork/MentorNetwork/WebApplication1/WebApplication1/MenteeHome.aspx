<%@ Page Title="" Language="C#" MasterPageFile="~/Mentee.Master" AutoEventWireup="true" CodeBehind="MenteeHome.aspx.cs" Inherits="WebApplication1.MenteeHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .newStyle1 {
            display: table-column;
        }
        .auto-style3 {}
        .auto-style4 {
            margin-right: 435px;
        }
        .auto-style6 {
            width: 642px;
        }
        .auto-style7 {
            width: 232px;
        }
        #Mentee_Home {
            margin-left: 767px;
            margin-top: 0px;
        }
        .auto-style8 {
            font-size: small;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

        <p style="text-align: right; width: 972px;">
            <asp:Image ID="Image1" runat="server" Height="23px" ImageUrl="~/Images/orderedList8.png" Width="24px" />
            <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
            <span class="auto-style8">&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSignOut" runat="server" Height="34px" Text="Sign Out" Width="76px" BackColor="#CCCCCC" BorderStyle="None" OnClick="btnSignOut_Click" />
            </span></p>
<p style="text-align: right; width: 972px;">
            &nbsp;</p>
        <h2 style="text-align: left; width: 972px;" class="auto-style3">Recommended Mentors&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Requests</h2>
    
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3" Height="16px" Width="745px">
          
           
            
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                          <div class="auto-style4">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Username">
                <ItemTemplate>
                    <tr>
                        <td>
                            <p style="text-align: left">
                                <asp:Label runat="server" Text='<%#Eval("FName")%>'></asp:Label>
                                &nbsp;&nbsp;
                                <asp:Label runat="server" Text='<%#Eval("LName")%>'></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="text-align: left">
                                <asp:Label runat="server" Text='<%#Eval("Company")%>'></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="text-align: center">
                                <asp:Panel ID="Panel2" runat="server" Height="49px" Width="309px" BackColor="#99CCFF" BorderColor="White" HorizontalAlign="Center" Font-Bold="True" ForeColor="#666666" Font-Overline="False" Font-Size="Large" BorderWidth="1px">
                                     <a href='MentorView.aspx?Username=<%# Eval("Username") %>' onclick="ListView1_SelectedIndexChanged1"">Mentorview</a>
                                
                              </asp:Panel>
                                
            
                            </p>
                        </td>
                    </tr>
                </ItemTemplate>
                <SelectedItemTemplate>
                    <tr>
                        <td>
                            <p style="text-align: left">
                                <asp:Label runat="server" Text='<%#Eval("FName")%>'></asp:Label>
                                &nbsp;&nbsp;
                                <asp:Label runat="server" Text='<%#Eval("LName")%>'></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p style="text-align: left">
                                <asp:Label runat="server" Text='<%#Eval("Company")%>'></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           
                            <a href='MentorView.aspx?Username=<%# Eval("Username") %>' onclick="ListView1_SelectedIndexChanged1" style="padding: inherit; margin: 4px; border: 1px solid #FFFFFF; background-color: #99CCFF">Mentorview</a> </td>
                  
                         </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            </div>


                        <td class="auto-style7">&nbsp;</td>
                     </table>
        </asp:Panel>
        

    <div id="Mentee_Home">

               
                     <asp:ListView ID="ListView2" runat="server" style="text-align: left">
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label runat="server" Text='<%#Eval("FName")%>'></asp:Label>
                            &nbsp;&nbsp;
                            <asp:Label runat="server" Text='<%#Eval("LName")%>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnStatus" runat="server" BackColor="#99CCFF" BorderColor="White" Height="46px" Text='<%#Eval("RStatus")%>' Width="209px" UseSubmitBehavior="False" Enabled="False" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>

               
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
