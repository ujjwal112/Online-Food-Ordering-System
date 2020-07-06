<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewPayment.aspx.cs" Inherits="ViewPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;">PAYMENT DETAILS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1324px" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="PAYMENT ID">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("PAYMENT_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ORDER ID">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("ORDER_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PAYMENT MODE">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("PAYMENT_MODE") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PAYMENT STATUS">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("STATUS") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("STATUS") %>'></asp:TextBox>
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

