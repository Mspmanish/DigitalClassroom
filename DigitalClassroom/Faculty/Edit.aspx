<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="DigitalClassroom.Faculty.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            width: 300px;
        }

        .auto-style3 {
            text-align: center;
            width: 560px;
            margin-top: 12px;
            border-radius: 20px;
        }

        .auto-style4 {
            text-align: center;
            width: 307px;
        }

        .auto-style8 {
            width: 300px;
            text-align: left;
        }

        .auto-style9 {
            text-align: left;
            width: 307px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <center>
        <table align="center" class="auto-style3" style="border: 2px solid #3399FF; background-color: #FFFFFF; border-spacing: 20px; box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); border-spacing: 25px;">
            <tr>
                <td class="auto-style12" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="FacultyName"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label14" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="19px" RepeatDirection="Horizontal" Width="230px" Height="28px" CssClass="auto-style11">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label7" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label8" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Course"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="230px">
                        <asp:ListItem>C++ language</asp:ListItem>
                        <asp:ListItem>C# language</asp:ListItem>
                        <asp:ListItem>CSS</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label9" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Address"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox6" runat="server" Height="27px" TextMode="MultiLine" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label10" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="E-mail"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox7" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label11" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Contact No."></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox8" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label12" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Security Question"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="230px">
                        <asp:ListItem>security</asp:ListItem>
                        <asp:ListItem>personal info</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label13" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Security Anwers"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox9" runat="server" Height="27px" Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#CC3300" BorderColor="#CC3300" ForeColor="White" Height="37px" OnClick="Button1_Click" Width="122px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </center>
</asp:Content>
