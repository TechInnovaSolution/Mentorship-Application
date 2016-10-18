<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MentorRegister.aspx.cs" Inherits="WebApplication1.MentorRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


        .auto-style1 {
            text-align: left;
        }
        .auto-style3 {
            font-weight: 700;
        }
        .auto-style4 {}
        .auto-style5 {}
        .auto-style6 {}
        .auto-style7 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auto-style1">
        <h1>Register</h1>
        <p style="font-weight: 700">
        First N<strong>ame&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFName" runat="server" Width="244px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
        </p>
        <p style="font-weight: 700">
        L<strong>ast Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLName" runat="server" Width="244px"></asp:TextBox>
            </strong>
        </p>
        <p style="font-weight: 700">
            <strong>Gender&nbsp;&nbsp;&nbsp;&nbsp; 
            </strong>
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
        <p style="font-weight: 700">
            Cellphone number<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtPhone" runat="server" Width="244px"></asp:TextBox>
                &nbsp;&nbsp;
                </strong>
          
            <p>
                <strong>From which University/College?&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="txtUni" runat="server" CssClass="auto-style5" Height="16px" Width="228px">
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
        </p>
            <p style="font-weight: 700">
                <span class="auto-style3"><strong>What is your highest qualification?</strong></span><strong>&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="txtQualification" runat="server" CssClass="auto-style4" Height="27px" Width="217px">
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
            </strong>
        </p>
        </div>
        <p style="font-weight: 700" class="auto-style1">
            <strong>Which industry do you work at?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtIndustry" runat="server" Width="244px"></asp:TextBox>
            </strong>
        </p>
        <p style="font-weight: 700; text-align: left;">
            <strong>For which company?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCompany" runat="server" Width="244px"></asp:TextBox>
            </strong>
        </p>
        <p style="font-weight: 700; height: 67px;" class="auto-style1">
            What is your job title<strong>?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="txtOccupation" runat="server" Width="244px"></asp:TextBox>
            </strong>
        </p>
        <p style="font-weight: 700" class="auto-style1">
            Years of work experience?<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="txtWorkExp" runat="server" CssClass="auto-style6" Height="91px" Width="245px">
                    <asp:ListItem>Irrelavant</asp:ListItem>
                    <asp:ListItem>0-3</asp:ListItem>
                    <asp:ListItem>4-7</asp:ListItem>
                    <asp:ListItem>7 and more</asp:ListItem>
                </asp:DropDownList>
            </strong>
        </p>
        <p style="font-weight: 700" class="auto-style1">
            Years of mentoring experience<strong>?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="txtMentorExp" runat="server" CssClass="auto-style7" Height="32px" Width="208px">
                    <asp:ListItem>Irrelavant</asp:ListItem>
                    <asp:ListItem>0-3</asp:ListItem>
                    <asp:ListItem>4-7</asp:ListItem>
                    <asp:ListItem>7 and more</asp:ListItem>               
                     </asp:DropDownList>
            </strong>
        </p>
    
    <p style="text-align: center">
        <asp:Button ID="btnRegister" runat="server" Text="Register" Width="241px" BackColor="#99CCFF" BorderColor="White" OnClick="btnRegister_Click" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
