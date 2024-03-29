<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="DigitalClassroom.Student.edit1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 50%;
        }

        .auto-style4 {
            width: 419px;
        }

        .auto-style5 {
            width: 419px;
            height: 35px;
        }

        .auto-style6 {
            height: 35px;
        }

        .auto-style9 {
            width: 419px;
            text-align: left;
        }

        .auto-style11 {
            margin-left: 0px;
        }

        .auto-style12 {
            text-align: center;
            height: 160px;
        }

        .auto-style13 {
            text-align: center;
            border-radius:20px;
        }

        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            width: 419px;
            height: 34px;
        }
        .auto-style16 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <center>
        <table align="center" class="auto-style3" style="border: 2px solid #3399FF; border-radius:20px; background-color: #CCCCFF;box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
                -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
                 -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); border-spacing: 20px;">
            <tr>
                <td class="auto-style12" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image4" runat="server" Height="150px" Width="200px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Edit Profile" BackColor="Lime" Visible="False" Width="119px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="247px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Update" BackColor="#CC3300" BorderColor="#CC3300" ForeColor="White" Height="37px" Visible="False" Width="122px" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="UserName"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="19px" RepeatDirection="Horizontal" Width="230px" Height="28px" CssClass="auto-style11">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label7" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox5" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Course"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="230px">
                        <asp:ListItem>C++ language</asp:ListItem>
                        <asp:ListItem>C# language</asp:ListItem>
                        <asp:ListItem>CSS</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="27px" TextMode="MultiLine" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="E-mail"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label11" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Contact No."></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox8" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label12" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Security Question"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="230px">
                        <asp:ListItem>security</asp:ListItem>
                        <asp:ListItem>personal info</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label13" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Security Anwers"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="2">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#CC3300" BorderColor="#CC3300" ForeColor="White" Height="37px" Width="122px" OnClick="Button1_Click" />
                    <br />
                </td>
            </tr>
        </table>
    </center>
    <br />
</asp:Content>
