<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="fact_assignment.aspx.cs" Inherits="DigitalClassroom.Faculty.fact_assignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <link href="../Content/Styles.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <style>
        .custom-fieldset {
            border: 2px solid #3399FF;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
        }

        .custom-legend {
            text-align: center;
            font-size: 27px;
            color: #CC3300;
        }

        .form-check {
            margin-bottom: 10px;
        }

        .form-check-label {
            font-size: 23px;
            margin-left: 5px;
        }

        .form-check-input {
            margin-top: 3px;
            margin-right: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <div class="container">
        <fieldset class="custom-fieldset">
            <legend class="custom-legend">
                <asp:Label ID="Label1" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Faculty Assignment Panel"></asp:Label>
            </legend>
            <div class="form-check">
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="23px" GroupName="a" Text="" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" CssClass="form-check-input" />
                <label class="form-check-label" for="RadioButton1">
                    <asp:Label ID="Label14" runat="server" Font-Size="23px" ForeColor="Black" Text="Add Assignment"></asp:Label>
                </label>
            </div>
            <div class="form-check">
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="23px" GroupName="a" Text="" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" CssClass="form-check-input" />
                <label class="form-check-label" for="RadioButton2">
                    <asp:Label ID="Label15" runat="server" Font-Size="23px" ForeColor="Black" Text="View/Download Assignment Answers"></asp:Label>
                </label>
            </div>
        </fieldset>
    </div>


    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <br />
            <center>
                <div class="container mt-5">
                    <table align="center" class="table" style="border-spacing: 15px; border-radius: 10px; justify-content: center; align-items: center; width: 60%; box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);">
                        <tr>
                            <td class=" text-center" colspan="2">
                                <asp:Label ID="Label7" runat="server" Font-Size="30px" ForeColor="Red" Text="Add Assignment "></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label2" runat="server" Text="Assignment Id " Font-Size="24px"></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:TextBox ID="TextBox1" runat="server" BorderColor="#33CCFF" BorderWidth="1px" Height="40px" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label3" runat="server" Text="Select Subject" Font-Size="24px"></asp:Label>
                            </td>
                            <td class="auto-style21">
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="300px" DataSourceID="SqlDataSource1" DataTextField="description" DataValueField="description">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [description] FROM [course]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                <asp:Label ID="Label4" runat="server" Text="Assignment File" Font-Size="24px"></asp:Label>
                            </td>
                            <td class="auto-style23">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style24">
                                <asp:Label ID="Label5" runat="server" Text="Date of Assignment " Font-Size="24px"></asp:Label>
                            </td>
                            <td class="auto-style25">
                                <asp:TextBox ID="TextBox2" runat="server" BorderColor="#33CCFF" BorderWidth="1px" Height="40px" TextMode="Date" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26">
                                <asp:Label ID="Label6" runat="server" Text="Last Date of Assignment " Font-Size="24px"></asp:Label>
                            </td>
                            <td class="auto-style27">
                                <asp:TextBox ID="TextBox3" runat="server" BorderColor="#33CCFF" BorderWidth="1px" Height="40px" TextMode="Date" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class=" text-center" colspan="2">
                                <asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderColor="#3366FF" ForeColor="White" Text="SUBMIT" OnClick="Button1_Click" BorderWidth="1px" Height="40px" Width="90px" />
                                &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="Red" BorderColor="Red" ForeColor="White" Text="RESET" BorderWidth="1px" Height="40px" OnClick="Button2_Click" Width="90px" />
                            </td>
                        </tr>
                    </table>
                </div>
                <br />

                <div class="container mt-5">

                    <asp:GridView ID="GridView1" runat="server" CellPadding="8" ForeColor="#333333" Width="70%" GridLines="None" CssClass=" table table-bordered text-center" AllowPaging="false" AutoGenerateColumns="False" CellSpacing="1" PageSize="5" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="assignmentid">
                                <EditItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("assignmentid") %>'></asp:Label>
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    Assignment ID
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("assignmentid") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="subject">
                                <EditItemTemplate>
                                    <asp:TextBox ID="Txteditsubject" runat="server" Text='<%# Bind("subject") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    Subject
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="assignmentfile">
                                <EditItemTemplate>
                                    <asp:TextBox ID="Txteditassgfile" runat="server" Text='<%# Bind("assignment_file") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    Assignment File
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("assignment_file") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="startdate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="Txteditstdate" runat="server" Text='<%# Bind("start_date") %>' TextMode="Date"></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    Start Date
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("start_date") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Height="90px" Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="submissiondate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="Txteditsubdate" runat="server" Text='<%# Bind("submission_date") %>' TextMode="Date"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("submission_date") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Height="90px" Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="action">
                                <EditItemTemplate>
                                    <br />
                                    <asp:Button ID="Button5" runat="server" BackColor="Orange" BorderColor="Orange" BorderWidth="1px" CommandName="UPDATE" ForeColor="White" Height="38px" Text="UPDATE" Width="90px" />
                                    <br />
                                    <br />
                                    <asp:Button ID="Button3" runat="server" BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderWidth="1px" CommandName="CANCEL" Height="38px" Text="CANCEL" Width="90px" />
                                    <br />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderColor="#3366FF" BorderWidth="1px" CommandName="EDIT" ForeColor="White" Height="38px" Text="EDIT" Width="90px" />
                                    <br />
                                    <br />
                                    <asp:Button ID="Button4" runat="server" BackColor="#CC3300" BorderColor="#CC3300" BorderWidth="1px" CommandName="DELETE" ForeColor="White" Height="38px" Text="DELETE" Width="90px" />
                                    <br />
                                </ItemTemplate>
                                <HeaderStyle Height="90px" Width="90px" />
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:TemplateField>
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
                </div>
                <br />
            </center>
            <br />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <br />
            <br />
            <center>
                <div>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="1" PageSize="5">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="stu_id" HeaderText="Student ID" SortExpression="stu_id">
                                <HeaderStyle Height="70px" HorizontalAlign="Center" Width="90px" />
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="stu_name" HeaderText="Student Name" SortExpression="stu_name">
                                <HeaderStyle Height="70px" HorizontalAlign="Center" Width="110px" />
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject">
                                <HeaderStyle Height="70px" HorizontalAlign="Center" Width="90px" />
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="assignmentid" HeaderText="Assignment ID" SortExpression="assignmentid">
                                <HeaderStyle Height="70px" HorizontalAlign="Center" Width="110px" />
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:BoundField>
                            <asp:HyperLinkField DataNavigateUrlFields="assignment_file" DataTextField="assignment_file" HeaderText="Assignment File">
                                <HeaderStyle Height="70px" HorizontalAlign="Center" Width="90px" />
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:HyperLinkField>
                            <asp:BoundField DataField="start_date" HeaderText="Start date" SortExpression="start_date">
                                <HeaderStyle Height="70px" HorizontalAlign="Center" Width="90px" />
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="submission_date" HeaderText="Submission Date" SortExpression="submission_date">
                                <HeaderStyle Height="70px" HorizontalAlign="Center" Width="90px" />
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:BoundField>
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT * FROM [stud_assignment]"></asp:SqlDataSource>
                </div>
            </center>

        </asp:View>

    </asp:MultiView>
    <br />
    <br />
</asp:Content>
