<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="DigitalClassroom.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
         p{
            margin:40px;
            font-size:20px;
            word-spacing:4px;
            line-height:35px;
            text-align:justify;
        }
        strong{
            font-size:30px;
            font-weight:600;
        }
        .para1{
            font-size:30px;
            font-weight:500;
            word-spacing:2px;
            margin:20px;     
            font-family:sans-serif;
            line-height:40px;
        }
        .bottom{
             font-size:30px;
             font-weight:600;
             margin-left:40px;
             word-spacing:2px;
             line-height:40px;
        }
    .auto-style3 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <div>
        <div class="auto-style1">

            <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="60px" Text="Welcome To Admin Home Page "></asp:Label>
            <br />
            <br />

        </div>
        <div class="auto-style3">
            <br />
            <asp:Image ID="Image1" runat="server" Height="280px" ImageUrl="~/Admin/images/Admin-Profile-PNG-Clipart.png" Width="380px" />

            <br />

        </div>

        <p class="para1">As an administrator of Our E-classroom, this is your dedicated space within our eclassroom platform, designed to empower you in managing and overseeing the operations of your eclassroom. Here, you will find all the tools, resources, and insights you need to ensure a smooth and successful elearning environment.
        </p>
         <div class="auto-style3">
             <br />
            <asp:Image ID="Image2" runat="server" Height="350px" ImageUrl="~/Admin/images/Virtual-Classsrooms-in-Distance-Learning.png" Width="600px" />

            <br />

            <br />

        </div>
        <div class="auto-style2">
            <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="45px" Text="Key Features of the Admin Home Page:"></asp:Label>

        </div>
        <div>
            <p><strong>1. User Management:
            </strong> Efficiently manage user accounts within your eclassroom platform. Create, edit, and delete user accounts for faculty members, students, and other administrative staff. Ensure that the right individuals have the appropriate access and permissions.
            </p>
            <p><strong>2. Course Management:</strong> Oversee the course creation and management process. Monitor course enrollments, review course materials, and ensure that courses are properly structured and aligned with the curriculum. Support faculty members in delivering high-quality courses.
            </p>
            <p><strong>3. Analytics and Insights:</strong> Gain valuable insights into the performance and engagement of faculty members and students through our analytics dashboard. Track key metrics, identify trends, and make data-driven decisions to improve the overall elearning experience. 
            </p>
            <div class="auto-style3">
                <asp:Image ID="Image3" runat="server" Height="400px" ImageUrl="~/Admin/images/blog-UK-audience-IT-admin.png" Width="800px" />
            </div>
            <p><strong>4. Support and Resources:</strong> Access a range of support resources to assist faculty members, students, and other administrative staff. Provide guidance, answer questions, and troubleshoot any issues that may arise. Our dedicated support team is here to assist you every step of the way.
            </p>
            <p><strong>5. System Configuration:</strong> Customize and configure your eclassroom platform to meet the specific needs of your institution. Set up grading scales, define user roles and permissions, and manage system integrations. Ensure that your eclassroom aligns with your institution's requirements.
            </p>
            <p><strong>6. Communication and Notifications:</strong> Communicate important announcements, updates, and reminders to faculty members, students, and other stakeholders. Utilize our integrated messaging system to ensure effective communication and keep everyone informed.
            </p>
            
        </div>
       <p class="bottom">Join Our E-classroom today and experience the convenience, efficiency, and comprehensive management tools of our eclassroom platform. Empower your administrative tasks and create a seamless elearning environment for your institution.
       </p>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
