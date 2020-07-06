<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewOrderDetails.aspx.cs" Inherits="ViewOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;">ORDER DEATILS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="1327px">
                    <Columns>
                        <asp:TemplateField HeaderText="ORDER ID">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("ORDER_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CUSTOMER NAME">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("NAME") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FOOD NAME">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("FOOD_NAME") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PRICE">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("PRICE") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ADDRESS">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%#Bind("ADDRESS") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EMAIL ID">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%#Bind("EMAIL_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ORDER STATUS">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%#Bind("STATUS") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="EDIT" CommandName="EDIT" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="Button2" runat="server" Text="UPDATE STATUS" CommandName="UPDATE" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

