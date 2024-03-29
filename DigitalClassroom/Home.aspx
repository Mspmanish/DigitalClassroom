<%@ Page Title="" Language="C#" MasterPageFile="~/D-Classroom.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DigitalClassroom.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
        }

        .auto-style5 {
            margin-left: 209px;
            margin-bottom: 0px;
        }

        .para1 {
            font-weight: 900;
            word-spacing: 50px;
            letter-spacing: 60px;
            font-size: 35px;
            line-height: 30px;
        }

        .para2 {
            font-size: 25px;
            font-weight: 500;
            word-spacing: 5px;
            letter-spacing: 1px;
            margin: 20px;
            line-height: 40px;
        }

        .auto-style6 {
            font-weight: 600;
            text-align: center;
            font-size: 45px;
            word-spacing: 5px;
            line-height: 60px;
        }

        p {
            margin: 20px;
            font-size: 20px;
            word-spacing: 4px;
            line-height: 35px;
            text-align: justify;
        }

        strong {
            font-size: 30px;
            font-weight: 600;
        }

        image {
            box-shadow: 0 0 20px 2px rgba(0,0,0,.1);
            transition: 1s;
        }

        #image:hover {
            transform: scale(1,1);
            transition-duration: 200ms;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">

        <div class="row">
            <div class=" form-group mb-3 mb-2">

                <div style="border-spacing: 20px" margin="15px" class="auto-style4">
                    <br />
                    <br />
                    <br />
                    <div class="text-center">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="60px" Text="Welcome To Our e-ClassRoom"></asp:Label>
                        <br />
                        <br />
                        <div class="text-left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" CssClass="auto-style5" ImageUrl="~/images/Integrating-technology-in-education-scaled-1.jpg" Width="432px" Height="217px" />
                        </div>
                        <br />
                        <br />
                        <p>
                            Welcome to our eclassroom! We are passionate about revolutionizing education and providing students with a dynamic and engaging learning experience. Our eclassroom is a virtual environment that brings together students and teachers from all over the world, breaking down geographical barriers and fostering a global community of learners.

                        </p>
                        <p>
                            At our eclassroom, we believe in the power of technology to transform education. We have created a platform that combines cutting-edge technology with innovative teaching methods to deliver high-quality education in a flexible and accessible manner. Our eclassroom is equipped with state-of-the-art tools and resources that cater to diverse learning styles and needs.

            In our eclassroom, students have the freedom to learn at their own pace and in their preferred environment. Whether it's from the comfort of their homes or while on the go, our students can access our virtual learning environment anytime, anywhere. We offer a wide range of multimedia resources, interactive lessons, and collaborative activities that make learning engaging and interactive.
                        </p>
                        <p>
                            &nbsp;At Our Eclassroom, we believe that education should be accessible, engaging, and tailored to individual needs. Our eclassroom platform combines the power of technology with innovative teaching methods to create a dynamic and interactive learning environment.
                        </p>
                        <br />
                        <div>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="40px" Text="Why Choose Your E-ClassRoom"></asp:Label>
                            <p>
                                <strong>1. Flexible Learning :</strong> Our eclassroom offers the flexibility to learn anytime, anywhere. Whether you&#39;re a busy professional, a stay-at-home parent, or a student seeking personalized education, our platform allows you to access high-quality courses at your own pace.
                            </p>
                            <div class="text-center">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/GK_Blog_Image8.jpg" Width="700px" Height="400px" />
                            </div>
                            <p>
                                <strong>2. Personalized Approach:</strong> We understand that every student is unique, with different learning styles and goals. Our eclassroom offers personalized learning paths, adaptive assessments, and tailored feedback to ensure that each student receives the support they need to succeed. 
                            </p>
                            <div class="text-center">
                                <asp:Image ID="Image3" runat="server" Height="400px" ImageUrl="~/images/Mentor-2048x1858.png" Width="450px" />
                            </div>
                            <p>
                                <strong>3. Collaborative Learning:</strong> Learning is not just about individual progress; it&#39;s also about collaboration and teamwork. Our eclassroom fosters a sense of community, allowing students to connect, interact, and collaborate with peers from around the world. Engage in discussions, work on group projects, and learn from each other&#39;s perspectives. 
                            </p>
                            <div class="text-center">
                                <br />
                                <asp:Image ID="Image4" runat="server" Height="400px" ImageUrl="~/images/LB0104-Benefits-of-Technology-in-the-Classroom.jpg" Width="700px" />
                                <br />
                                <br />
                            </div>
                            <div>
                                <p class="para2">
                                    Join Our E-classroom today and embark on a transformative educational experience. Discover the power of technology-enhanced learning and unlock your full potential.
                                </p>
                                <p class="auto-style6">
                                    Get started now and take the first step towards a brighter future!
                                </p>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
