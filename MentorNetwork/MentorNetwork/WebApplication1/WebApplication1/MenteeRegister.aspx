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
        .auto-style4 {}
        .auto-style5 {}
        .auto-style6 {}
        .auto-style8 {
            font-size: small;
        }
        .auto-style9 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auto-style1">
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="23px" ImageUrl="~/Images/orderedList8.png" Width="24px" />
            <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
        <span class="auto-style8">&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSignOut" runat="server" Height="34px" Text="Sign Out" Width="76px" BackColor="#33CCFF" BorderStyle="None" OnClick="btnSignOut_Click" />
            </span><strong><span class="auto-style9">Update Profile</span></strong></p>
        <p>
        <asp:Label ID="lblIncorrect" runat="server" ForeColor="Red" Text="Fields marked (*) are mandatory" Visible="False"></asp:Label>
        </p>
    <p style="font-weight: 700">
        First N<strong>ame&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFName" runat="server" Width="244px"></asp:TextBox>
        &nbsp; (*)</strong></p>
    <p>
        L<strong>ast Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtLName" runat="server" Width="244px"></asp:TextBox>
        &nbsp;(*)</strong></p>
    <div class="auto-style2" >
        <p>
            <strong>Gender&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <asp:DropDownList ID="txtGender" runat="server" CssClass="eight" Height="29px" Width="151px">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;<strong> (*)</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Date of Birth&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDoB" runat="server" Width="188px" TextMode="DateTime"></asp:TextBox>
            &nbsp;(*)</strong></p>
        <p style="font-weight: 700">
            Which city do you currently live in?<strong>&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="txtLocation" runat="server" Height="30px" Width="149px">
                <asp:ListItem>Johannesburg</asp:ListItem>
                <asp:ListItem>Pretoria</asp:ListItem>
                <asp:ListItem>Durban</asp:ListItem>
                <asp:ListItem>Cape Town</asp:ListItem>
                <asp:ListItem>Bloemfontein</asp:ListItem>
            </asp:DropDownList>
            &nbsp;(*)</strong></p>
        <p style="font-weight: 700">
            Cellphone number<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPhone" runat="server" Width="244px"></asp:TextBox>
            &nbsp;(*)</strong></p>
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
        &nbsp;</p>
        <p style="font-weight: 700">
            &nbsp;</p>
        <p style="font-weight: 700">
            <span class="auto-style3"><strong>Wha</strong></span><strong><span class="auto-style3">t field are you currently studying in&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="txtQualification" runat="server" CssClass="auto-style5" Height="34px" Width="208px">
                <asp:ListItem>BA Speech Therapy</asp:ListItem>
                <asp:ListItem>BA International Relations</asp:ListItem>
                <asp:ListItem>BA Political Studies</asp:ListItem>
                <asp:ListItem>BSc Computer Science</asp:ListItem>
                <asp:ListItem>BSc Computational and Applied Mathematics</asp:ListItem>
                <asp:ListItem>BSc Geography</asp:ListItem>
                <asp:ListItem>BSc Physics</asp:ListItem>
                <asp:ListItem>BEng Mining</asp:ListItem>
                <asp:ListItem>BEng Electrical Engineering</asp:ListItem>
                <asp:ListItem>BEng Aeronautical Engineering</asp:ListItem>
                <asp:ListItem>BCom Accounting Science</asp:ListItem>
                <asp:ListItem>BCom Information Systems</asp:ListItem>
            </asp:DropDownList>
&nbsp;(*)</strong></p>
    <p>
        <strong>University/College&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="txtUni" runat="server" CssClass="auto-style4" Height="22px" Width="249px">
                <asp:ListItem>University of Pretoria</asp:ListItem>
                    <asp:ListItem>Tshwane University of Technology</asp:ListItem>
                    <asp:ListItem>University of Johannesburg</asp:ListItem>
                    <asp:ListItem>University of the Witwatersrand (Wits)</asp:ListItem>
                    <asp:ListItem>University of Kwa Zulu Natal</asp:ListItem>
                    <asp:ListItem>University of Cape Town</asp:ListItem>
                    <asp:ListItem>University of Western Cape</asp:ListItem>
                    <asp:ListItem>Rhodes University</asp:ListItem>
                    <asp:ListItem>Stellenbosch University</asp:ListItem>
                    <asp:ListItem>Mangosuthu University of Technology</asp:ListItem>
                    <asp:ListItem>University of South Africa</asp:ListItem>
        </asp:DropDownList>
        &nbsp;(*)</strong></p>
    <p style="font-weight: 700">
        What year are you currently doing?<strong>&nbsp;&nbsp;
        &nbsp;<asp:DropDownList ID="txtYoS" runat="server" CssClass="auto-style6" Height="28px" Width="141px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>Honours</asp:ListItem>
            <asp:ListItem>Masters</asp:ListItem>
            <asp:ListItem>PhD</asp:ListItem>
        </asp:DropDownList>
        (*)</strong></p>
</div>
<p style="text-align: center">
    <asp:Button ID="btnRegister" runat="server" Text="Save" Width="241px" BackColor="#99CCFF" BorderColor="White" OnClick="btnRegister_Click" />
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
