<%@ Page Title="" Language="C#" MasterPageFile="~/D-Classroom.Master" AutoEventWireup="true" CodeBehind="ForPasswordFact.aspx.cs" Inherits="DigitalClassroom.ForPasswordFact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 50%;
            background-color: #99CCFF;
            margin-top: 137px;
            border-radius:10px;
        }
        .auto-style6 {
            height: 89px;
            text-align: center;
        }
        .auto-style9 {
            height: 63px;
        }
        .auto-style10 {
            height: 67px;
        }
        .auto-style11 {
            height: 79px;
        }
        .auto-style12 {
            height: 14px;
        }
        .auto-style13 {
            height: 63px;
            width: 306px;
             text-align: center;
         }
        .auto-style14 {
            height: 67px;
            width: 306px;
             text-align: center;
         }
        .auto-style15 {
            height: 79px;
            width: 306px;
             text-align: center;
         }
         .auto-style16 {
             text-align: center;
             height: 49px;
         }
         .auto-style17 {
             width: 602px;
         }
         .auto-style18 {
             height: 72px;
             width: 350px;
         }
         .auto-style19 {
             height: 69px;
             width: 350px;
         }
         .auto-style20 {
             height: 72px;
             width: 369px;
             text-align: center;
         }
         .auto-style21 {
             height: 69px;
             width: 369px;
             text-align: center;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" class="auto-style4" style="border-spacing: 15px; background-color: #99CCFF;">
        <tr>
            <td class="text-center" colspan="2">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Algerian" Font-Size="35px" ForeColor="#CC3300" Text="Forget Password Page"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" Text="Username" Font-Names="Algerian" Font-Size="30px" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="Label4" runat="server" Text="Security Ques" Font-Names="Algerian" Font-Size="30px" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label5" runat="server" Text="Security Ans" Font-Names="Algerian" Font-Size="30px" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox1" runat="server" Width="280px" Height="40px" BorderColor="#33CCFF"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">
                <asp:Button ID="Button1" runat="server" ForeColor="Red" Text="Submit" OnClick="Button1_Click"/>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" ForeColor="Red" Text="Reset" />
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style17">
                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                <div class="text-center">
                                    <br />
                                    <asp:Label ID="Label10" runat="server" Font-Names="Algerian" Font-Size="35px" ForeColor="#CC3300" Text="Update Password "></asp:Label>
                                    <br />
                                    <br />
                                </div>
                                <table class="auto-style2">
                                    <tr>
                                        <td class="auto-style20">
                                            <asp:Label ID="Label8" runat="server" Text="New Password" Font-Bold="False" Font-Names="Algerian" Font-Size="26px" ForeColor="Black"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox2" runat="server" Height="40px" TextMode="Password" Width="280px" BorderColor="#33CCFF"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">
                                            <asp:Label ID="Label9" runat="server" Text="Retype Password" Font-Bold="False" Font-Names="Algerian" Font-Size="26px" ForeColor="Black"></asp:Label>
                                        </td>
                                        <td class="auto-style19">
                                            <br />
                                            <asp:TextBox ID="TextBox3" runat="server" Height="40px" TextMode="Password" Width="280px" BorderColor="#33CCFF"></asp:TextBox>
                                            <br />
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="Password Missed Matched"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="2">
                                            <asp:Button ID="Button3" runat="server" Text="Update Password" BackColor="Lime" BorderColor="#66FF33" Font-Size="23px" ForeColor="White" Height="43px" OnClick="Button3_Click" Width="230px" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                            </asp:Panel>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
    </table>

</asp:Content>
