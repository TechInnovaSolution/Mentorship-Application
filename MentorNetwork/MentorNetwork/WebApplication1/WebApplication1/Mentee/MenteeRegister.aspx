<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MenteeRegister.aspx.cs" Inherits="WebApplication1.MenteeRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            height: 66px;
        }
        .auto-style3 {
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auto-style1">
    <h1>Register</h1>
    <p style="font-weight: 700">
        First N<strong>ame&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFName" runat="server" Width="244px"></asp:TextBox>
        </strong>
    </p>
    <p>
        L<strong>ast Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLName" runat="server" Width="244px"></asp:TextBox>
        </strong>
    </p>
    <div class="auto-style2" >
        <p>
            <strong>Gender&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <asp:DropDownList ID="txtGender" runat="server" CssClass="eight" Height="29px" Width="151px">
                <asp:ListItem Selected="True">Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Date of Birth&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDoB" runat="server" Width="188px" TextMode="DateTime"></asp:TextBox>
            </strong>
        </p>
        <p style="font-weight: 700">
            Which city do you currently live in?<strong>&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="txtLocation" runat="server" Height="30px" Width="149px">
                <asp:ListItem>Johannesburg</asp:ListItem>
                <asp:ListItem>Pretoria</asp:ListItem>
                <asp:ListItem>Durban</asp:ListItem>
                <asp:ListItem>Cape Town</asp:ListItem>
                <asp:ListItem>Bloemfontein</asp:ListItem>
            </asp:DropDownList>
            </strong>
        </p>
        <p style="font-weight: 700">
            Cellphone number<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPhone" runat="server" Width="244px"></asp:TextBox>
            </strong>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
    <p>
            &nbsp;</p>
    <p>
        &nbsp;</p>
    <p style="font-weight: 700">
        <span class="auto-style3"><strong>Wha</strong></span><strong><span class="auto-style3">t qualification are you currently studying towards&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtQualification" runat="server" Width="244px"></asp:TextBox>
        </strong>
    </p>
    <p>
        <strong>University/College&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUni" runat="server" Width="244px"></asp:TextBox>
        </strong>
    </p>
    <p style="font-weight: 700">
        What year are you currently doing?<strong>&nbsp;&nbsp;
        <asp:TextBox ID="txtYoS" runat="server" Width="244px" TextMode="Number"></asp:TextBox>
        </strong>
    </p>
</div>
<p style="text-align: center">
    <asp:Button ID="btnRegister" runat="server" Text="Register" Width="241px" BackColor="#99CCFF" BorderColor="White" OnClick="btnRegister_Click" />
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
