<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewCustomer.aspx.cs" Inherits="ViewCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;">CUSTOMER DETAILS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1326px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="CUSTOMER ID">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("CID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NAME"> 
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("NAME") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("NAME") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="USERNAME">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("USERNAME") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("USERNAME") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EMAIL ID">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("EMAIL_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="MOBILE NO.">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%#Bind("MOBILE_NO") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%#Bind("MOBILE_NO") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DOB">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%#Bind("DOB") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%#Bind("DOB") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="GENDER">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%#Bind("GENDER") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%#Bind("GENDER") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="EDIT" CommandName="EDIT" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="Button2" runat="server" Text="UPDATE" CommandName="UPDATE" />
                                <asp:Button ID="Button3" runat="server" Text="DELETE" CommandName="DELETE" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

