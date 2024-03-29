<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="stud_lecture.aspx.cs" Inherits="DigitalClassroom.Student.stud_lecture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center><h1>Student Lecture Panel</h1></center>
    <center>
        <div style="margin-top:16%;margin-bottom:16%">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="80%" CellPadding="10" CellSpacing="1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <columns>
                    <asp:TemplateField HeaderText="Lecture ID">
                        <edititemtemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("lectureid") %>'></asp:TextBox>
                        </edititemtemplate>
                        <itemtemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("lectureid") %>'></asp:Label>
                        </itemtemplate>
                        <HeaderStyle Height="38px" />
                        <itemstyle height="90px" horizontalalign="Center" width="90px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="faculty_id" HeaderText="Faculty ID">
                        <itemstyle height="90px" horizontalalign="Center" width="90px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="subject" HeaderText="Subject">
                        <itemstyle height="90px" horizontalalign="Center" width="90px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="topic" HeaderText="Topic">
                        <itemstyle height="90px" horizontalalign="Center" width="90px" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="lecture" DataTextField="lecture" HeaderText="Lecture">
                        <itemstyle height="90px" horizontalalign="Center" width="90px" />
                    </asp:HyperLinkField>
                    <asp:BoundField DataField="publish_date" HeaderText="Publish Date">

                        <itemstyle height="90px" horizontalalign="Center" width="90px" />
                    </asp:BoundField>

                </columns>
                <footerstyle backcolor="White" forecolor="#000066" />
                <headerstyle backcolor="#006699" font-bold="True" forecolor="White" />
                <pagerstyle backcolor="White" forecolor="#000066" horizontalalign="Left" />
                <rowstyle forecolor="#000066" />
                <selectedrowstyle backcolor="#669999" font-bold="True" forecolor="White" />
                <sortedascendingcellstyle backcolor="#F1F1F1" />
                <sortedascendingheaderstyle backcolor="#007DBB" />
                <sorteddescendingcellstyle backcolor="#CAC9C9" />
                <sorteddescendingheaderstyle backcolor="#00547E" />
            </asp:GridView>

        </div>
    </center>
</asp:Content>
