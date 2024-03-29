<%@ Page Title="" Language="C#" MasterPageFile="~/D-Classroom.Master" AutoEventWireup="true" CodeBehind="StudentRegt.aspx.cs" Inherits="DigitalClassroom.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function SuccessContact() {

            Swal.fire(
                'Good job!',
                'You clicked the button!',
                'success'
            )

            function ErrorContact() {

                Swal.fire(
                    'Failure',
                    'You clicked the button!',
                    'error'
                );

            }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />

    <div class="container mt-5" style="box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);">

        <div class="row mt-2">

            <div class="col-md-12">
                <h1 class="jumbotron bg-secondary  text-white text-center">Student Sign</h1>
            </div>

        </div>

        <div class=" row">

            <div class="col-md-4">

                <asp:TextBox ID="NameTextBox" runat="server" CssClass="form-control" placeholder="Enter Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="NameTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" placeholder="Enter FirstName"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="FirstName is Required" ControlToValidate="FirstNameTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SurnameTextBox" runat="server" CssClass="form-control" placeholder="Enter Surname"></asp:TextBox>
                <br />
                <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="form-control">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender is Required" ControlToValidate="GenderDropDownList" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="DOBTextBox" runat="server" CssClass="form-control" placeholder="Enter DOB" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="DOB is Required" ControlToValidate="DOBTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>


            </div>

            <div class=" col-md-4">

                <asp:TextBox ID="AddressTextBox" runat="server" CssClass="form-control" placeholder="Enter Address" Columns="20" Rows="3" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address is Required" ControlToValidate="AddressTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="ChoosecourseDropDownList" runat="server" CssClass="form-control">
                    <asp:ListItem>Select Course</asp:ListItem>
                    <asp:ListItem>B-tech</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>MCA</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Course is Required" ControlToValidate="ChoosecourseDropDownList" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" InitialValue="Select Course"></asp:RequiredFieldValidator>
                <br />
                <%--<asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="description" DataValueField="description"> <asp:ListItem Text="Select Subject" Value="" Selected="True"></asp:ListItem></asp:DropDownList>
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [description] FROM [course]"></asp:SqlDataSource>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Subject is Required" ControlToValidate="DropDownList1" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" InitialValue="Select Subject"></asp:RequiredFieldValidator>--%>
                <label>Subject</label><br />
                <asp:DropDownList ID="DropDownListsubject" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="description" DataValueField="description">
                    <asp:ListItem Text="Select Subject" Value=""></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Subject is Required" ControlToValidate="DropDownListsubject" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" InitialValue=""></asp:RequiredFieldValidator>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [description] FROM [course]"></asp:SqlDataSource>
                <br />
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Email is Required" ControlToValidate="EmailTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="ContactTextBox" runat="server" CssClass="form-control" placeholder="Enter Contact" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Contact is Required" ControlToValidate="ContactTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Width="230px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="FileUpload1" EnableClientScript="False" ErrorMessage="*Upload Profile Pic" Font-Size="20px" ForeColor="#CC3300"></asp:RequiredFieldValidator>

            </div>

            <div class=" col-md-4">

                <asp:DropDownList ID="QuestionDropDownList" runat="server" CssClass="form-control">
                    <asp:ListItem>Select SecurityQuestion</asp:ListItem>
                    <asp:ListItem>Personal Info</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="SecurityQuestion is Required" ControlToValidate="QuestionDropDownList" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" InitialValue="Select SecurityQuestion"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AnswersTextBox" runat="server" CssClass="form-control" placeholder="Enter Security Answer"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="SecurityAnswer is Required" ControlToValidate="AnswersTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="UserId" runat="server" CssClass="form-control" placeholder="Enter UserId"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Enter UserId" ControlToValidate="UserId" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="form-control" placeholder="Enter Passsword" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Password is Required" ControlToValidate="PasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" CssClass="form-control" placeholder="ReEnter Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="ConfirmPassword is Required" ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both Password must be identical" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>

            </div>
        </div>
        <br />
        <div class="row">

            <div class="col-md-5  mx-auto">
                <asp:Button ID="StudentSignUpButton" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" OnClick="StudentSignUpButton_Click" />

            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4 mx-auto text-center">
                <a href="StudentRegt.aspx" class=" btn  btn-success">SignUp AS Student</a>
                <a href="Faculty_signup.aspx" class=" btn btn-info">SignUp AS Tutor</a>
            </div>
        </div>
        <br />
        <br />

    </div>

    <br />

</asp:Content>
