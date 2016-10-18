<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    </asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2 style="text-align: center">
        Sign in</h2>
    <p style="text-align: center">
        <asp:Label ID="lblIncorrect" runat="server" ForeColor="Red" Text="Incorrect username and/or password" Visible="False"></asp:Label>
    </p>
    <p style="text-align: center; font-weight: 700; height: 41px;">
        User Type
        <asp:DropDownList ID="txtUserType" runat="server" Height="25px" Width="232px">
            <asp:ListItem Selected="True">Mentee</asp:ListItem>
            <asp:ListItem>Mentor</asp:ListItem>
            <asp:ListItem> </asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="font-weight: 700; text-align: center">
        Username&nbsp;
        <asp:TextBox ID="txtUserName" runat="server" Height="22px" Width="231px"></asp:TextBox>
    </p>
<p style="font-weight: 700; text-align: center">
        Password&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" Height="22px" Width="231px"></asp:TextBox>
    </p>
<p style="font-weight: 700; text-align: center">
        Forgot your password?</p>
<p style="font-weight: 700; text-align: center">
        <asp:CheckBox ID="chkRemember" runat="server" Checked="True"  style="text-align: center" Text="Remember me?" TextAlign="Left" CssClass="checkbox" />
    </p>
    <p style="text-align: center">
        <asp:Button ID="btnSignIn" runat="server" BackColor="#99CCFF" Text="Sign in" BorderColor="White" Height="46px" Width="309px" OnClick="btnSignIn_Click" />
    </p>
<p style="text-align: center">
        &nbsp;</p>
<p style="text-align: center">
        Don&#39;t have an account?
        <asp:Button ID="btnSignUp" runat="server" BackColor="#99CCFF" BorderColor="White" Text="Sign up" Height="40px" Width="175px" OnClick="btnSignUp_Click1" />
    </p>
    </asp:Content>
