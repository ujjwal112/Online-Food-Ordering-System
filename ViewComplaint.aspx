<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewComplaint.aspx.cs" Inherits="ViewComplaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;">USER&#39;S COMPLAINT</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="1331px" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="COMPLAINT ID">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("COMPID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NAME">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("NAME") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="COMPLAINT MESSAGE">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("MESSAGE") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="RESPONSE">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("RESPONSE") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("RESPONSE") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="RESPONSE" CommandName="EDIT"/>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="Button2" runat="server" Text="UPDATE" CommandName="UPDATE"/>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

