<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ViewMentee.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
    <asp:Button ID="btnAcceptRequest" runat="server" OnClick="btnAcceptRequest_Click" Text="Accept Request" BackColor="#33CC33" BorderColor="White" />
    <asp:Button ID="btnRejectRequest" runat="server" Text="Reject Request" BackColor="Red" BorderColor="White" OnClick="btnRejectRequest_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
