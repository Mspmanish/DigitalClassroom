<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Verifystufact.aspx.cs" Inherits="DigitalClassroom.Admin.Verifystufact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Example</title>
    <!-- SweetAlert CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.css">

    <%-- <script type="text/javascript">
        var object = { status: false, ele: null };
        function ConfirmDelete(ev) {

            if (object.status) { return true;};

            swal({
                title: "Are you sure?",
                text: "Your will not be able to recover this Student!",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                closeOnConfirm: true
            },
                function () {
                    object.status = true;
                    object.ele = ev;

                    object.ele.click();
                });
            return false;
        };

    </script>--%>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <center>
        <br />
        <asp:Label runat="server" Text="Verify Student And Faculty" Font-Names="Algerian" Font-Size="35px" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="38px" Width="350px">
            <asp:ListItem Text="Select Option" Value="" Disabled="true" Selected="true"></asp:ListItem>
            <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
            <asp:ListItem Text="Faculty" Value="Faculty"></asp:ListItem>
        </asp:DropDownList>

        <br />

        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass=" table-secondary text-center table-hover table-borderless" CellPadding="8" ForeColor="#333333" GridLines="None" AllowPaging="True" CellSpacing="1" Width="1136px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Username">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("userid") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddusername" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        User ID
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("userid") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Height="90px" Width="90px" />
                    <ItemStyle HorizontalAlign="Center" Height="90px" Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditname" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label24" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Height="90px" Width="90px" />
                    <ItemStyle Height="90px" HorizontalAlign="Center" Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Course">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditcourse" runat="server" Text='<%# Bind("course") %>' Width="143px"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddcourse" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Course
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("course") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Height="90px" Width="90px" />
                    <ItemStyle HorizontalAlign="Center" Height="90px" Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditaddress" runat="server" Text='<%# Bind("address") %>' Width="143px"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddaddress" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Address
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" Height="90px" Width="90px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditemail" runat="server" Text='<%# Bind("emailid") %>' Width="143px"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddemail" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Email Id
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("emailid") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact No">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditcontact" runat="server" Text='<%# Bind("contact") %>' Width="143px"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddcontact" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Contact No
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Profile Pic">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="143px" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:FileUpload ID="FileUpload2" runat="server" Width="143px" />
                    </FooterTemplate>
                    <HeaderTemplate>
                        Profile Pic
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="70px" ImageUrl='<%# Eval("profilepic") %>' Width="70px" />
                    </ItemTemplate>
                    <HeaderStyle Height="100px" Width="100px" />
                    <ItemStyle Height="70px" HorizontalAlign="Center" Width="70px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <EditItemTemplate>
                        <asp:Button ID="Button5" runat="server" Style="border-radius: 10px;" CommandName="UPDATE" Text="UPDATE" Width="90px" BackColor="Orange" BorderColor="Orange" BorderWidth="1px" ForeColor="White" Height="38px" />
                        <br />
                        <br />
                        <asp:Button ID="Button3" runat="server" Style="border-radius: 10px;" CommandName="CANCEL" Text="CANCEL" Width="90px" BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderWidth="1px" Height="38px" />
                        <br />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="Button6" runat="server" CommandName="ADD" Text="ADD" Width="80px" />
                    </FooterTemplate>
                    <HeaderTemplate>
                        Action
                    </HeaderTemplate>
                    <ItemTemplate>
                        &nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Style="border-radius: 10px;" CommandName="EDIT" Text="EDIT" Width="90px" BackColor="#3366FF" BorderColor="#3366FF" BorderWidth="1px" ForeColor="White" Height="38px" />
                        &nbsp;<br />
                        <br />
                        <asp:Button ID="Button4" runat="server" CommandName="DELETE" Text="DELETE" OnClientClick="return confirm('Are you sure you want to delete this record?');" Width="90px" BackColor="#CC3300" BorderColor="#CC3300" BorderWidth="1px" ForeColor="White" Height="38px" />

                        <br />
                        <br />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddstatus" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Status
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Check">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
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


        <br />
        <asp:Button ID="Button12" runat="server" Style="border-radius: 10px;" BackColor="Lime" BorderColor="Lime" BorderWidth="1px" ForeColor="White" Height="38px" OnClick="Button12_Click" Text="Allow" Visible="False" Width="90px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button13" runat="server" Style="border-radius: 10px;" BackColor="Red" BorderColor="Red" BorderWidth="1px" ForeColor="White" Height="38px" OnClick="Button13_Click" Text="Block" Visible="False" Width="90px" />



        <br />

        <asp:GridView ID="GridView2" runat="server" CssClass=" table-secondary text-center table-hover table-borderless" AutoGenerateColumns="False" AllowPaging="True" Width="1136px" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" CellPadding="8" ForeColor="#333333" GridLines="None" CellSpacing="1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Userid">
                    <EditItemTemplate>
                        <asp:Label ID="Label16" runat="server" Text='<%# Bind("facultyid") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddusername0" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Faculty ID
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label17" runat="server" Text='<%# Bind("facultyid") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditname1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        Name
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label18" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Course">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditcourse1" runat="server" Text='<%# Bind("course") %>' Width="143px"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddcourse0" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Course
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label19" runat="server" Text='<%# Bind("course") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditaddress1" runat="server" Text='<%# Bind("address") %>' Width="143px"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddaddress0" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Address
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label20" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditemail1" runat="server" Text='<%# Bind("emailid") %>' Width="143px"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddemail0" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Email Id
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label21" runat="server" Text='<%# Bind("emailid") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact No">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txteditcontact1" runat="server" Text='<%# Bind("contact") %>' Width="143px"></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddcontact0" runat="server" Width="143px"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Contact No
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label22" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Profile Pic">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload3" runat="server" Width="143px" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:FileUpload ID="FileUpload4" runat="server" Width="143px" />
                    </FooterTemplate>
                    <HeaderTemplate>
                        Profile Pic
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image3" runat="server" Height="70px" ImageUrl='<%# Eval("profilepic") %>' Width="70px" />
                    </ItemTemplate>
                    <HeaderStyle Height="70px" Width="70px" />
                    <ItemStyle Height="70px" HorizontalAlign="Center" Width="70px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <EditItemTemplate>
                        <asp:Button ID="Button16" runat="server" Style="border-radius: 10px;" CommandName="UPDATE" Text="UPDATE" Width="90px" BackColor="Orange" BorderColor="Orange" BorderWidth="1px" ForeColor="White" Height="38px" />
                        <br />
                        <br />
                        <asp:Button ID="Button17" runat="server" Style="border-radius: 10px;" CommandName="CANCEL" Text="CANCEL" Width="90px" BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderWidth="1px" Height="38px" />
                        <br />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="Button18" runat="server" CommandName="ADD" Text="ADD" Width="80px" />
                    </FooterTemplate>
                    <HeaderTemplate>
                        Action
                    </HeaderTemplate>
                    <ItemTemplate>
                        &nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button19" Style="border-radius: 10px;" runat="server" CommandName="EDIT" Text="EDIT" Width="90px" BackColor="#3366FF" BorderColor="#3366FF" BorderWidth="1px" ForeColor="White" Height="38px" />
                        &nbsp;<br />
                        <br />
                        <asp:Button ID="Button20" runat="server" Style="border-radius: 10px;" CommandName="DELETE" Text="DELETE" Width="90px" BackColor="#CC3300" BorderColor="#CC3300" BorderWidth="1px" ForeColor="White" Height="38px" />
                        <br />
                        <br />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <FooterTemplate>
                        <asp:TextBox ID="Txtaddstatus0" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderTemplate>
                        Status
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label23" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Check">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
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


        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button14" runat="server" Style="border-radius: 10px;" BackColor="Lime" BorderColor="Lime" BorderWidth="1px" ForeColor="White" Height="38px" OnClick="Button14_Click" Text="Allow" Visible="False" Width="90px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button15" runat="server" Style="border-radius: 10px;" BackColor="Red" BorderColor="Red" BorderWidth="1px" ForeColor="White" Height="38px" OnClick="Button15_Click" Text="Block" Visible="False" Width="90px" />
        <br />
        <br />



        <br />
    </center>
</asp:Content>
