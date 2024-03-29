<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="fact_ResetPassword.aspx.cs" Inherits="DigitalClassroom.Faculty.fact_ResetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <link href="../Content/Styles.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h2 class="text-center mb-4">Change Password</h2>
                        <div class="form-group">
                            <label for="TextBox1">Old Password</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="TextBox2">New Password</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="TextBox3">Confirm Password</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block" Text="SUBMIT" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
</asp:Content>
