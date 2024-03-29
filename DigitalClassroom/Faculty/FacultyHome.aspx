<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="FacultyHome.aspx.cs" Inherits="DigitalClassroom.Faculty.FacultyHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }

        p {
            margin: 40px;
            font-size: 20px;
            word-spacing: 4px;
            line-height: 30px;
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
            margin-left: 45px;
            word-spacing: 2px;
            line-height: 45px;
        }

        .auto-style3 {
            width: 50%;
            border-radius: 20px;
        }

        .auto-style4 {
            text-align: left;
            height: 35px;
            width: 647px;
        }

        .auto-style5 {
            height: 35px;
        }

        .auto-style6 {
            width: 647px;
        }

        .auto-style7 {
            text-align: center;
        }

        .auto-style8 {
            width: 647px;
            height: 35px;
        }

        .auto-style9 {
            width: 647px;
            height: 31px;
        }

        .auto-style10 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <center>
        <div>

            <table align="center" class="auto-style3" style="border: 2px solid #99CCFF; border-spacing: 20px; box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); border-spacing: 20px; visibility: hidden;" hidden="hidden">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="FacultyName"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label14" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label15" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label6" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label16" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="DOB"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label17" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label8" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Course"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label18" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label9" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label19" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label10" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Email ID"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label20" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label11" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Contact"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label21" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label22" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="SecurityQuestion"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label24" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label23" runat="server" Font-Size="27px" ForeColor="#CC3300" Text="Security Answers"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label25" runat="server" Font-Size="22px" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Edit Profile" BackColor="#3399FF" ForeColor="White" Height="40px" Width="152px" />
                        <br />
                    </td>
                </tr>
            </table>

        </div>
    </center>
    <br />
    <br />
    <div>
        <div class="auto-style7">

            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="60px" Text="Welcome To Faculty Home Page "></asp:Label>
            <br />
            <br />

        </div>
        <div class="auto-style7">
            <br />
            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Faculty/images/faculty.gif" Width="55%" />

            <br />

        </div>

        <p class="para1">
            At Our E-classroom, we value the expertise and dedication of our faculty members. This is your dedicated space within our eclassroom platform, designed to empower you in delivering an exceptional learning experience to your students. Here, you will find all the tools, resources, and support you need to excel in your teaching role.
        </p>
        <div class="auto-style7">
            <br />
            <asp:Image ID="Image2" runat="server" Height="350px" ImageUrl="~/Faculty/images/Digital-Learning.jpg" Width="45%" />

            <br />

            <br />

        </div>
        <div class="auto-style2">
            <br />
            &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="45px" Text="Key Features of the Faculty Home Page:"></asp:Label>

        </div>
        <div>
            <p>
                <strong>1. Course Management:</strong> Easily manage your courses through our intuitive course management system. Create, organize, and update course materials, assignments, and assessments. Our user-friendly interface allows you to efficiently structure and deliver your curriculum.
            </p>
            <p>
                <strong>2. Communication and Collaboration:</strong> Foster effective communication and collaboration with your students through our integrated messaging system. Send announcements, reminders, and provide feedback on assignments. Engage in discussions and provide guidance to your students in real-time. 
            </p>
            <p>
                <strong>3. Content Creation:</strong> Create engaging and interactive learning materials using our content creation tools. Incorporate multimedia elements, interactive quizzes, and multimedia presentations to enhance student understanding and engagement. Our platform supports a variety of content formats to suit your teaching style.
 
            </p>
            <div class="auto-style7">
                <asp:Image ID="Image3" runat="server" Height="350px" ImageUrl="~/Faculty/images/Online-Learning-Vector-Illustration.jpg" Width="600px" />
            </div>
            <p>
                <strong>4. Analytics and Insights:</strong> Gain valuable insights into student performance and engagement through our analytics dashboard. Track student progress, identify areas for improvement, and tailor your teaching strategies accordingly. Our platform provides data-driven insights to support your instructional decisions.

            </p>
            <p>
                <strong>5. Support and Resources:</strong> We are committed to supporting your teaching journey. Access a range of support resources, including tutorials, FAQs, and contact information for our dedicated support team. If you have any questions or need assistance, we are here to help.

            </p>

        </div>
        <p class="bottom">
            Join Our E-classroom today and experience the convenience, efficiency, and collaborative environment of our eclassroom platform. Empower your teaching and make a positive impact on your students' learning journey.
        </p>
        <br />
        <br />
        <br />

    </div>
</asp:Content>
