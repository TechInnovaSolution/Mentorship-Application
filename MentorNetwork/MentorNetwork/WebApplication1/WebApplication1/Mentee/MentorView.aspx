﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MentorView.aspx.cs" Inherits="WebApplication1.MentorView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="MainContent" runat="server">
    <p style="text-align: left"> 
          <asp:Label ID="lblName" runat="server"></asp:Label>
          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
              <ItemTemplate>
                  MentorLastName:
                  <asp:Label ID="MentorLastNameLabel" runat="server" Text='<%# Eval("MentorLastName") %>' />
                  <br />
                  MentorFirstName:
                  <asp:Label ID="MentorFirstNameLabel" runat="server" Text='<%# Eval("MentorFirstName") %>' />
                  <br />
                  MentorDoB:
                  <asp:Label ID="MentorDoBLabel" runat="server" Text='<%# Eval("MentorDoB") %>' />
                  <br />
                  MentorEmail:
                  <asp:Label ID="MentorEmailLabel" runat="server" Text='<%# Eval("MentorEmail") %>' />
                  <br />
                  MentorPhone:
                  <asp:Label ID="MentorPhoneLabel" runat="server" Text='<%# Eval("MentorPhone") %>' />
                  <br />
                  MentorGender:
                  <asp:Label ID="MentorGenderLabel" runat="server" Text='<%# Eval("MentorGender") %>' />
                  <br />
                  MentorMentorExp:
                  <asp:Label ID="MentorMentorExpLabel" runat="server" Text='<%# Eval("MentorMentorExp") %>' />
                  <br />
                  MentorYearsExp:
                  <asp:Label ID="MentorYearsExpLabel" runat="server" Text='<%# Eval("MentorYearsExp") %>' />
                  <br />
                  MentorCompany:
                  <asp:Label ID="MentorCompanyLabel" runat="server" Text='<%# Eval("MentorCompany") %>' />
                  <br />
                  MentorUni:
                  <asp:Label ID="MentorUniLabel" runat="server" Text='<%# Eval("MentorUni") %>' />
                  <br />
                  MentorQualification:
                  <asp:Label ID="MentorQualificationLabel" runat="server" Text='<%# Eval("MentorQualification") %>' />
                  <br />
                  MentorLocation:
                  <asp:Label ID="MentorLocationLabel" runat="server" Text='<%# Eval("MentorLocation") %>' />
                  <br />
                  MentorIndustry:
                  <asp:Label ID="MentorIndustryLabel" runat="server" Text='<%# Eval("MentorIndustry") %>' />
                  <br />
                  MentorOccupation:
                  <asp:Label ID="MentorOccupationLabel" runat="server" Text='<%# Eval("MentorOccupation") %>' />
                  <br />
                  MentorVerifiedStatus:
                  <asp:Label ID="MentorVerifiedStatusLabel" runat="server" Text='<%# Eval("MentorVerifiedStatus") %>' />
                  <br />
<br />
              </ItemTemplate>
          </asp:DataList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MentorshipNetworkConnectionString %>" SelectCommand="SELECT [MentorLastName], [MentorFirstName], [MentorDoB], [MentorEmail], [MentorPhone], [MentorGender], [MentorMentorExp], [MentorYearsExp], [MentorCompany], [MentorUni], [MentorQualification], [MentorLocation], [MentorIndustry], [MentorOccupation], [MentorVerifiedStatus] FROM [Mentor] WHERE ([MentorUsername] = @MentorUsername)">
              <SelectParameters>
                  <asp:QueryStringParameter Name="MentorUsername" QueryStringField="id" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
    </p>
    <p style="text-align: left"> 
          <asp:Button ID="btnRequest" runat="server" OnClick="btnRequest_Click" Text="Request Mentor" />
    </p>
     
    
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
