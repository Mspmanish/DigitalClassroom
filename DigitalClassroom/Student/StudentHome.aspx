<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="DigitalClassroom.Student.StudentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }

        p {
            margin: 40px;
            font-size: 20px;
            word-spacing: 4px;
            line-height: 35px;
            text-align: justify;
        }

        strong {
            font-size: 30px;
            font-weight: 600;
        }

        .para1 {
            font-size: 30px;
            font-weight: 500;
            word-spacing: 2px;
            margin: 20px;
            font-family: sans-serif;
            line-height: 40px;
        }

        .bottom {
            font-size: 30px;
            font-weight: 600;
            margin-left: 40px;
            word-spacing: 2px;
            line-height: 40px;
        }

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

        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div>
        <div class="auto-style7">

            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="60px" Text="Welcome To Student Home Page "></asp:Label>
            <br />
            <br />

        </div>
        <div class="auto-style7">
            <br />
            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/images/GK_Blog_Image8.jpg" Width="38%" />

            <br />

        </div>

        <p class="para1">&nbsp;</p>
        <p class="para1">
            At Our E-classroom, we believe that every student has the potential to achieve greatness. This is your dedicated space within our eclassroom platform, designed to empower you on your learning journey. Here, you will find all the tools, resources, and support you need to succeed.
        </p>
        <div class="auto-style7">
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/Student/Digital-Learning.jpg" />

            <br />

            <br />

        </div>
        <div class="auto-style2">
            <br />
            &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="45px" Text="Key Features of the Student Home Page:"></asp:Label>

        </div>
        <div>
            <p>
                <strong>1. Course Dashboard:</strong> Access all your enrolled courses from one centralized dashboard. Stay organized and keep track of your progress, assignments, and upcoming deadlines. Our user-friendly interface makes it easy to navigate and find the information you need.
            </p>
            <p>
                <strong>2. Learning Materials:</strong> Dive into a wealth of learning materials that are specifically curated for each course. From textbooks and lecture notes to interactive presentations and multimedia resources, everything you need to enhance your understanding and knowledge is just a click away.
            </p>
            <p>
                <strong>3. Assignments and Assessments:</strong> Stay on top of your assignments and assessments through our integrated system. Submit your work online, receive timely feedback from your instructors, and track your grades. Our platform ensures a seamless and efficient workflow for all your coursework.
            </p>
            <div class="auto-style7">
                <asp:Image ID="Image3" runat="server" Height="400px" ImageUrl="~/Student/student.png" />
            </div>
            <p>
                <strong>4. Personalized Progress Tracking:</strong> Monitor your progress and identify areas for improvement with our personalized progress tracking feature. Get insights into your strengths and weaknesses, and receive recommendations for additional resources or activities to enhance your learning.
            </p>
            <p>
                <strong>5. Support and Resources:</strong> We are here to support you every step of the way. Access a range of support resources, including FAQs, tutorials, and contact information for our dedicated support team. If you have any questions or need assistance, we are just a message away.
            </p>

        </div>
        <p class="bottom">
            Join Our Eclassroom today and unlock your full potential as a student. Experience the convenience, flexibility, and interactive learning environment of our eclassroom platform. Take control of your education and embark on a transformative learning journey.
        </p>
        <br />
        <br />
        <br />
    </div>
   
     <center>
        <br />
        <br />
        <table align="center" class="auto-style3" style="border: 2px solid #3399FF; background-color: #CCCCFF; border-radius:20px; border-spacing: 20px;box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
                -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);
                 -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);" hidden="hidden">
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:Image ID="Image4" runat="server" Height="150px" Width="200px" />
                </td>
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
                    <asp:Label ID="Label15" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="DOB"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label17" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Course"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label18" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label19" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="E-mail"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label20" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Contact No."></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label21" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label12" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Security Question"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label22" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label13" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Security Anwers"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label23" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:Button ID="button" runat="server" Text="Edit Profile" BackColor="#3399FF" ForeColor="White" Height="40px" Width="161px" OnClick="button_Click"/>
                    <%--<asp:Button ID="Button1" runat="server" Text="Edit Profile" BackColor="#3399FF" ForeColor="White" Height="40px" Width="161px" />--%>

                    <br />

                </td>
            </tr>
        </table>
        <br />
         <br />
    </center>

</asp:Content>
