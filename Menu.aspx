<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;">FOOD MENU</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="1331px" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" >
                    <Columns>
                        <asp:TemplateField HeaderText="FOOD NAME">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("FOOD_NAME") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FOOD PRICE">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("FOOD_PRICE") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="ADD TO CART" CommandName="INSERT"/>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:ButtonField CommandName="INSERT" Text="ADD TO CART" ButtonType="Button" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

