<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ViewMentee.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .auto-style8 {
            font-size: small;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            margin-left: 101px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    

    <p class="auto-style9">
            <asp:Image ID="Image1" runat="server" Height="23px" ImageUrl="~/Images/orderedList8.png" Width="24px" />
            <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
            <span class="auto-style8">&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSignOut" runat="server" Height="34px" Text="Sign Out" Width="76px" BackColor="#CCCCCC" BorderStyle="None" OnClick="btnSignOut_Click" />
            </span></p>

    
    <p class="auto-style10">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <strong>
                <h2>
            <asp:Label ID="MenteeFirstNameLabel" runat="server" Text='<%# Eval("MenteeFirstName") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="MenteeLastNameLabel" runat="server" Text='<%# Eval("MenteeLastName") %>' />
                    </h2>
            <br />
            </strong>
            <h3>PERSONAL DETAILS</h3>
            <strong>
            <br />
            Gender:
            <asp:Label ID="MenteeGenderLabel" runat="server" Text='<%# Eval("MenteeGender") %>' />
            <br />
            Date of Birth:
            <asp:Label ID="MenteeDoBLabel" runat="server" Text='<%# Eval("MenteeDoB") %>' />
            <br />          
            MenteeLocation:
            <asp:Label ID="MenteeLocationLabel" runat="server" Text='<%# Eval("MenteeLocation") %>' />
            <br />

                <h3>EDUCATION</h3>
            Institution:
            <asp:Label ID="MenteeUniLabel" runat="server" Text='<%# Eval("MenteeUni") %>' />
            <br />
            Qualification:
            <asp:Label ID="MenteeQualificationLabel" runat="server" Text='<%# Eval("MenteeQualification") %>' />
            <br />
            Current Year Of Study:
            <asp:Label ID="MenteeYearOfStudyLabel" runat="server" Text='<%# Eval("MenteeYearOfStudy") %>' />
            <br />
                <h3>CONTACT DETAILS</h3>
             Email Address:
            <asp:Label ID="MenteeEmailLabel" runat="server" Text='<%# Eval("MenteeEmail") %>' />
            <br />
            Phone Number:
            <asp:Label ID="MenteePhoneLabel" runat="server" Text='<%# Eval("MenteePhone") %>' />
            <br />
            <br />
                </strong>
        </ItemTemplate>
    </asp:DataList>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MentorshipNetworkConnectionString %>" SelectCommand="SELECT [MenteeFirstName], [MenteeLastName], [MenteeGender], [MenteeDoB], [MenteeEmail], [MenteePhone], [MenteeLocation], [MenteeUni], [MenteeQualification], [MenteeYearOfStudy] FROM [Mentee] WHERE ([MenteeUsername] = @MenteeUsername)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MenteeUsername" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnAcceptRequest" runat="server" OnClick="btnAcceptRequest_Click" Text="Accept Request" BackColor="#CCFF99" BorderColor="White" />
    <asp:Button ID="btnRejectRequest" runat="server" Text="Reject Request" BackColor="#FF9966" BorderColor="White" OnClick="btnRejectRequest_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="OtherContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
