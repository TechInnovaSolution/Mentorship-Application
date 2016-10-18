<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="WebApplication1.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="auto-style1">
    <h2>Mentor List</h2>
        <h4>
            Mentors with Pending Verification Status</h4>
        <p class="auto-style2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" DataKeyNames="MentorUsername">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color:#FFF8DC;">
                <strong>
                <asp:Label ID="MentorFirstNameLabel" runat="server" Text='<%# Eval("MentorFirstName") %>' />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="MentorLastNameLabel" runat="server" Text='<%# Eval("MentorLastName") %>' />
                <br />
                </strong>
                <hr />
                <a href="ViewMentor.aspx?id=<%# Eval("MentorUsername") %>">View Profile</a>
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">MentorFirstName:
                <asp:TextBox ID="MentorFirstNameTextBox" runat="server" Text='<%# Bind("MentorFirstName") %>' />
                <br />MentorLastName:
                <asp:TextBox ID="MentorLastNameTextBox" runat="server" Text='<%# Bind("MentorLastName") %>' />
                </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">MentorFirstName:
                <asp:TextBox ID="MentorFirstNameTextBox" runat="server" Text='<%# Bind("MentorFirstName") %>' />
                <br />MentorLastName:
                <asp:TextBox ID="MentorLastNameTextBox" runat="server" Text='<%# Bind("MentorLastName") %>' />
                <br />MentorDoB:
                <asp:TextBox ID="MentorDoBTextBox" runat="server" Text='<%# Bind("MentorDoB") %>' />
                <br />MentorEmail:
                <asp:TextBox ID="MentorEmailTextBox" runat="server" Text='<%# Bind("MentorEmail") %>' />
                <br />MentorPhone:
                <asp:TextBox ID="MentorPhoneTextBox" runat="server" Text='<%# Bind("MentorPhone") %>' />
                <br />MentorGender:
                <asp:TextBox ID="MentorGenderTextBox" runat="server" Text='<%# Bind("MentorGender") %>' />
                <br />MentorLocation:
                <asp:TextBox ID="MentorLocationTextBox" runat="server" Text='<%# Bind("MentorLocation") %>' />
                <br />MentorQualification:
                <asp:TextBox ID="MentorQualificationTextBox" runat="server" Text='<%# Bind("MentorQualification") %>' />
                <br />MentorUni:
                <asp:TextBox ID="MentorUniTextBox" runat="server" Text='<%# Bind("MentorUni") %>' />
                <br />MentorIndustry:
                <asp:TextBox ID="MentorIndustryTextBox" runat="server" Text='<%# Bind("MentorIndustry") %>' />
                <br />MentorCompany:
                <asp:TextBox ID="MentorCompanyTextBox" runat="server" Text='<%# Bind("MentorCompany") %>' />
                <br />MentorOccupation:
                <asp:TextBox ID="MentorOccupationTextBox" runat="server" Text='<%# Bind("MentorOccupation") %>' />
                <br />MentorYearsExp:
                <asp:TextBox ID="MentorYearsExpTextBox" runat="server" Text='<%# Bind("MentorYearsExp") %>' />
                <br />MentorMentorExp:
                <asp:TextBox ID="MentorMentorExpTextBox" runat="server" Text='<%# Bind("MentorMentorExp") %>' />
                <br />MentorVerifiedStatus:
                <asp:TextBox ID="MentorVerifiedStatusTextBox" runat="server" Text='<%# Bind("MentorVerifiedStatus") %>' />
                <br />
                MentorUsername:
                <asp:TextBox ID="MentorUsernameTextBox" runat="server" Text='<%# Bind("MentorUsername") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                <strong>
                <asp:Label ID="MentorFirstNameLabel" runat="server" Text='<%# Eval("MentorFirstName") %>' />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="MentorLastNameLabel" runat="server" Text='<%# Eval("MentorLastName") %>' />
                <br />
                </strong>
                <hr />
                <a href="ViewMentor.aspx?id=<%# Eval("MentorUsername") %>">View Profile</a>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">MentorFirstName:
                <asp:Label ID="MentorFirstNameLabel" runat="server" Text='<%# Eval("MentorFirstName") %>' />
                <br />MentorLastName:
                <asp:Label ID="MentorLastNameLabel" runat="server" Text='<%# Eval("MentorLastName") %>' />
                <br />MentorDoB:
                <asp:Label ID="MentorDoBLabel" runat="server" Text='<%# Eval("MentorDoB") %>' />
                <br />MentorEmail:
                <asp:Label ID="MentorEmailLabel" runat="server" Text='<%# Eval("MentorEmail") %>' />
                <br />MentorPhone:
                <asp:Label ID="MentorPhoneLabel" runat="server" Text='<%# Eval("MentorPhone") %>' />
                <br />MentorGender:
                <asp:Label ID="MentorGenderLabel" runat="server" Text='<%# Eval("MentorGender") %>' />
                <br />MentorLocation:
                <asp:Label ID="MentorLocationLabel" runat="server" Text='<%# Eval("MentorLocation") %>' />
                <br />MentorQualification:
                <asp:Label ID="MentorQualificationLabel" runat="server" Text='<%# Eval("MentorQualification") %>' />
                <br />MentorUni:
                <asp:Label ID="MentorUniLabel" runat="server" Text='<%# Eval("MentorUni") %>' />
                <br />MentorIndustry:
                <asp:Label ID="MentorIndustryLabel" runat="server" Text='<%# Eval("MentorIndustry") %>' />
                <br />MentorCompany:
                <asp:Label ID="MentorCompanyLabel" runat="server" Text='<%# Eval("MentorCompany") %>' />
                <br />MentorOccupation:
                <asp:Label ID="MentorOccupationLabel" runat="server" Text='<%# Eval("MentorOccupation") %>' />
                <br />MentorYearsExp:
                <asp:Label ID="MentorYearsExpLabel" runat="server" Text='<%# Eval("MentorYearsExp") %>' />
                <br />MentorMentorExp:
                <asp:Label ID="MentorMentorExpLabel" runat="server" Text='<%# Eval("MentorMentorExp") %>' />
                <br />MentorVerifiedStatus:
                <asp:Label ID="MentorVerifiedStatusLabel" runat="server" Text='<%# Eval("MentorVerifiedStatus") %>' />
                <br />MentorUsername:
                <asp:Label ID="MentorUsernameLabel" runat="server" Text='<%# Eval("MentorUsername") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
        </p>
        <p class="auto-style2">
            &nbsp;</p>
        <h4>
            Mentors with Pending Verification Status</h4>
        <p class="auto-style2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3" DataKeyNames="MentorUsername">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color:#FFF8DC;">
                <strong>
                <asp:Label ID="MentorFirstNameLabel0" runat="server" Text='<%# Eval("MentorFirstName") %>' />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="MentorLastNameLabel0" runat="server" Text='<%# Eval("MentorLastName") %>' />
                <br />
                </strong>
                <hr />
                <a href="ViewMentor.aspx?id=<%# Eval("MentorUsername") %>">View Profile</a>
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">MentorFirstName:
                <asp:TextBox ID="MentorFirstNameTextBox0" runat="server" Text='<%# Bind("MentorFirstName") %>' />
                <br />MentorLastName:
                <asp:TextBox ID="MentorLastNameTextBox0" runat="server" Text='<%# Bind("MentorLastName") %>' />
                </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer0" runat="server">
                <td id="itemPlaceholder0" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">MentorFirstName:
                <asp:TextBox ID="MentorFirstNameTextBox1" runat="server" Text='<%# Bind("MentorFirstName") %>' />
                <br />MentorLastName:
                <asp:TextBox ID="MentorLastNameTextBox1" runat="server" Text='<%# Bind("MentorLastName") %>' />
                <br />MentorDoB:
                <asp:TextBox ID="MentorDoBTextBox0" runat="server" Text='<%# Bind("MentorDoB") %>' />
                <br />MentorEmail:
                <asp:TextBox ID="MentorEmailTextBox0" runat="server" Text='<%# Bind("MentorEmail") %>' />
                <br />MentorPhone:
                <asp:TextBox ID="MentorPhoneTextBox0" runat="server" Text='<%# Bind("MentorPhone") %>' />
                <br />MentorGender:
                <asp:TextBox ID="MentorGenderTextBox0" runat="server" Text='<%# Bind("MentorGender") %>' />
                <br />MentorLocation:
                <asp:TextBox ID="MentorLocationTextBox0" runat="server" Text='<%# Bind("MentorLocation") %>' />
                <br />MentorQualification:
                <asp:TextBox ID="MentorQualificationTextBox0" runat="server" Text='<%# Bind("MentorQualification") %>' />
                <br />MentorUni:
                <asp:TextBox ID="MentorUniTextBox0" runat="server" Text='<%# Bind("MentorUni") %>' />
                <br />MentorIndustry:
                <asp:TextBox ID="MentorIndustryTextBox0" runat="server" Text='<%# Bind("MentorIndustry") %>' />
                <br />MentorCompany:
                <asp:TextBox ID="MentorCompanyTextBox0" runat="server" Text='<%# Bind("MentorCompany") %>' />
                <br />MentorOccupation:
                <asp:TextBox ID="MentorOccupationTextBox0" runat="server" Text='<%# Bind("MentorOccupation") %>' />
                <br />MentorYearsExp:
                <asp:TextBox ID="MentorYearsExpTextBox0" runat="server" Text='<%# Bind("MentorYearsExp") %>' />
                <br />MentorMentorExp:
                <asp:TextBox ID="MentorMentorExpTextBox0" runat="server" Text='<%# Bind("MentorMentorExp") %>' />
                <br />MentorVerifiedStatus:
                <asp:TextBox ID="MentorVerifiedStatusTextBox0" runat="server" Text='<%# Bind("MentorVerifiedStatus") %>' />
                <br />
                MentorUsername:
                <asp:TextBox ID="MentorUsernameTextBox0" runat="server" Text='<%# Bind("MentorUsername") %>' />
                <br />
                <asp:Button ID="InsertButton0" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                <strong>
                <asp:Label ID="MentorFirstNameLabel1" runat="server" Text='<%# Eval("MentorFirstName") %>' />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="MentorLastNameLabel1" runat="server" Text='<%# Eval("MentorLastName") %>' />
                <br />
                </strong>
                <hr />
                <a href="ViewMentor.aspx?id=<%# Eval("MentorUsername") %>">View Profile</a>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer0" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder0" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager2" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">MentorFirstName:
                <asp:Label ID="MentorFirstNameLabel2" runat="server" Text='<%# Eval("MentorFirstName") %>' />
                <br />MentorLastName:
                <asp:Label ID="MentorLastNameLabel2" runat="server" Text='<%# Eval("MentorLastName") %>' />
                <br />MentorDoB:
                <asp:Label ID="MentorDoBLabel0" runat="server" Text='<%# Eval("MentorDoB") %>' />
                <br />MentorEmail:
                <asp:Label ID="MentorEmailLabel0" runat="server" Text='<%# Eval("MentorEmail") %>' />
                <br />MentorPhone:
                <asp:Label ID="MentorPhoneLabel0" runat="server" Text='<%# Eval("MentorPhone") %>' />
                <br />MentorGender:
                <asp:Label ID="MentorGenderLabel0" runat="server" Text='<%# Eval("MentorGender") %>' />
                <br />MentorLocation:
                <asp:Label ID="MentorLocationLabel0" runat="server" Text='<%# Eval("MentorLocation") %>' />
                <br />MentorQualification:
                <asp:Label ID="MentorQualificationLabel0" runat="server" Text='<%# Eval("MentorQualification") %>' />
                <br />MentorUni:
                <asp:Label ID="MentorUniLabel0" runat="server" Text='<%# Eval("MentorUni") %>' />
                <br />MentorIndustry:
                <asp:Label ID="MentorIndustryLabel0" runat="server" Text='<%# Eval("MentorIndustry") %>' />
                <br />MentorCompany:
                <asp:Label ID="MentorCompanyLabel0" runat="server" Text='<%# Eval("MentorCompany") %>' />
                <br />MentorOccupation:
                <asp:Label ID="MentorOccupationLabel0" runat="server" Text='<%# Eval("MentorOccupation") %>' />
                <br />MentorYearsExp:
                <asp:Label ID="MentorYearsExpLabel0" runat="server" Text='<%# Eval("MentorYearsExp") %>' />
                <br />MentorMentorExp:
                <asp:Label ID="MentorMentorExpLabel0" runat="server" Text='<%# Eval("MentorMentorExp") %>' />
                <br />MentorVerifiedStatus:
                <asp:Label ID="MentorVerifiedStatusLabel0" runat="server" Text='<%# Eval("MentorVerifiedStatus") %>' />
                <br />MentorUsername:
                <asp:Label ID="MentorUsernameLabel0" runat="server" Text='<%# Eval("MentorUsername") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
        </p>
        <p class="auto-style2">
            &nbsp;</p>
        <h4>
            All Mentees</h4>
        </div>

    <p class="auto-style3">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MentorshipNetworkConnectionString %>" SelectCommand="SELECT [MenteeFirstName], [MenteeLastName], [MenteeUsername] FROM [Mentee]"></asp:SqlDataSource>
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="3" DataKeyNames="MenteeUsername">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color:#FFF8DC;">
                <strong>
                <asp:Label ID="MenteeFirstNameLabel" runat="server" Text='<%# Eval("MenteeFirstName") %>' />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="MenteeLastNameLabel" runat="server" Text='<%# Eval("MenteeLastName") %>' />
                <br />
               </strong>
               
                <hr />
                <a href="ViewMentee.aspx?id=<%# Eval("MenteeUsername") %>">View Profile</a>
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">MenteeFirstName:
                <asp:TextBox ID="MenteeFirstNameTextBox" runat="server" Text='<%# Bind("MenteeFirstName") %>' />
                <br />MenteeLastName:
                <asp:TextBox ID="MenteeLastNameTextBox" runat="server" Text='<%# Bind("MenteeLastName") %>' />
                <br />
                MenteeUsername:
                <asp:Label ID="MenteeUsernameLabel1" runat="server" Text='<%# Eval("MenteeUsername") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">MenteeFirstName:
                <asp:TextBox ID="MenteeFirstNameTextBox" runat="server" Text='<%# Bind("MenteeFirstName") %>' />
                <br />MenteeLastName:
                <asp:TextBox ID="MenteeLastNameTextBox" runat="server" Text='<%# Bind("MenteeLastName") %>' />
                <br />MenteeUsername:
                <asp:TextBox ID="MenteeUsernameTextBox" runat="server" Text='<%# Bind("MenteeUsername") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                <strong>
                <asp:Label ID="MenteeFirstNameLabel" runat="server" Text='<%# Eval("MenteeFirstName") %>' />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="MenteeLastNameLabel" runat="server" Text='<%# Eval("MenteeLastName") %>' />
                <br />
                    </strong>
                <hr />
                <div runat="server" style="background-color: #DCDCDC;color: #000000;">
                <a href="ViewMentee.aspx?id=<%# Eval("MenteeUsername") %>">View Profile</a>
                <br/>
 </div>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">MenteeFirstName:
                <asp:Label ID="MenteeFirstNameLabel" runat="server" Text='<%# Eval("MenteeFirstName") %>' />
                <br />MenteeLastName:
                <asp:Label ID="MenteeLastNameLabel" runat="server" Text='<%# Eval("MenteeLastName") %>' />
                <br />MenteeUsername:
                <asp:Label ID="MenteeUsernameLabel" runat="server" Text='<%# Eval("MenteeUsername") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    </asp:Content>
