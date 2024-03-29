<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="stud_assignment.aspx.cs" Inherits="DigitalClassroom.Student.stud_assignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <link href="../Content/Styles.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <style>
     
    </style>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="text-center">
                    <table class="table table-hover" style="border-radius: 10px; box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); border-color: blue; border: 0;">
                        <tr>
                            <td class="text-center" colspan="2" style="background-color: mediumpurple; border: 10px; width: 70%;">
                                <h2 style="color: white">Submit Assignment</h2>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff;">
                                <div class="form-group row">
                                    <label for="Label3" class="col-sm-4 col-form-label">Assignment Id</label>
                                    <div class="col-sm-8">
                                        <asp:Label ID="Label9" runat="server" Style="border: 1px solid darkgrey; background-color: #ffffff;" class="form-control"></asp:Label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff;">
                                <div class="form-group row">
                                    <label for="Label4" class="col-sm-4 col-form-label">Subject Name</label>
                                    <div class="col-sm-8">
                                        <asp:Label ID="Label10" runat="server" Style="border: 1px solid darkgrey; background-color: #ffffff;" class="form-control"></asp:Label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff;">
                                <div class="form-group row">
                                    <label for="Label5" class="col-sm-4 col-form-label">Assignment File</label>
                                    <div class="col-sm-8">
                                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control-file" />
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff;">
                                <div class="form-group row">
                                    <label for="Label6" class="col-sm-4 col-form-label">Start Date of Assignment</label>
                                    <div class="col-sm-8">
                                        <asp:Label ID="Label11" runat="server" Style="border: 1px solid darkgrey; background-color: #ffffff;" class="form-control"></asp:Label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff;">
                                <div class="form-group row">
                                    <label for="TextBox3" class="col-sm-4 col-form-label">Submission Date of Assignment</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" Style="border: 1px solid darkgrey; background-color: #ffffff;" BorderWidth="1px" Height="40px" TextMode="Date" Width="100%" BorderColor="#3366FF"></asp:TextBox>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="2" style="background-color: #f8d7da; border-radius: 10px; width: 70%;">
                                <asp:Button ID="Button1" runat="server" BackColor="#dc3545" BorderColor="#dc3545" ForeColor="White" Text="SUBMIT" class="btn btn-primary" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" BackColor="#6c757d" BorderColor="#6c757d" ForeColor="White" Text="RESET" class="btn btn-secondary" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <br />
    <br />

    <center>
        <div style="margin-left: 50px; width: 64%; text-align: center; justify-content: center; align-items: center;">

            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-striped table-bordered">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Assignment Id">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("assignmentid") %>' CssClass="form-control"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("assignmentid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="subject" HeaderText="Subject" />
                    <asp:HyperLinkField DataNavigateUrlFields="assignment_file" DataTextField="assignment_file" HeaderText="Assignment File" />
                    <asp:BoundField DataField="start_date" HeaderText="Start Date" />
                    <asp:BoundField DataField="submission_date" HeaderText="Submission Date" />
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" CssClass="btn btn-primary">Select</asp:LinkButton>
                        </ItemTemplate>
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




</asp:Content>
