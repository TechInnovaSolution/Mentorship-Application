<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MentorHome.aspx.cs" Inherits="WebApplication1.MentorHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
            &nbsp;<asp:ListView ID="ListView2" runat="server" style="text-align: left" OnSelectedIndexChanged="ListView2_SelectedIndexChanged">
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
                    <a href="ViewMentee.aspx?id=<%# Eval("Username") %>">View Profile</a> 
            </tr>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
