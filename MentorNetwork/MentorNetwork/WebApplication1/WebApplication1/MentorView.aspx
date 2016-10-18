<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MentorView.aspx.cs" Inherits="WebApplication1.MentorView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


        .auto-style8 {
            font-size: small;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="MainContent" runat="server">
    <p style="text-align: right"> 
            <asp:Image ID="Image1" runat="server" Height="23px" ImageUrl="~/Images/orderedList8.png" Width="24px" />
            <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
            <span class="auto-style8">&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSignOut" runat="server" Height="34px" Text="Sign Out" Width="76px" BackColor="#CCCCCC" BorderStyle="None" OnClick="btnSignOut_Click" />
            </span>
    </p>
    <p style="text-align: left; margin-left: 108px;"> 
          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
              <ItemTemplate>
                  
                  <h2>
                  <strong>
                  <asp:Label ID="MentorLastNameLabel" runat="server" Text='<%# Eval("MentorLastName") %>' />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Label ID="MentorFirstNameLabel" runat="server" Text='<%# Eval("MentorFirstName") %>' />
                      </strong>
                      </h2>
                  <br />
                  <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                  <br />
                      <h3>PERSONAL DETAILS</h3>
                  Date of Birth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorDoBLabel" runat="server" Text='<%# Eval("MentorDoB") %>' />
                  <br />
                  
                  Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorGenderLabel" runat="server" Text='<%# Eval("MentorGender") %>' />
                  <br />
                      Location:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorLocationLabel" runat="server" Text='<%# Eval("MentorLocation") %>' />
                  <br />                  
                  Years of mentoring experience:&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorYearsExpLabel" runat="server" Text='<%# Eval("MentorYearsExp") %>' />
                  <br />
                   Verification Status:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorVerifiedStatusLabel" runat="server" Text='<%# Eval("MentorVerifiedStatus") %>' />
                  <br />
                      <br />
                    <h3>EDUCATION</h3>
                   Institution:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorUniLabel" runat="server" Text='<%# Eval("MentorUni") %>' />
                  <br />
                  Qualification:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorQualificationLabel" runat="server" Text='<%# Eval("MentorQualification") %>' />
                  <br />
                      <br />
                      <h3>WORK EXPERIENCE</h3>
                      Industry:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorIndustryLabel" runat="server" Text='<%# Eval("MentorIndustry") %>' />
                  <br />
                  Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorCompanyLabel" runat="server" Text='<%# Eval("MentorCompany") %>' />
                  <br />  
                  Job description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorOccupationLabel" runat="server" Text='<%# Eval("MentorOccupation") %>' />
                  <br />
                  Years of work experience:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorMentorExpLabel" runat="server" Text='<%# Eval("MentorMentorExp") %>' />
                  <br />
                 
                      <br />
                      <h3>CONTACT DETAILS</h3>

                      Email Adress:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorEmailLabel" runat="server" Text='<%# Eval("MentorEmail") %>' />
                  <br />
                  Phone Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MentorPhoneLabel" runat="server" Text='<%# Eval("MentorPhone") %>' />
                  <br />
<br />
                      </strong>
              </ItemTemplate>
          </asp:DataList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MentorshipNetworkConnectionString %>" SelectCommand="SELECT [MentorLastName], [MentorFirstName], [MentorDoB], [MentorEmail], [MentorPhone], [MentorGender], [MentorMentorExp], [MentorYearsExp], [MentorCompany], [MentorUni], [MentorQualification], [MentorLocation], [MentorIndustry], [MentorOccupation], [MentorVerifiedStatus] FROM [Mentor] WHERE ([MentorUsername] = @MentorUsername2)">
              <SelectParameters>
                  <asp:QueryStringParameter Name="MentorUsername2" QueryStringField="Username" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
    </p>
    <p style="text-align: center"> 
          <asp:Button ID="btnRequest" runat="server" OnClick="btnRequest_Click" Text="Request Mentor" BackColor="#99CCFF" BorderColor="White" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" Height="57px" Width="208px" />
    </p>
     
    
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
