<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewRestaurant.aspx.cs" Inherits="ViewRestaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 1355px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style2">
        <tr>
            <td style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;" class="auto-style15">RESTAURANT DETAILS</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1328px" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="RESTAURANT ID">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("RID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="RESTAURANT NAME">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("RESTAURANT_NAME") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("RESTAURANT_NAME") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OWNER NAME">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("OWNER_NAME") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("OWNER_NAME") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="USERNAME">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("USERNAME") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("USERNAME") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EMAIL ID">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%#Bind("EMAIL_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="MOBILE NO.">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%#Bind("MOBILE_NO") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%#Bind("MOBILE_NO") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DOB">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%#Bind("DOB") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%#Bind("DOB") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DOCUMENT TYPE">
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%#Bind("DOCUMENT_TYPE") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%#Bind("DOCUMENT_TYPE") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DOCUMENT ID">
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%#Bind("DOCUMENT_ID") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%#Bind("DOCUMENT_ID") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="GENDER">
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%#Bind("GENDER") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%#Bind("GENDER") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="EDIT" CommandName="EDIT"/>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="Button2" runat="server" Text="UPDATE" CommandName="UPDATE"/>
                                <asp:Button ID="Button3" runat="server" Text="DELETE" CommandName="DELETE"/>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

