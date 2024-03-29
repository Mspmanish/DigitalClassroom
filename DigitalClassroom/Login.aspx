<%@ Page Title="" Language="C#" MasterPageFile="~/D-Classroom.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DigitalClassroom.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
        <link href="../Content/Styles.css" rel="stylesheet" />
        <script src="../Scripts/jquery-3.0.0.min.js"></script>
        <script src="../Scripts/popper.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".siderbar_menu li").click(function () {
                    $(".siderbar_menu li").removeClass("active");
                    $(this).addClass("active");
                });

                $(".hamburger").click(function () {
                    $(".wrapper").addClass("active");
                });

                $(".close, .bg_shadow").click(function () {
                    $(".wrapper").removeClass("active");
                });
            });
        </script>
    <style>
       i{
           font-size:23px;
       }
       #footer{
           padding: 0px 0 1px 0;
       }
       span{
           font-size:15px;
           color:darkgray;
       }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <br />
        <br />
        <br />   
        <div class="container mt-5">
            
            <div class="row">    
            
                <div class="col-md-4 mx-auto " style="box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
                -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
                 -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);">
                    <br />
                    <div class=" jumbotron text-center text-white bg-primary">
                        <h2>Sign In</h2>
                    </div>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="350px">
                    <asp:ListItem>Select Login Type</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Faculty</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                     <i class="fas fa-envelope"></i>
                        <br />


                    <div class=" form-group mb-3">              
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter ID" class="form-control shadow-sm px-4"  autofocus="autofocus" required></asp:TextBox>
                    </div>
                   
                   
                     <i class="fas fa-lock"></i>
                    <br />

                    <div class=" form-group mb-3 mb-2">
                         <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password" class="form-control shadow-sm px-4"  autofocus="autofocus" required TextMode="Password"></asp:TextBox>
                    </div>
                   
                    <asp:Button ID="LoginBtn" runat="server" Text="Sign in" CssClass="btn btn-primary btn-block text-uppercase mb-2 rounded-pill shadow-sm ba" BackColor="#5558c9" OnClick="LoginBtn_Click"/>
                    
                    <div class="text-center d-flex justify-content-between mt-4">
                        <asp:Label ID="LblMsg" runat="server"></asp:Label>

                    </div>
                    <div class=" text-left text-black-50 text-light mt-1 mb-3 text-center">
                        <span>Registered Yet? <a href="StudentRegt.aspx" class="text-center"> Registered Now</a> </span>
                    </div>
                   <div class="text-center">
                       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forget Password</asp:LinkButton>
                   </div>
                    <br />
               </div>
            
            </div>
        </div>
        <br />
        <br />
</asp:Content>
