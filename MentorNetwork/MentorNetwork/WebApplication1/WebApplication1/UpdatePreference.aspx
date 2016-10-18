<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UpdatePreference.aspx.cs" Inherits="WebApplication1.UpdatePreference" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            height: 66px;
        }
        .auto-style3 {}
        .auto-style4 {}
        .auto-style5 {}
        .auto-style6 {}
        .auto-style7 {}
        .auto-style8 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auto-style1">
        <p class="auto-style8">
            <asp:Image ID="Image1" runat="server" Height="23px" ImageUrl="~/Images/orderedList8.png" Width="24px" />
            <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
            <span class="auto-style8">&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSignOut" runat="server" Height="34px" Text="Sign Out" Width="76px" BackColor="#CCCCCC" BorderStyle="None" OnClick="btnSignOut_Click" />
            </span></p>
        <h2>What type of mentor do you prefer?</h2>
        <p>&nbsp;</p>
        <div class="auto-style2" >
            <p>
                <strong>Gender&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:DropDownList ID="txtGender" runat="server" CssClass="eight" Height="29px" Width="151px">
                    <asp:ListItem>Irrelevant</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Age&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="txtAge" runat="server" CssClass="auto-style3" Height="32px" Width="117px">
                    <asp:ListItem>Irrelevant</asp:ListItem>
     <asp:ListItem>0 - 3</asp:ListItem>
                    <asp:ListItem>4-6</asp:ListItem>
                    <asp:ListItem>more than 7</asp:ListItem>
                </asp:DropDownList>
&nbsp;</strong></p>
            <p>
                <strong>Location&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="txtLocation" runat="server" Height="30px" Width="149px">
                    <asp:ListItem>Johannesburg</asp:ListItem>
                    <asp:ListItem>Pretoria</asp:ListItem>
                    <asp:ListItem>Durban</asp:ListItem>
                    <asp:ListItem>Cape Town</asp:ListItem>
                    <asp:ListItem>Bloemfontein</asp:ListItem>
                </asp:DropDownList>
                </strong>
            </p>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <strong>Highest Qualification&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="txtQualification" runat="server" CssClass="auto-style4" Height="32px" Width="313px">
                 <asp:ListItem Selected="True">Irrelevant</asp:ListItem>
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
            </strong></p>
        <p>
            <strong>University/College&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="txtUni" runat="server" CssClass="auto-style5" Height="40px" Width="312px">
                 <asp:ListItem Selected="True">Irrelevant</asp:ListItem>
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
            </strong></p>
        <div title ="Advanced Preferences">
            <h5>Advanced Preferences</h5>
            <p>
                <strong>Industry&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtIndustry" runat="server" Width="244px" AutoPostBack="True" CausesValidation="True"></asp:TextBox>
                </strong>
            </p>
            <p>
                <strong>Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtCompany" runat="server" Width="244px"></asp:TextBox>
                </strong>
            </p>
            <p>
                <strong>Occupation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtOccupation" runat="server" Width="244px"></asp:TextBox>
                </strong>
            </p>
            <p>
                <strong>Work Experience&nbsp; (years)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="txtWorkExp" runat="server" CssClass="auto-style6" Height="64px" Width="201px">
                    <asp:ListItem>Irrelavant</asp:ListItem>
                    <asp:ListItem>0-3</asp:ListItem>
                    <asp:ListItem>4-7</asp:ListItem>
                    <asp:ListItem>7 and more</asp:ListItem>
                </asp:DropDownList>
                </strong>
            </p>
            <p>
                <strong>Mentoring Experience&nbsp;(years)&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="txtMentorExp" runat="server" CssClass="auto-style7" Height="31px" Width="202px">
                    <asp:ListItem>Irrelavant</asp:ListItem>
                    <asp:ListItem>0-3</asp:ListItem>
                    <asp:ListItem>4-7</asp:ListItem>
                    <asp:ListItem>7 and more</asp:ListItem>               
                     </asp:DropDownList>
                </strong>
            </p>
        </div>
    </div>
    <p style="text-align: center">
<asp:Button ID="btnSave" runat="server" Text="Save" Width="241px" BackColor="#66CCFF" BorderColor="#FFFFCC" OnClick="btnSave_Click" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
