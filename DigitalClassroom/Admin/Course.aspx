<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="DigitalClassroom.Admin.Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
        }

        .auto-style5 {
            width: 62%;
            background-color: #CCCCFF;
            border-radius: 20px;
            box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
            -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
            -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
        }

        .auto-style6 {
            height: 90px;
        }

        .auto-style9 {
            height: 79px;
            text-align: center;
        }

        .auto-style10 {
            height: 67px;
            text-align: center;
        }

        .auto-style11 {
            width: 513px;
            height: 223px;
            margin-left: 15px;
            margin-top: 13px;
        }

        .auto-style12 {
            width: 85px;
            margin-left: 15px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="auto-style4">
        <div>
            <fieldset style="border: 2px solid blue; box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); border-radius: 10px;"
                class="auto-style11">
                <legend class="auto-style12">
                    <asp:Label ID="Label2" runat="server" Text="Course" Font-Size="27px" ForeColor="Red"></asp:Label></legend>
                <br />
                &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Add Course" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" Font-Size="23px" />
                <br />
                <br />
                &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Edit or Modify Course" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged" Font-Size="23px" />

            </fieldset>
            &nbsp;&nbsp;&nbsp;
                <br />
            &nbsp;<br />
        </div>
        <asp:MultiView ID="MultiView1" runat="server">
            <div class="auto-style4">
                <asp:View ID="View1" runat="server">
                    <table align="center" class="auto-style5" style="border-spacing: 20px;">
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:Label ID="Label4" runat="server" Font-Names="Algerian" Text="Add New Course" Font-Size="30px" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label5" runat="server" Font-Names="Algerian" Text="Course Id"></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:Label ID="Label9" runat="server" Font-Names="Algerian"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label7" runat="server" Font-Names="Algerian" Text="Description"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBox4" runat="server" Height="48px" Width="306px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label8" runat="server" Font-Names="Algerian" Text="Duration"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox5" runat="server" Height="50px" TextMode="Number" Width="306px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style6">
                                <asp:Button ID="Button3" runat="server" ForeColor="White" Height="43px" Text="Add" Width="117px" OnClick="Button1_Click" BackColor="#FF9900" Font-Size="26px" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" ForeColor="Red" Height="41px" Text="Cancel" Width="119px" Font-Size="26px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <center>
                                    <div>
                                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="450px" Height="130px">
                                            <AlternatingRowStyle BackColor="White" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                        </asp:GridView>
                                    </div>
                                    <br />
                                </center>
                            </td>
                        </tr>
                    </table>
                </asp:View>

                <asp:View ID="View2" runat="server">

                    <center>
                        <div>
                            <asp:GridView ID="GridView2" runat="server" CssClass="table text-center" CellPadding="10" ForeColor="#333333" GridLines="None" Width="603px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="courseid" DataSourceID="SqlDataSource1" PageSize="5" CellSpacing="1">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Course ID" SortExpression="courseid">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("courseid") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("courseid") %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Height="70px" HorizontalAlign="Center" Width="70px" />
                                        <ItemStyle Height="70px" HorizontalAlign="Center" Width="70px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="description" HeaderText="Subject" SortExpression="description">
                                        <ItemStyle Height="70px" HorizontalAlign="Center" Width="70px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration">
                                        <ItemStyle Height="70px" HorizontalAlign="Center" Width="70px" />
                                    </asp:BoundField>
                                    <asp:CommandField HeaderText="Edit" ShowEditButton="True">
                                        <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                                    </asp:CommandField>
                                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True">
                                        <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                                    </asp:CommandField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>"
                                SelectCommand="SELECT * FROM [course]"
                                UpdateCommand="update course set description=@description,duration=@duration where courseid=@courseid"
                                DeleteCommand="delete from course where courseid=@courseid"></asp:SqlDataSource>
                        </div>
                    </center>

                </asp:View>

                <br />
                <br />
                <br />
            </div>
        </asp:MultiView>
        <br />
    </div>
    <br />
    <br />
    <br />
</asp:Content>
