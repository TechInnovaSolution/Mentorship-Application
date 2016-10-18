<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            font-weight: 700;
        }
        .auto-style3 {
            font-weight: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="auto-style1">Sign up</h2>
    <p style="font-weight: 700; height: 41px;" class="auto-style1">
        User Type
        <asp:DropDownList ID="txtUserType" runat="server" Height="25px" Width="232px">
            <asp:ListItem Selected="True">Mentee</asp:ListItem>
            <asp:ListItem>Mentor</asp:ListItem>
            <asp:ListItem> </asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="font-weight: 700; " class="auto-style1">
        Username&nbsp;
        <asp:TextBox ID="txtUserName" runat="server" Height="22px" Width="231px"></asp:TextBox>
        <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblIncUsername" runat="server" ForeColor="Red" Text="Username already exists"></asp:Label>
        </span>
    </p>
    <p class="auto-style1">
        Email&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" Height="22px" Width="231px" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style3"><asp:Label ID="lblInvalidEmail" runat="server" ForeColor="Red" Text="Invalid Email"></asp:Label>
        </span>
    </p>
    <p style="font-weight: 700; " class="auto-style1">
        Password&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" Height="22px" Width="231px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <span class="auto-style3">
        <asp:Label ID="lblInvalidPass" runat="server" ForeColor="Red" Text="Password needs to be at least 8 characters"></asp:Label>
        </span>
    </p>
    <p style="font-weight: 700; " class="auto-style1">
        Confirm
        Password&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword0" runat="server" Height="22px" Width="231px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">
        <asp:Label ID="lblInvalidPass0" runat="server" ForeColor="Red" Text="Confirm password does not match"></asp:Label>
        </span>
    </p>
    <p style="text-align: center">
        <asp:Button ID="btnSignUp" runat="server" BackColor="#99CCFF" Text="Sign up" BorderColor="White" Height="46px" Width="309px" OnClick="btnSignIn_Click" />
    </p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        Already have an account?
        <asp:Button ID="btnSignIn" runat="server" BackColor="#99CCFF" BorderColor="White" Text="Sign in" Height="40px" Width="175px" />
    </p>
</asp:Content>
