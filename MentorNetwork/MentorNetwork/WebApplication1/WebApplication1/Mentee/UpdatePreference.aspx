<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UpdatePreference.aspx.cs" Inherits="WebApplication1.UpdatePreference" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            height: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auto-style1">
        <h1>Edit Preference</h1>
        <div class="auto-style2" >
            <p>
                <strong>Gender&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:DropDownList ID="txtGender" runat="server" CssClass="eight" Height="29px" Width="151px">
                    <asp:ListItem Selected="True">Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Age&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtAge" runat="server" Width="126px"></asp:TextBox>
                </strong>
            </p>
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
            <asp:TextBox ID="txtQualification" runat="server" Width="244px"></asp:TextBox>
            </strong></p>
        <p>
            <strong>University/College&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUni" runat="server" Width="244px"></asp:TextBox>
            </strong></p>
        <div title ="Advanced Preferences">
            <h5>Advanced Preferences</h5>
            <p>
                <strong>Industry&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtIndustry" runat="server" Width="244px"></asp:TextBox>
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
                <strong>Work Experience&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtWorkExp" runat="server" Width="244px"></asp:TextBox>
                </strong>
            </p>
            <p>
                <strong>Mentoring Experience&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtMentorExp" runat="server" Width="244px"></asp:TextBox>
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
