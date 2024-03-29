<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="DigitalClassroom.Admin.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
        }

        .auto-style5 {
            width: 59%;
            background-color: #CCCCFF;
            border-radius: 20px;
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
            width: 417px;
            height: 205px;
            margin-left: 25px;
        }

        .auto-style12 {
            text-align: center;
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="auto-style4">
        <br />
        <fieldset style="border: 2px solid blue; box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); border-radius: 10px;"
            class="auto-style11">
            <legend class="auto-style12">
                <asp:Label ID="Label9" runat="server" Text="News Editing" Font-Size="27px" ForeColor="Red"></asp:Label></legend>
            <br />
            &nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Add News" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" Font-Size="23px" />
            <br />
            <br />
            &nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Edit or Modify News" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged" Font-Size="23px" />
            <br />
        </fieldset>
        &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;<br />
        <asp:MultiView ID="MultiView1" runat="server">
            <div class="auto-style4">
                <asp:View ID="View1" runat="server">
                    <table align="center" class="auto-style5" style="border-spacing: 20px; box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);">
                        <tr>
                            <td class="auto-style1" colspan="2">
                                <asp:Label ID="Label2" runat="server" Font-Names="Algerian" Text="Add News" Font-Size="30px" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label3" runat="server" Font-Names="Algerian" Text="News Id" Font-Size="26px"></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:Label ID="Label4" runat="server" Font-Names="Algerian"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label5" runat="server" Font-Names="Algerian" Text="Subject" Font-Size="26px"></asp:Label>
                            </td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBox1" runat="server" Height="48px" Width="298px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label6" runat="server" Font-Names="Algerian" Text="Description" Font-Size="26px"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="306px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style6">
                                <asp:Button ID="Button1" runat="server" ForeColor="White" Height="43px" Text="Add" Width="117px" OnClick="Button1_Click" BackColor="Orange" Font-Size="26px" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" ForeColor="Red" Height="41px" Text="Cancel" Width="119px" Font-Size="26px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <center>
                                    <div>
                                        <asp:GridView ID="GridView1" CssClass=" table text-capitalize text-center" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="645px" Height="232px">
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
                                        <br />
                                    </div>
                                </center>
                            </td>
                        </tr>
                    </table>
                </asp:View>

                <asp:View ID="View2" runat="server">
                    <center>
                        <div>
                            <asp:GridView ID="GridView2" CssClass=" table text-capitalize text-center" runat="server" CellPadding="15" ForeColor="#333333" GridLines="None" Width="603px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" PageSize="3" CellSpacing="1">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="newsdate" HeaderText="newsdate" SortExpression="newsdate"></asp:BoundField>
                                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
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
                                SelectCommand="SELECT * FROM [news]"
                                UpdateCommand="update news set subject=@subject,description=@description where id=@id"
                                DeleteCommand="delete from news where id=@id"></asp:SqlDataSource>
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
