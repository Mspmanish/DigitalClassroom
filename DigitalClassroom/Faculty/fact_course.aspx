<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.Master" AutoEventWireup="true" CodeBehind="fact_course.aspx.cs" Inherits="DigitalClassroom.Faculty.fact_course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style4 {
            text-align: center;
        }

        .auto-style5 {
            width: 62%;
            background-color: #CCCCFF;
            border-radius: 20px;
        }

        .auto-style6 {
            height: 90px;
        }

        .auto-style9 {
            height: 79px;
            text-align: center;
        }

        .auto-style10 {
            height: 67px;
            text-align: center;
        }

        .auto-style11 {
            width: 423px;
            height: 169px;
             margin-left: 18px;
         }
         .auto-style12 {
             text-align: center;
         }
         .auto-style13 {
             height: 561px;
         }
         .Button{
             border-radius:10px;
             box-shadow:0 9px #999;
         }
         .Button:hover{
             background-color:grey;
            
         }
         .Button:active{
             border:none;
              background-color:#3e8e41;
              box-shadow:0 5px #666;
              transform:translateY(4px);
         }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <br />
    <div>
        <fieldset style="border: 2px solid blue;border-radius:10px; box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);" class="auto-style11">
            <legend class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Course" Font-Size="27px" ForeColor="Red"></asp:Label></legend>
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Add Course" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" Font-Size="23px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Edit or Modify Course" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged" Font-Size="23px" />

        </fieldset>
        &nbsp;&nbsp;&nbsp;
                <br />
        &nbsp;<br />
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <%--<div class="auto-style4">--%>
       
            <asp:View ID="View1" runat="server">
                <center>
                <table align="center" class="auto-style5" style="border-spacing: 20px; border: 2px solid #3399FF; box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -webkit-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7); -moz-box-shadow: 10px 10px 26px -10px rgba(0,0,0,0.7);">
                    <tr>
                        <td class="auto-style1" style="text-align:center;" colspan="2">
                            <asp:Label ID="Label4" runat="server" Font-Names="Algerian" Text="Add New Course" Font-Size="30px" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label5" runat="server" Font-Names="Algerian" Text="Course Id"></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <%--<asp:Label ID="Label9" runat="server" Font-Names="Algerian"></asp:Label>--%>
                            <asp:TextBox ID="TextBox1" runat="server" Height="48px" Width="306px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label7" runat="server" Font-Names="Algerian" Text="Description"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox4" runat="server" Height="48px" Width="306px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label8" runat="server" Font-Names="Algerian" Text="Duration"></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TextBox5" runat="server" Height="50px" TextMode="Number" Width="306px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style6">
                            <asp:Button ID="Button3" runat="server" ForeColor="White"   CssClass="Button" Height="43px" Text="Add" Width="117px" OnClick="Button1_Click"  BackColor="#FF9900" Font-Size="26px" BorderColor="#FF9900" BorderWidth="1px" />
                            &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" ForeColor="Red"  CssClass="Button" Height="41px" Text="Cancel" Width="119px" Font-Size="26px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <center>
                                <div>
                                <asp:GridView ID="GridView1" runat="server" CellPadding="7" ForeColor="#333333" GridLines="None" Width="450px" Height="130px" CellSpacing="1">
                                    <alternatingrowstyle backcolor="White" />
                                    <editrowstyle backcolor="#2461BF" />
                                    <footerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
                                    <headerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
                                    <pagerstyle backcolor="#2461BF" forecolor="White" horizontalalign="Center" />
                                    <rowstyle backcolor="#EFF3FB" />
                                    <selectedrowstyle backcolor="#D1DDF1" font-bold="True" forecolor="#333333" />
                                    <sortedascendingcellstyle backcolor="#F5F7FB" />
                                    <sortedascendingheaderstyle backcolor="#6D95E1" />
                                    <sorteddescendingcellstyle backcolor="#E9EBEF" />
                                    <sorteddescendingheaderstyle backcolor="#4870BE" />
                                </asp:GridView>
                                <br />
                                    </div>
                            </center>
                        </td>
                    </tr>
                </table>
                </center>
               
            </asp:View>
          

            <asp:View ID="View2" runat="server">
                
                <center>
                    <div class="auto-style13">
                        <br />
                    <asp:GridView ID="GridView2" runat="server" CellPadding="8" ForeColor="#333333" GridLines="None" Width="603px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="courseid" DataSourceID="SqlDataSource1" PageSize="5" CellSpacing="1">
                        <alternatingrowstyle backcolor="White" />
                        <columns>
                            <asp:BoundField DataField="courseid" HeaderText="Course Id" SortExpression="courseid" ReadOnly="True" >
                            <HeaderStyle Height="90px" Width="90px" />
                            <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="description" HeaderText="Subject" SortExpression="description" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:CommandField HeaderText="Edit" ShowEditButton="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </columns>
                        <editrowstyle backcolor="#2461BF" />
                        <footerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
                        <headerstyle backcolor="#507CD1" font-bold="True" forecolor="White" />
                        <pagerstyle backcolor="#2461BF" forecolor="White" horizontalalign="Center" />
                        <rowstyle backcolor="#EFF3FB" />
                        <selectedrowstyle backcolor="#D1DDF1" font-bold="True" forecolor="#333333" />
                        <sortedascendingcellstyle backcolor="#F5F7FB" />
                        <sortedascendingheaderstyle backcolor="#6D95E1" />
                        <sorteddescendingcellstyle backcolor="#E9EBEF" />
                        <sorteddescendingheaderstyle backcolor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>"
                        SelectCommand="SELECT * FROM [course]"
                        UpdateCommand="update course set description=@description,duration=@duration where courseid=@courseid"
                        DeleteCommand="delete from course where courseid=@courseid"
                        
                        ></asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        <br />
                        </div>
                </center>
                    
            </asp:View>

           
    </asp:MultiView>
    <br />
   <%-- </div>--%>
    <br />
    <br />
    <br />
</asp:Content>
