<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="faculty_lecture.aspx.cs" Inherits="DigitalClassroom.Faculty.faculty_lecture" %>

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
    <br />
    <div class="container">
        <fieldset class="custom-fieldset">
            <legend class="custom-legend">
                <asp:Label ID="Label5" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Faculty Lecture Panel"></asp:Label>
            </legend>
            <div class="form-check">
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="23px" GroupName="a" Text="" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" CssClass="form-check-input" />
                <label class="form-check-label" for="RadioButton1">
                    <asp:Label ID="Label14" runat="server" Font-Size="23px" ForeColor="Black" Text="Add Lecture"></asp:Label>
                </label>
            </div>
            <div class="form-check">
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="23px" GroupName="a" Text="" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" CssClass="form-check-input" />
                <label class="form-check-label" for="RadioButton2">
                    <asp:Label ID="Label6" runat="server" Font-Size="23px" ForeColor="Black" Text="Show Lecture"></asp:Label>
                </label>
            </div>
        </fieldset>
    </div>
    <br />

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="container text-center" style="width: 50%; justify-content: center; align-items: center;">


                <table class="table table-bordered" style="margin-top: 50px; justify-content: center; align-items: center;">
                    <tr>
                        <td colspan="2" style="background-color: mediumpurple; color: white;">
                            <h1 class="text-center" style="color: white; border-radius: 10px">Add Lectures</h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Size="23px" Text="Lecture Id"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label15" runat="server" Font-Size="23px" Text="Faculty Id"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Size="23px" Text="Course"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="description" DataValueField="description">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [description] FROM [course]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Size="23px" Text="Topic "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Size="23px" Text="Lecture File"></asp:Label>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Font-Size="23px" Text="Lecture Publish Date"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="SUBMIT" OnClick="Button1_Click" />
                            &nbsp;
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="RESET" />
                        </td>
                    </tr>
                </table>


            </div>
            <br />
            <br />

            <center>
                <div>
                    <asp:GridView ID="GridView1" runat="server" Width="60%" AutoGenerateColumns="False" CssClass="table table-bordered text-center" CellPadding="9" CellSpacing="1" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="5">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="lectureid">
                                <EditItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("lectureid") %>'></asp:Label>
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    Lecture ID
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("lectureid") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Faculty ID">
                                <EditItemTemplate>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("faculty_id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("faculty_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="course">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="description" DataValueField="description">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [description] FROM [course]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    Course
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="topic">
                                <EditItemTemplate>
                                    <asp:TextBox ID="Txtedittopic" runat="server" Text='<%# Bind("topic") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    Topic
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("topic") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="lecture">
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload2" runat="server" Width="200px" />
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    Lecture
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("lecture") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Height="90px" Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Lecture Publish Date">
                                <EditItemTemplate>
                                    <asp:TextBox ID="Texteditpubdate" runat="server" Text='<%# Bind("publish_date") %>' TextMode="Date"></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderTemplate>
                                    Lecture Publish Date
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("publish_date") %>'></asp:Label>
                                </ItemTemplate>
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
                                    <asp:Button ID="Button6" runat="server" BackColor="#3366FF" BorderColor="#3366FF" BorderWidth="1px" CommandName="EDIT" ForeColor="White" Height="38px" Text="EDIT" Width="90px" />
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
            </center>


        </asp:View>

        <asp:View ID="View2" runat="server">
            <br />
            <center>
                <div>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="60%" CssClass="table table-bordered text-center" DataSourceID="SqlDataSource2" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="1" PageSize="5" DataKeyNames="lectureid">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="lectureid" HeaderText="lectureid" SortExpression="lectureid" ReadOnly="True"></asp:BoundField>
                            <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject"></asp:BoundField>
                            <asp:BoundField DataField="topic" HeaderText="topic" SortExpression="topic"></asp:BoundField>
                            <asp:BoundField DataField="publish_date" HeaderText="publish_date" SortExpression="publish_date"></asp:BoundField>
                            <asp:BoundField DataField="faculty_id" HeaderText="faculty_id" SortExpression="faculty_id"></asp:BoundField>
                            <asp:HyperLinkField DataNavigateUrlFields="lecture" DataTextField="lecture" HeaderText="Lecture File" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT * FROM [lecture]"></asp:SqlDataSource>
                </div>
            </center>
            <br />
            <br />
            <br />

        </asp:View>


    </asp:MultiView>


</asp:Content>
