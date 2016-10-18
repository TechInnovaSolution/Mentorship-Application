<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ViewMentee.aspx.cs" Inherits="WebApplication1.Admin.ViewMentee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            MenteeFirstName:
            <asp:Label ID="MenteeFirstNameLabel" runat="server" Text='<%# Eval("MenteeFirstName") %>' />
            <br />
            MenteeLastName:
            <asp:Label ID="MenteeLastNameLabel" runat="server" Text='<%# Eval("MenteeLastName") %>' />
            <br />
            MenteeGender:
            <asp:Label ID="MenteeGenderLabel" runat="server" Text='<%# Eval("MenteeGender") %>' />
            <br />
            MenteeDoB:
            <asp:Label ID="MenteeDoBLabel" runat="server" Text='<%# Eval("MenteeDoB") %>' />
            <br />
            MenteeEmail:
            <asp:Label ID="MenteeEmailLabel" runat="server" Text='<%# Eval("MenteeEmail") %>' />
            <br />
            MenteePhone:
            <asp:Label ID="MenteePhoneLabel" runat="server" Text='<%# Eval("MenteePhone") %>' />
            <br />
            MenteeLocation:
            <asp:Label ID="MenteeLocationLabel" runat="server" Text='<%# Eval("MenteeLocation") %>' />
            <br />
            MenteeUni:
            <asp:Label ID="MenteeUniLabel" runat="server" Text='<%# Eval("MenteeUni") %>' />
            <br />
            MenteeQualification:
            <asp:Label ID="MenteeQualificationLabel" runat="server" Text='<%# Eval("MenteeQualification") %>' />
            <br />
            MenteeYearOfStudy:
            <asp:Label ID="MenteeYearOfStudyLabel" runat="server" Text='<%# Eval("MenteeYearOfStudy") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MentorshipNetworkConnectionString %>" SelectCommand="SELECT [MenteeFirstName], [MenteeLastName], [MenteeGender], [MenteeDoB], [MenteeEmail], [MenteePhone], [MenteeLocation], [MenteeUni], [MenteeQualification], [MenteeYearOfStudy] FROM [Mentee] WHERE ([MenteeUsername] = @MenteeUsername)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MenteeUsername" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p class="auto-style1">
    <asp:Button ID="btnArchive" runat="server" OnClick="btnArchive_Click" Text="Archive Mentee" BackColor="#99CCFF" BorderColor="White" />
        </p>
    <p style="text-align: center"> 
          Mentee archived?&nbsp;
          <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" BorderStyle="None" Font-Bold="True" Font-Names="Calibri" Font-Size="Small" Font-Underline="True" Height="28px" OnClick="Button1_Click" Text="Activate account" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
