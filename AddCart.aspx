<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.master" AutoEventWireup="true" CodeFile="AddCart.aspx.cs" Inherits="AddCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18
        {
            width: 1334px;
        }
        .auto-style19
        {
        }
        .auto-style20
        {
            width: 624px;
        }
        .auto-style21 {
            width: 538px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="text-align: center; font-family: 'Arial Black'; font-size: x-large; font-weight: bold; color: #00FF00;" class="auto-style18">CART DETAILS</td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1339px" ShowFooter="True" OnRowDeleting="GridView1_RowDeleting" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="CART ID">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%#Bind("CART_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FOOD NAME">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("FOOD_NAME") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Label ID="Label3" runat="server" Text="TOTAL"></asp:Label>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FOOD PRICE">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("FOOD_PRICE") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text="REMOVE" CommandName="DELETE" />
                            </ItemTemplate>
                            
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="Button2" runat="server" BackColor="#66FF66" ForeColor="White" Text="PROCEED" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label8" runat="server" ForeColor="Lime"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style2" id="t2" runat="server">
        <tr>
            <td class="auto-style20" style="text-align: right">ENTER DELIVERY ADDRESS</td>
            <td class="auto-style21">
                <asp:TextBox ID="TextBox1" runat="server" Height="87px" TextMode="MultiLine" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20" style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                SELECT MODE OF PAYMENT</td>
            <td class="auto-style21" style="text-align: center">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="216px">
                    <asp:ListItem>ONLINE</asp:ListItem>
                    <asp:ListItem>COD</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style19" colspan="2" style="text-align: center">
                <asp:Button ID="Button3" runat="server" BackColor="#66FF66" ForeColor="White" Text="PLACE ORDER" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>

    <table class="auto-style2" id="t3" runat="server">
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

